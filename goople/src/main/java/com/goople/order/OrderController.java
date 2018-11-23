package com.goople.order;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goople.refund.RefundDAO;
import com.goople.refund.RefundDTO;
import com.goople.util.MyUtil;

@Controller
public class OrderController {

	@Autowired
	private OrderDAO odao;

	@Autowired
	private RefundDAO rdao;

	@Autowired
	MyUtil myUtil;

	// ����Ʈȭ��
	@RequestMapping(value = "/order/orderList.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String cp = request.getContextPath();
		HttpSession session = request.getSession();

		String pageNum = request.getParameter("pageNum");
		int currentPage = 1;

		if (pageNum != null)
			currentPage = Integer.parseInt(pageNum);

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		if (searchKey == null) {

			searchKey = "ordernum";
			searchValue = "";

		} else {

			if (request.getMethod().equalsIgnoreCase("GET"))
				searchValue = URLDecoder.decode(searchValue, "UTF-8");

		}

		// ��ü�����Ͱ���
		int dataCount = odao.getDataCount(searchKey, searchValue);

		// ��ü��������
		int numPerPage = 10;
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);

		if (currentPage > totalPage)
			currentPage = totalPage;

		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;

		List<OrderDTO> totallist = odao.getList(start, end, searchKey, searchValue);
		List<RefundDTO> refundlist = rdao.getList(start, end, searchKey, searchValue);

		// ����¡ ó��
		String param = "";
		if (!searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String listUrl = cp + "/order/orderList.action";
		if (!param.equals("")) {
			listUrl = listUrl + "?" + param;
		}

		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

		
		// ������ �� �������� �����͸� �ѱ��
		request.setAttribute("totallist", totallist);
		request.setAttribute("refundlist", refundlist);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);

		return "order/list";

	}

	@RequestMapping(value = "order/complete_ok.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String complete_ok(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String[] checkbox = request.getParameterValues("checkbox");

		if (checkbox != null) {
			String[] modelNames = devidingCheckBox(checkbox, "modelNames");
			String[] orderNums = devidingCheckBox(checkbox, "ordernum");

			for (int i = 0; i < modelNames.length; i++) {
				odao.updateData(Integer.parseInt(orderNums[i]), modelNames[i], "���ſϷ�");
			}
		}

		return "redirect:/order/orderList.action";

	}

	// ȯ�ҽ�û
	@RequestMapping(value = "order/refund_ok.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String refund_ok(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("sessionId");

		response.setContentType("text/html;charset=UTF-8");
		
		String[] checkbox = request.getParameterValues("checkbox");
		
		
		if (checkbox != null) {
			String[] modelNames = devidingCheckBox(checkbox, "modelNames");
			String[] orderNums = devidingCheckBox(checkbox, "ordernum");

			for (int i = 0; i < modelNames.length; i++) {
				rdao.insertDataByOrder(id, modelNames[i], Integer.parseInt(orderNums[i]));	
				odao.deleteData(modelNames[i], Integer.parseInt(orderNums[i]));
			}
		}
		return "redirect:/order/orderList.action";
	}

	// �޾ƿ� üũ�ڽ� ����Ʈ�� modelName�� ordernum �迭�� ���� ��ȯ�� ������ش�.
	public String[] devidingCheckBox(String[] checkbox, String name) {

		if (name.equals("modelNames")) {
			String[] modelNames = new String[checkbox.length];

			for (int i = 0; i < checkbox.length; i++) {
				modelNames[i] = checkbox[i].substring(0, checkbox[i].indexOf(","));
			}
			return modelNames;

		} else if (name.equals("ordernum")) {
			String[] ordernum = new String[checkbox.length];

			for (int i = 0; i < checkbox.length; i++) {
				ordernum[i] = checkbox[i].substring(checkbox[i].lastIndexOf(",") + 1);
			}
			return ordernum;

		}else {
			System.out.println("devidingCheckBox error");
			return checkbox;
		}
	}

}

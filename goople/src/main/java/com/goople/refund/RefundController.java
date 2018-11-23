package com.goople.refund;

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
import org.springframework.web.servlet.ModelAndView;

import com.goople.order.OrderDTO;
import com.goople.util.MyUtil;

@Controller
@RequestMapping(value = "/refund/*")
public class RefundController {

	@Autowired
	RefundDAO daoRefund;

	@Autowired
	MyUtil myUtil;

	// ȯ���� ��� ����Ʈȭ��
	@RequestMapping(value = "refund/list.action", method = { RequestMethod.GET, RequestMethod.POST })
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
		int dataCount = daoRefund.getDataCount(searchKey, searchValue);

		// ��ü��������
		int numPerPage = 10;
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);

		if (currentPage > totalPage)
			currentPage = totalPage;

		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;

		List<RefundDTO> lists = daoRefund.getList(start, end, searchKey, searchValue);

		// ����¡ ó��
		String param = "";
		if (!searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String listUrl = cp + "/list.action";
		if (!param.equals("")) {
			listUrl = listUrl + "?" + param;
		}

		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

		// �ۺ��� �ּ� ����
		String articleUrl = cp + "/article.action?pageNum=" + currentPage;

		if (!param.equals(""))
			articleUrl = articleUrl + "&" + param;

		// ������ �� �������� �����͸� �ѱ��
		request.setAttribute("lists", lists);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);
		request.setAttribute("articleUrl", articleUrl);

		return "refund/refundList";

	}

	@RequestMapping(value = "refund/refund_ok.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String refund_ok(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String[] checkbox = request.getParameterValues("checkbox");

		if (checkbox != null) {
			String[] modelNames = devidingCheckBox(checkbox, "modelNames");
			String[] orderNums = devidingCheckBox(checkbox, "ordernum");

			for (int i = 0; i < modelNames.length; i++) {
				daoRefund.updateData(Integer.parseInt(orderNums[i]), modelNames[i], "ȯ�ҿϷ�");
			}
		}

		return "redirect:/refund/list.action";

	}

	@RequestMapping(value = "refund/refund_cancel.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String refund_cancel(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");


		String[] checkbox = request.getParameterValues("checkbox");

		if (checkbox != null) {
			String[] modelNames = devidingCheckBox(checkbox, "modelNames");
			String[] orderNums = devidingCheckBox(checkbox, "ordernum");

			for (int i = 0; i < modelNames.length; i++) {
				daoRefund.updateData(Integer.parseInt(orderNums[i]), modelNames[i], "ȯ�Ҵ��");
			}
		}

		return "redirect:/refund/list.action";
	}

	@RequestMapping(value = "refund/refund_delete.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String refund_delete(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String[] checkbox = request.getParameterValues("checkbox");

		if (checkbox != null) {
			String[] modelNames = devidingCheckBox(checkbox, "modelNames");
			String[] orderNums = devidingCheckBox(checkbox, "ordernum");

			for (int i = 0; i < modelNames.length; i++) {
				daoRefund.deleteData(modelNames[i], Integer.parseInt(orderNums[i]));
			}
		}
		return "redirect:/refund/list.action";
	}

	// �޾ƿ� üũ�ڽ� ����Ʈ�� modelName�� ordernum �迭�� ���� ��ȯ�� ������ش�.
	public String[] devidingCheckBox(String[] checkbox, String name) {

		if (name.equals("modelNames")) {
			String[] modelNames = new String[checkbox.length];

			for (int i = 0; i < checkbox.length; i++) {
				modelNames[i] = checkbox[i].substring(0, checkbox[i].indexOf(","));
				System.out.println("model[" + i + "] = " + modelNames[i]);
			}
			return modelNames;

		} else if (name.equals("ordernum")) {
			String[] ordernum = new String[checkbox.length];

			for (int i = 0; i < checkbox.length; i++) {
				ordernum[i] = checkbox[i].substring(checkbox[i].lastIndexOf(",") + 1);
				System.out.println("ordernum[" + i + "] = " + ordernum[i]);
			}
			return ordernum;

		} else {
			System.out.println("devidingCheckBox error");
			return checkbox;
		}
	}
}

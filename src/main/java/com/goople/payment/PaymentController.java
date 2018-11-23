package com.goople.payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.goople.cart.CartDAO;
import com.goople.order.OrderDAO;
import com.goople.order.OrderDTO;
import com.goople.shopping.ProductDAO;
import com.goople.shopping.ProductDTO;
import com.goople.shopping.ProductDetailDAO;

@Controller
@RequestMapping(value = "/payment/*")
public class PaymentController {

	@Autowired
	OrderDAO daoOrder;

	@Autowired
	ProductDAO daoProduct;
	
	@Autowired
	ProductDetailDAO daoProductDetail;
	
	@Autowired
	CartDAO daoCart;


	// ���� ȭ��
	@RequestMapping(value = "/payment/payment.action")
	public ModelAndView payment(ProductDTO dto, HttpServletRequest request) {

		
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();

		String id = request.getParameter("loginID"); // ���� �α����� ���̵�
		System.out.println("id = "+id);
		int totalPrice = 0;
		
		String[] amountForPayArray = request.getParameterValues("amount");
		String[] cartNoArray = request.getParameterValues("cartNo");
		String amountForPay = "";
		String cartNo = "";
		
		// select������ ù��° model�� price�� amountForPay[i]�� ���Ѵ�.
		String[] modelNamesArray = request.getParameterValues("model");
		String modelNames = dto.getModel();
		
		System.out.println("modelNames= "+modelNames);
		System.out.println("modelNamesArray[0]= "+modelNamesArray[0]);
		
		for (int i = 0; i < modelNamesArray.length; i++) {
			dto = daoProduct.getProductDataByModel(modelNamesArray[i]);
			System.out.println("��");
			int price = dto.getPrice();
			System.out.println("price = " + price);
			totalPrice = totalPrice + (price * Integer.parseInt(amountForPayArray[i]));
			System.out.println("totalPrice = " + totalPrice);
			amountForPay += amountForPayArray[i];
			amountForPay += ",";
			
			cartNo += cartNoArray[i];
			cartNo += ",";
		}
		
		//System.out.println("amountForPay= "+amountForPay);
		
		mav.addObject("id", id);
		mav.addObject("modelNames", modelNames);
		mav.addObject("amountForPay", amountForPay);
		mav.addObject("totalPrice", totalPrice);
		mav.addObject("cartNo",cartNo);

		mav.setViewName("payment/payment");
		return mav;
	}

	// ���� �Ϸ� ȭ��
	@RequestMapping(value = "/payment/payment_ok.action", method = RequestMethod.POST)
	public String payment_ok(HttpServletRequest request, HttpServletResponse response, ProductDTO dtoProduct,
			OrderDTO dtoOrder) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		ModelAndView mav = new ModelAndView();

		String temp_modelArray = request.getParameter("modelNames");
		String[] modelArray = temp_modelArray.split(",");
		String temp_amountForPay = request.getParameter("amountForPay");
		String[] amountForPay = temp_amountForPay.split(",");
		String temp_cartNo = request.getParameter("cartNo");
		String[] cartNoArray = temp_cartNo.split(",");
		
		String id = (String) request.getParameter("id");
		System.out.println("paymen_ok�� id= "+id);

		int maxOrderNum = daoOrder.getMaxNum() + 1;
		// �޾ƿ� �𵨸� ���� ��ǰ ������ Orderstate�� Insert�Ѵ�. orderdate,totalPrice�� SQL������ ó��
		for (int i = 0; i < modelArray.length; i++) {
			
			dtoProduct = daoProduct.getProductDataByModel(modelArray[i]);
			
			//�������Ÿ�Ͽ� Insert
			dtoOrder.setId(id);
			dtoOrder.setCompany(dtoProduct.getCompany());
			dtoOrder.setPname(dtoProduct.getPname());
			dtoOrder.setModel(dtoProduct.getModel());
			dtoOrder.setPrice(dtoProduct.getPrice());
			dtoOrder.setOrdernum(maxOrderNum);
			dtoOrder.setAmount(Integer.parseInt(amountForPay[i]));
			dtoOrder.setState("�����Ϸ�");
			daoOrder.insertData(dtoOrder);
			
			
			//cartNo�� ���� �ش� �����͸� �����Ѵ�.
			System.out.println("cartNoArray["+i+"] = "+cartNoArray[i]);
			daoCart.deleteCartItem(id,Integer.parseInt(cartNoArray[i]));
			
			//product, product_detail�� �������� ���ż�����ŭ ����.
			daoProduct.minusAmount(modelArray[i],Integer.parseInt(amountForPay[i]));
			daoProductDetail.minusAmount(modelArray[i],Integer.parseInt(amountForPay[i]));
			
			//product_detail�� sellcount�� ������Ų��.
			daoProductDetail.addSellCount(modelArray[i], Integer.parseInt(amountForPay[i]));
			
		}
		
		
		String redirectForReturn = "redirect:/cart/cartList.action?userId=" + id; 
		
		return redirectForReturn;
	}

	// POST��� ��������(orderstate)�� �ѱ۷� �����ϴ� �޼ҵ�
	public String changeToKorean(String state) {
		String result = "";
		if (state.equals("success")) {
			result = "�����Ϸ�";
		}
		return result;
	}
}

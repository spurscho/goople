package com.goople.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goople.member.SessionDTO;

@Controller
public class CartController {
	
	@Autowired
	CartDAO cdao;

	//장바구니추가
	@RequestMapping(value = "cart/cartInsert.action", method = RequestMethod.POST)
	public String insert(CartDTO dto, HttpSession session, HttpServletRequest request) {

		
		
		String userId = request.getParameter("userId");
		
		if (userId == null || userId.equals("")) {
			return "redirect:/cart/cartList.action";
		}
		
		String modelName = request.getParameter("modelName");
		String models = request.getParameter("models");
		System.out.println(modelName);
		System.out.println(models);
		int maxNum = cdao.getMaxCartNo();
		
		
		dto.setUserId(userId);
		dto.setAmount(1);
		dto.setCartNo(maxNum + 1);
		dto.setModel(modelName);

		cdao.insertCart(dto);

		return "redirect:/cart/cartList.action";

	}
	
	@RequestMapping(value="cart/cartInsert.action", method=RequestMethod.GET)
	public String insert1() {
		
		return "redirect:/cart/cartList.action";
		
	}
	
	//장바구니 리스트
	@RequestMapping(value="cart/cartList.action", method=RequestMethod.GET)
	public String list(Model model, HttpSession session, HttpServletRequest request) {
		SessionDTO info = (SessionDTO) session.getAttribute("info");
		String userId;
		userId = info.getId();
		
		
		List<CartListDTO> clist = cdao.getList(userId);
		
		model.addAttribute("imagePath", "../resources/shopping/img");
		model.addAttribute("iconPath", "../resources/cart/img/icon");
		model.addAttribute("buttonPath", "../resources/cart/img/button");
		model.addAttribute("cartlist", clist);
		model.addAttribute("cartId", userId);		
		
		return "cart/list";
		// 컨트롤러(list) -> list.jsp
		
	}
	
	//수량수정
	@RequestMapping(value="cart/cartUpdate.action")
	public String updateCart(CartDTO cdto,HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		return "redirect:/cart/cartList.action";
				
	}
	
	@RequestMapping(value="cart/cartUpdate.action",method=RequestMethod.POST)
	public String updateCart_ok(CartDTO cdto) {
		
		cdao.updateCart(cdto);
		
		return "redirect:/cart/cartList.action";
		
	}
	
	//선택해서 삭제
	@RequestMapping(value="cart/cartDeletedItem.action",method=RequestMethod.POST)
	public String cartdeletedItem(String loginID, int cartNo) {
		/*System.out.println("111111111");
		System.out.println(loginID);
		System.out.println(cartNo);*/
		
		cdao.deleteCartItem(loginID, cartNo);
		
		return "redirect:/cart/cartList.action";
		
	}
	
	@RequestMapping(value="cart/cartDeletedItem.action", method=RequestMethod.GET)
	public String cartdeletedItem_ok() {
		
		return "redirect:/cart/cartList.action";
		
	}
	
	//모두 삭제
	@RequestMapping(value="cart/cartDeletedAll.action",method=RequestMethod.POST)
	public String cartDeletedAll(CartDTO dto,HttpSession session) {

		SessionDTO info = (SessionDTO) session.getAttribute("info");
		String userId = info.getId();
		dto.setUserId(userId);
		
		cdao.deleteCartAll(userId);
		
		return "redirect:/cart/cartList.action";
		
	}
	
	@RequestMapping(value="cart/cartDeletedAll.action", method=RequestMethod.GET)
	public String cartDeletedAll_ok(String userId) {
		
		
		
		return "redirect:/cart/cartList.action";
		
	}
	
	//
	@RequestMapping("ajax")
	@ResponseBody
	public void ajax(CartDTO cdto) {
//		System.out.println(cdto.getCartNo());
//		System.out.println(cdto.getAmount());
		
		cdao.updateCart(cdto);
	}
	
	@RequestMapping(value="/main.action", method=RequestMethod.GET)
	public String main() {
			
		
		return "main/body";
		
	}
	
	
}

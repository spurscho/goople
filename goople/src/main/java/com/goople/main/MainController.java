package com.goople.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	
	@RequestMapping(value = "/")
	public ModelAndView main(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();

		String id = session.getId(); // 현재 로그인한 아이디
		
		mav.addObject("id",id);
		
		mav.setViewName("main/body");
		return mav;
	}
}

package com.goople.recent;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/recent/*")
public class RecentController {

	// �ֱ� �� ��ǰ
	@RequestMapping(value = "recent/recent.action", method = RequestMethod.GET)
	public ModelAndView recent(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/recent");
		return mav;
	}

	// �ֱ� �� ��ǰ
	@RequestMapping(value = "recent/recent_ok.action", method = RequestMethod.GET)
	public ModelAndView recent_ok(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/recent_ok");
		return mav;
	}

	// �ֱ� �� ��ǰ
	@RequestMapping(value = "recent/recent_del.action", method = RequestMethod.GET)
	public ModelAndView recent_del(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/recent_del");
		return mav;
	}

	// �ֱ� �� ��ǰ2
	@RequestMapping(value = "recent/shop.action", method = RequestMethod.GET)
	public ModelAndView shop(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/shop");
		return mav;
	}

	//////////////////////// �׽���
	// �ֱ� �� ��ǰ2
	@RequestMapping(value = "recent/shop1.action", method = RequestMethod.GET)
	public ModelAndView shop1(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/shop1");
		return mav;
	}

	// �ֱ� �� ��ǰ2
	@RequestMapping(value = "recent/shop2.action", method = RequestMethod.GET)
	public ModelAndView shop2(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/shop2");
		return mav;
	}

	// �ֱ� �� ��ǰ2
	@RequestMapping(value = "recent/shop3.action", method = RequestMethod.GET)
	public ModelAndView shop3(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("recent/shop3");
		return mav;
	}
	//////////////////////////////

}

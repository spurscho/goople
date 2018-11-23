package com.goople.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QNAController {

	@RequestMapping(value = "qna/qnaHome")
	public String apple() {
		return "/qna/qnaList";
	}  
}

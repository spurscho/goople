package com.goople.mail;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;
	
	//mailForm 메일보내는 작성 페이지
	@RequestMapping(value = "mail/mail")
	public String mailForm() {
		return "main/header";
	} 

	//mailSending 코드
		@RequestMapping(value = "mail/mailSending")
		public String mailSending(HttpServletRequest request) {	
			String setfrom = "goopleCS@gmail.com"; // 보내는사람 생략하거나 하면 정상작동을 안함
			String tomail  =  request.getParameter("tomail");    // 문의하는 사람 이메일
			String setBcc = "goopleCS@gmail.com";  //숨은참조(고객센터 이메일 전송) - 문의하는 사람한테는 보이지 않음
			String title   = request.getParameter("title");      // 제목
			String content = request.getParameter("content");    // 내용

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper 
				= new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
				messageHelper.setBcc(setBcc);      // 참조 : goopleCS@gmail.com 고정
				messageHelper.setTo(tomail);     // 받는사람 이메일
				messageHelper.setSubject("[접수완료]" + title); // 메일 제목은 생략이 가능하다
				messageHelper.setText("문의 주신 내용은 정상적으로 접수 되었습니다.\n 1년안에 답장가요. 기다리세요." + "\n " +
						"==========================================================================\n\n\n\n\n"+ 
						content + "\n\n\n\n\n\n\n" +
						"==========================================================================\n"+ 
						"본 메일은 발신전용으로 회신할 수 없습니다. 문의사항은 고객센터를 이용해 주세요.\n" +
						"(주)GOOPLE 서울시 강남구 테헤란로 152(역삼동 강남파이낸스센터) 대표자 조기현\n" + 
						"사업자등록번호 : 200-10-000000, 통신판매업신고: 강남 10630호, 전화 : 1588-0000,\n" + 
						"문의하기: GOOPLE@Gmail.com ");  // + 메일 내용
				mailSender.send(message);
			} catch(Exception e){
				System.out.println(e);
			}
			return "redirect:/main.action";
		}

	
}

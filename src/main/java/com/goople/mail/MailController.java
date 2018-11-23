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
	
	//mailForm ���Ϻ����� �ۼ� ������
	@RequestMapping(value = "mail/mail")
	public String mailForm() {
		return "main/header";
	} 

	//mailSending �ڵ�
		@RequestMapping(value = "mail/mailSending")
		public String mailSending(HttpServletRequest request) {	
			String setfrom = "goopleCS@gmail.com"; // �����»�� �����ϰų� �ϸ� �����۵��� ����
			String tomail  =  request.getParameter("tomail");    // �����ϴ� ��� �̸���
			String setBcc = "goopleCS@gmail.com";  //��������(������ �̸��� ����) - �����ϴ� ������״� ������ ����
			String title   = request.getParameter("title");      // ����
			String content = request.getParameter("content");    // ����

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper 
				= new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(setfrom);  // �����»�� �����ϰų� �ϸ� �����۵��� ����
				messageHelper.setBcc(setBcc);      // ���� : goopleCS@gmail.com ����
				messageHelper.setTo(tomail);     // �޴»�� �̸���
				messageHelper.setSubject("[�����Ϸ�]" + title); // ���� ������ ������ �����ϴ�
				messageHelper.setText("���� �ֽ� ������ ���������� ���� �Ǿ����ϴ�.\n 1��ȿ� ���尡��. ��ٸ�����." + "\n " +
						"==========================================================================\n\n\n\n\n"+ 
						content + "\n\n\n\n\n\n\n" +
						"==========================================================================\n"+ 
						"�� ������ �߽��������� ȸ���� �� �����ϴ�. ���ǻ����� �����͸� �̿��� �ּ���.\n" +
						"(��)GOOPLE ����� ������ ������� 152(���ﵿ �������̳�������) ��ǥ�� ������\n" + 
						"����ڵ�Ϲ�ȣ : 200-10-000000, ����Ǹž��Ű�: ���� 10630ȣ, ��ȭ : 1588-0000,\n" + 
						"�����ϱ�: GOOPLE@Gmail.com ");  // + ���� ����
				mailSender.send(message);
			} catch(Exception e){
				System.out.println(e);
			}
			return "redirect:/main.action";
		}

	
}

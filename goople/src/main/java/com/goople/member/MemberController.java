package com.goople.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

	@Controller
	public class MemberController {
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	//private MemberService service;
	
	@Qualifier("memberDAO")
	MemberDAO dao;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	} 
	
	
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public String join() {
		
		return "member/join";
		
	}  
		
		@RequestMapping(value = "/member/main")		
	public String main(HttpServletRequest req) {
		HttpSession session = req.getSession(true); //���� �ҷ����°�
		
		SessionDTO info = (SessionDTO)session.getAttribute("info");
		
		
		return "member/main";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String loginB() {
		
		return "member/login";
		
	}
	
	@RequestMapping(value = "/member/terms", method = RequestMethod.GET)
	public String terms() {
		
		return "member/terms";
		
	}
	
	@RequestMapping(value = "/member/join", method =  RequestMethod.POST)
	public String agreement(MemberDTO memberDTO) {
		
		sessionTemplate.insert("memberMapper.memberinsert", memberDTO);
		
		return "member/main";
	}
	

	@RequestMapping(value = "/member/main2")
	public String main2(HttpServletRequest req) {
		HttpSession session = req.getSession(true); //���� �ҷ����°�
		
		SessionDTO info = (SessionDTO)session.getAttribute("info");
	
		return "member/main2";
		
	}
	
	//�α׾ƿ�
	@RequestMapping(value = "/member/logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("info"); //���� ���°�
		session.invalidate();
		
		return "redirect:/member/main";
	}
	
	@RequestMapping(value = "/member/update", method =  RequestMethod.GET)
	public String updateget() {	
		
		return  "/member/update";
		
	}
	
	//��������
	@RequestMapping(value = "/member/update", method =  RequestMethod.POST)
	public String update(MemberDTO  memberDTO ,HttpServletRequest req) {	
		
		
		//MemberDTO info = new MemberDTO ();  //���ǿ� ���� ���� ����
	
		HttpSession session = req.getSession(true); //���� �ҷ����°�
		
		SessionDTO info = (SessionDTO)session.getAttribute("info");  //���� �޴� ��
	    String id = info.getId();  //���̵� ��
	    memberDTO.setId(id);	   
	    
	   
		sessionTemplate.update("memberMapper.memberupdate",memberDTO );
		
		return  "redirect:/member/main2";	
	}	
	
	@RequestMapping(value="/member/delete", method = RequestMethod.GET)
	public String delete() {
		return "member/delete";
	}

	// Ż��Ȯ��(��й�ȣ ���� ���� ������Ǵܰ�)
	@RequestMapping(value = "/member/delete", method = RequestMethod.POST)
	public String deleteokpost(MemberDTO memberDTO, HttpSession session) {
		SessionDTO info = (SessionDTO) session.getAttribute("info");  //���̵� �Է��� ��� �������� �ڵ�
		memberDTO.setId(info.getId());

		int result = sessionTemplate.delete("memberMapper.memberdelete", memberDTO); // db�� �����Ǵ� �ڵ�
		
		if (result == 1) {
			// Ż�� ����
			session.removeAttribute("info"); // �����Ǵ� �ڵ�
			
			session.invalidate();
			return "redirect:/member/main";
		} else {
			// ��� ����, Ż�� ����					 
			return "redirect:/member/delete";
		}
	}
	
	//�����ʺ���
	@RequestMapping(value = "/member/profile", method = RequestMethod.GET)
	public String profile(){
		
		
		return "member/profile";
	}
	//���̵� ã��
	@RequestMapping(value = "/member/id", method = RequestMethod.POST)
	@ResponseBody	
		public String id(HttpServletRequest req, HttpServletResponse resp) {
		
			MemberDTO memberDTO = new MemberDTO();
			
			memberDTO.setName(req.getParameter("name"));
			memberDTO.setPhone(req.getParameter("phon"));
			memberDTO.setPhone1(req.getParameter("phon1"));
			memberDTO.setPhone2(req.getParameter("phon2"));
			
			String result = sessionTemplate.selectOne("memberMapper.id",memberDTO);		
			
			return result;
	}
	
	//�н����� ã��
	@RequestMapping(value = "/member/pwd", method = RequestMethod.POST)
	@ResponseBody	
		public String pwd(HttpServletRequest req, HttpServletResponse resp) {
		
			MemberDTO memberDTO = new MemberDTO();
			
			memberDTO.setId(req.getParameter("id"));
			memberDTO.setName(req.getParameter("name"));			
			
			String result = sessionTemplate.selectOne("memberMapper.pwd",memberDTO);		
			
			/*
			if (result != null) {
				
				System.out.println("aa");
				
				HttpSession session = req.getSession(true); //���� �ҷ����°�
				
				SessionDTO info = new SessionDTO();  //���ǿ� ���� ���� ����
				info.setId(result.getId());
				info.setName(result.getName());
				info.setPwd(result.getPwd());			
				info.setEmailid(result.getEmailid());
				info.setEmailad(result.getEmailad());
				info.setPhone(result.getPhone());
				info.setPhone1(result.getPhone1());
				info.setPhone2(result.getPhone2());
				info.setZipcode(result.getZipcode());
				info.setAddress(result.getAddress());
				info.setAddress1(result.getAddress1());
				info.setAddress2(result.getAddress2());
				info.setAddress3(result.getAddress3());
				
				session.setAttribute("info", info); //���ǿ� �����ֱ�.   			
	}		*/
			return result;
	}	
	
	@RequestMapping(value = "/member/id", method = RequestMethod.GET)
	public String id() {
		
		return "member/id";
	}
	
	@RequestMapping(value = "/member/pwd", method = RequestMethod.GET)
	public String pwd() {
		
		return "member/pwd";
	}
	
	@RequestMapping(value = "/member/profile", method = RequestMethod.POST)
	public String profilea(HttpSession session,MemberDTO memberDTO){
		SessionDTO info = (SessionDTO) session.getAttribute("info");
		memberDTO.setId(info.getId());
		memberDTO.setId(info.getPwd());
	
		//MemberDTO memberDTO = sessionTemplate.selectList("memberMapper.memberselect");
		
		
		return "member/main2";
	}
	
	@RequestMapping(value= "/member/ajax", method = RequestMethod.POST)
	@ResponseBody
	public MemberDTO check(String id) {
		
//		String id = request.getParameter("id");
		MemberDTO result = sessionTemplate.selectOne("memberMapper.idcheck", id);
		
		
		
		return result;
	}
	
	//���̵� ��й�ȣ Ȯ��
	@RequestMapping(value="/member/lch", method = RequestMethod.POST)
	@ResponseBody
	public MemberDTO logincheck(MemberDTO memberDTO,HttpServletRequest req, HttpServletResponse resp) {
		MemberDTO result = sessionTemplate.selectOne("memberMapper.logincheck",memberDTO);
		
		if (result != null) {
			HttpSession session = req.getSession(true); //���� �ҷ����°�
			
			SessionDTO info = new SessionDTO();  //���ǿ� ���� ���� ����
			info.setId(result.getId());
			info.setName(result.getName());
			info.setPwd(result.getPwd());			
			info.setEmailid(result.getEmailid());
			info.setEmailad(result.getEmailad());
			info.setPhone(result.getPhone());
			info.setPhone1(result.getPhone1());
			info.setPhone2(result.getPhone2());
			info.setZipcode(result.getZipcode());
			info.setAddress(result.getAddress());
			info.setAddress1(result.getAddress1());
			info.setAddress2(result.getAddress2());
			info.setAddress3(result.getAddress3());
			
			session.setAttribute("info", info); //���ǿ� �����ֱ�.
		
		
		
		
	}
		return result;
	
	}
	
	
	}

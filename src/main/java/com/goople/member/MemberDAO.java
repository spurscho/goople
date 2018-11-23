package com.goople.member;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.transaction.annotation.Transactional;



public class MemberDAO {
	
	@SuppressWarnings("dan")
	private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		this.sessionTemplate = sessionTemplate;
		
	}
	
	/*
	
	//Á¤º¸¼öÁ¤
	public void updateData(MemberDTO dto) {
		
		sessionTemplate.update("MemberMapper.updateData",dto);
		
	}    */
	
	/*
	//È¸¿øÅ»Åð
	public void deleteData(int id) {
		
		sessionTemplate.delete("MemberMapper.delete",id);
		
	} */
	
	/*
	public int searchId(String id) {

		MemberDTO dto;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		int num = 0;
		try {
			sql = "select id from custominfo where id=?";

			HttpSession session = req.getSession(true);
			SessionDTO info = (SessionDTO)session.getAttribute("info");
			

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				num = 1;

			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return num;
	}    */

}

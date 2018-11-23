package com.goople.cart;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;
	}

	public int getMaxCartNo() {

		int maxNum = 0;

		maxNum = sessionTemplate.selectOne("cartMapper.maxCartNo");

		return maxNum;

	}

	public void insertCart(CartDTO cdto) {

		sessionTemplate.insert("cartMapper.insertCart", cdto);

	}

	public List<CartListDTO> getList(String userId) {

		List<CartListDTO> clists = sessionTemplate.selectList("cartMapper.listCart", userId);

		return clists;

	}

	public void updateCart(CartDTO cdto) {

		sessionTemplate.update("cartMapper.updateCart", cdto);
	}

	public void deleteCartItem(String userId, int cartNo) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("userId", userId);
		params.put("cartNo", cartNo);

		sessionTemplate.delete("cartMapper.deleteCartItem", params);

	}

	public void deleteCartAll(String userId) {

		sessionTemplate.delete("cartMapper.deleteCartAll", userId);

	}
	
	public CartDTO getIdModel(CartDTO cdto) {
		
		return sessionTemplate.selectOne("cartMapper.selectIdModel", cdto);
		
	}

}
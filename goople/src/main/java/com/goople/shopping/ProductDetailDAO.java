package com.goople.shopping;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goople.shopping.ProductDTO;
import com.goople.shopping.ProductDetailDTO;

@Repository
public class ProductDetailDAO {

//@Autowired는 속성주입(게터 세터 만들어줌)
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;
		conn = sessionTemplate.getConnection();
	}

	Connection conn = null;

	public int getMaxNum() {

		int maxNum = 0;

		maxNum = sessionTemplate.selectOne("productDetailMapper.maxNum");

		return maxNum;

	}

	public void insertData(ProductDetailDTO dto) {

		sessionTemplate.insert("productDetailMapper.insertData", dto);

	}

	public List<ProductDetailDTO> getList(int start, int end, String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		List<ProductDetailDTO> lists = sessionTemplate.selectList("productDetailMapper.getLists", params);

		return lists;

	}

	public int getDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("productDetailMapper.getDataCount", params);

		return result;
	}

	public void updateHitCount(int num) {

		sessionTemplate.update("productDetailMapper.updateHitCount", num);

	}

	public ProductDetailDTO getReadData(String model) {

		ProductDetailDTO dto = sessionTemplate.selectOne("productDetailMapper.getReadData", model);

		return dto;

	}

	public void deleteData(String model){
		
		sessionTemplate.delete("productDetailMapper.deleteData",model);
		
	}

	public void updateData(ProductDTO dto) {

		sessionTemplate.update("productDetailMapper.updateData", dto);

	}

	public int getModelDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("productDetailMapper.getModelDataCount", params);

		return result;
	}

	public List<ProductDetailDTO> getModelList(int start, int end, String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		List<ProductDetailDTO> lists = sessionTemplate.selectList("productDetailMapper.getModelLists", params);

		return lists;

	}

	public void minusAmount(String dmodel, int damount) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("dmodel", dmodel);
		params.put("damount", damount);

		sessionTemplate.insert("productDetailMapper.minusAmount", params);

	}
	
	public void addSellCount(String dmodel, int dsellcount) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("dmodel", dmodel);
		params.put("dsellcount", dsellcount);
		
		sessionTemplate.insert("productDetailMapper.addSellCount", params);
	}

}

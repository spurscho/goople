package com.goople.shopping;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}

	public int getMaxNum() {

		int maxNum = 0;

		maxNum = sessionTemplate.selectOne("productMapper.maxNum");

		return maxNum;

	}

	// 한 개의 데이터 조회
	public ProductDTO getProductDataByModel(String model) {

		ProductDTO dto = sessionTemplate.selectOne("productMapper.getReadDataByModel", model);
		return dto;
	}

	// 한 개의 가격 조회
	public ProductDTO getProductPrice(String model) {

		ProductDTO dto = sessionTemplate.selectOne("productMapper.getProductPrice", model);
		return dto;
	}

	public int getModelDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("productMapper.getModelDataCount", params);

		return result;
	}

	public List<ProductDetailDTO> getModelList(int start, int end, String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		List<ProductDetailDTO> lists = sessionTemplate.selectList("productMapper.getModelLists", params);

		return lists;

	}

	public List<ProductDTO> getList(int start, int end, String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		List<ProductDTO> lists = sessionTemplate.selectList("productMapper.getLists", params);

		return lists;

	}

	public int getDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("productMapper.getDataCount", params);

		return result;
	}
	public int getAppleDataCount(String searchKey, String searchValue) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);
		
		int result = sessionTemplate.selectOne("productMapper.getAppleDataCount", params);
		
		return result;
	}
	public int getGoogleDataCount(String searchKey, String searchValue) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);
		
		int result = sessionTemplate.selectOne("productMapper.getGoogleDataCount", params);
		
		return result;
	}

	public void updateHitCount(int num) {

		sessionTemplate.update("productMapper.updateHitCount", num);

	}

	public ProductDTO getReadData(int num) {

		ProductDTO dto = sessionTemplate.selectOne("productMapper.getReadData", num);

		return dto;

	}

	public void deleteData(String model){
		
		sessionTemplate.delete("productMapper.deleteData",model);
		
	}

	public void updateData(ProductDTO dto) {

		sessionTemplate.update("productMapper.updateData", dto);

	}

	public void insertData(ProductDTO dto) {

		sessionTemplate.insert("productMapper.insertData", dto);

	}

	public void minusAmount(String model, int pamount) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("model", model);
		params.put("pamount", pamount);

		sessionTemplate.insert("productMapper.minusAmount", params);

	}
	
	public List<ProductDTO> getGoogleList(int start, int end,
			String searchKey, String searchValue){
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue",searchValue);
		
		List<ProductDTO> lists = sessionTemplate.selectList("productMapper.getGoogleLists",params);
		
		return lists;
		
	}
	public List<ProductDTO> getAppleList(int start, int end,
			String searchKey, String searchValue){
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue",searchValue);
		
		List<ProductDTO> lists = sessionTemplate.selectList("productMapper.getAppleLists",params);
		
		return lists;
		
	}

}

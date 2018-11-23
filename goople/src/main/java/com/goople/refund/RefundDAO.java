package com.goople.refund;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goople.order.OrderDAO;
import com.goople.order.OrderDTO;

@Repository
public class RefundDAO {

	@Autowired
	private OrderDAO daoOrder;
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}

	// 최대 주문번호
	public int getMaxOrderNum() {

		int maxNum = 0;

		maxNum = sessionTemplate.selectOne("refundMapper.maxOrderNum");

		return maxNum;

	}

	// 리스트 불러오기
	public List<RefundDTO> getList(int start, int end, String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		List<RefundDTO> lists = sessionTemplate.selectList("refundMapper.getLists", params);

		return lists;
	}

	// 전체데이터의 개수
	public int getDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("refundMapper.getDataCount", params);
		return result;

	}

	// 한 개의 데이터 조회
	public RefundDTO getReadData(int ordernum) {
		RefundDTO dto = sessionTemplate.selectOne("refundMapper.getReadData", ordernum);
		return dto;
	}

	// 수정
	public void updateData(int ordernum, String model, String state) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("ordernum", ordernum);
		params.put("model", model);
		params.put("state", state);

		sessionTemplate.update("refundMapper.updateData", params);
	}

	// 데이터 삭제
	public void deleteData(String model, int ordernum) {
		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("model", model);
		params.put("ordernum", ordernum);

		sessionTemplate.delete("refundMapper.deleteData", params);
	}

	// 데이터 삽입
	public void insertDataByOrder(String id, String model, int ordernum) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		OrderDTO dtoOrder = daoOrder.getOrderData(id, model, ordernum);
		
		int totalprice = dtoOrder.getPrice() * dtoOrder.getAmount();
		String state = "환불대기";
		
		String orderDate = dtoOrder.getOrderdate().substring(0, 19);
		System.out.println(orderDate);
		params.put("id",dtoOrder.getId());
		params.put("ordernum",dtoOrder.getOrdernum());
		params.put("pcompany",dtoOrder.getCompany());
		params.put("pname",dtoOrder.getPname());
		params.put("model",dtoOrder.getModel());
		params.put("price",dtoOrder.getPrice());
		params.put("pamount",dtoOrder.getAmount());
		params.put("totalprice",totalprice);
		params.put("state",state);
		params.put("orderdate",orderDate);
		
		
		System.out.println(dtoOrder.getId());
		System.out.println(dtoOrder.getOrdernum());
		System.out.println(dtoOrder.getCompany());
		System.out.println(dtoOrder.getPname());
		System.out.println(dtoOrder.getModel());
		System.out.println(dtoOrder.getPrice());
		System.out.println(dtoOrder.getAmount());
		System.out.println(totalprice);
		System.out.println(state);
		System.out.println(dtoOrder.getOrderdate());
		sessionTemplate.insert("refundMapper.insertRefundData", params);

	}

}

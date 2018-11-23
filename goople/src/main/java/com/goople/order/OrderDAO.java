package com.goople.order;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;
	}

	// �� ���� ������ ��ȸ
	public OrderDTO getOrderData(String id) {

		OrderDTO dtoOrder = sessionTemplate.selectOne("orderMapper.getOrderData", id);
		return dtoOrder;
	}

	// �� ���� ������ �� ���ϴ� �ֹ� ������ �˻�
	public OrderDTO getOrderData(String id, String model, int ordernum) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		params.put("model", model);
		params.put("ordernum", ordernum);

		OrderDTO dtoOrder = sessionTemplate.selectOne("orderMapper.getOrderDataDetail", params);

		return dtoOrder;
	}

	// ������ ����
	public void insertData(OrderDTO dto) {

		sessionTemplate.insert("orderMapper.insertOrderData", dto);

	}

	//
	public int getMaxNum() {

		int maxNum = 0;

		maxNum = sessionTemplate.selectOne("orderMapper.maxOrderNum");

		return maxNum;

	}

	// ����Ʈ �ҷ�����
	public List<OrderDTO> getList(int start, int end, String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("end", end);
		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		List<OrderDTO> lists = sessionTemplate.selectList("orderMapper.getLists", params);

		return lists;
	}

	// ��ü�������� ����
	public int getDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("orderMapper.getDataCount", params);
		return result;

	}

	// ����
	public void updateData(int ordernum, String model, String state) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("ordernum", ordernum);
		params.put("model", model);
		params.put("state", state);

		sessionTemplate.update("orderMapper.updateData", params);

	}

	// ������ ����
	public void deleteData(String model, int ordernum) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("model", model);
		params.put("ordernum", ordernum);

		sessionTemplate.delete("orderMapper.deleteData", params);

	}

}

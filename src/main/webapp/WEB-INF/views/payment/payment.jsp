<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간편 결제</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script type="text/javascript">
	IMP.init('imp09048775'); //iamport 대신 자신의 "가맹점 식별코드"를 사용하시면 됩니다
	IMP.request_pay({
		pg : 'inicis',
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : 'Goople 주식회사', //${pname}
		amount : '${totalPrice}', //${price} 가격
		buyer_email : '',//${email}
		buyer_name : '${name}',
		buyer_tel : '${phone}',
		buyer_addr : '${address}',
		buyer_postcode : '${postcode}'
	}, function(rsp) {
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
			alert(msg);
			////구매한 물품을 orderstate table에 저장
			post_to_url('<%=cp%>/payment/payment_ok.action', {'id':'${id}','modelNames':'${modelNames}','amountForPay':'${amountForPay}','totalPrice':'${totalPrice}','cartNo':'${cartNo}'}); 
			//{'name':'value'}
			
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
			alert(msg);
		}
	});
	
	/*
	 * path : 전송 URL
	 * params : 전송 데이터 {'q':'a','s':'b','c':'d'...}으로 묶어서 배열 입력
	 * method : 전송 방식(생략가능)
	 */
	function post_to_url(path, params, method) {
	    method = method || "post"; // Set method to post by default, if not specified.
	    // The rest of this code assumes you are not using a library.
	    // It can be made less wordy if you use one.
	    var form = document.createElement("form");
	    form.setAttribute("method", method);
	    form.setAttribute("action", path);
	    for(var key in params) {
	        var hiddenField = document.createElement("input");
	        hiddenField.setAttribute("type", "hidden");
	        hiddenField.setAttribute("name", key);
	        hiddenField.setAttribute("value", params[key]);
	        form.appendChild(hiddenField);
	    }
	    document.body.appendChild(form);
	    form.submit();
	}
	//post_to_url('http://example.com/', {'q':'a'});
	
</script>
</head>
<body>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>refundList</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<script type="text/javascript">

	$( document ).ready( function() {
	    $( '.checkall' ).click( function() {
	      $( '.checkBox' ).prop( 'checked', this.checked );
	    } );
	  } );
	
	function sendIt(refundState){
		f = document.myForm;
		
		if(refundState=='ok')
			f.action = "<%=cp%>/refund/refund_ok.action";
		else if(refundState=='cancel')
			f.action = "<%=cp%>/refund/refund_cancel.action";
		else if(refundState='delete')
			f.action = "<%=cp%>/refund/refund_delete.action";
		
		f.submit();
	}
</script>
<body>
<jsp:include page="../main/header.jsp" flush="false"/>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="" name="myForm" method="post">
<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th style="text-align: center;">주문번호</th>
        <th style="text-align: center;">아이디</th>
        <th style="text-align: center;">회사명</th>
        <th style="text-align: center;">제품명</th>
        <th style="text-align: center;">모델명</th>
        <th style="text-align: center;">구매수량</th>
        <th style="text-align: center;">가격</th>
        <th style="text-align: center;">총금액</th>
        <th style="text-align: center;">구매날짜</th>
        <th style="text-align: center;">상태</th>
        <th style="text-align: center;"><input type="checkbox" class="checkall" onclick="checkAll();"/></th>
      </tr>
    </thead>
    <c:forEach var="dto" items="${lists}">
    <tbody>
      <tr>
        <td style="text-align: center;">${dto.ordernum }</td>
        <td style="text-align: center;">${dto.id }</td>
        <td style="text-align: center;">${dto.pcompany }</td>
        <td style="text-align: center;">${dto.pname }</td>
        <td style="text-align: center;">${dto.model}</td>
        <td style="text-align: center;">${dto.pamount}</td>
        <td style="text-align: center;">${dto.price }</td>
        <td style="text-align: center;">${dto.totalprice }</td>
        <td style="text-align: center;">${dto.orderdate }</td>
    <c:if test="${dto.state=='환불대기' }">
    	<td style="color: red;font-weight: bold;text-align: center;">${dto.state }</td>
    </c:if>
    <c:if test="${dto.state=='환불완료' }">
    	<td style="color: blue;text-align: center;">${dto.state }</td>
    </c:if>
        <td style="text-align: center;"><input type="checkbox" class="checkBox" name="checkbox" value="${dto.model},${dto.ordernum}"/></td>
        <td><input type="hidden" name="amount" value="${dto.pamount }"/></td>
        <td><input type="hidden" name="id" value="${dto.id }"/></td>
        <td><Input Type="hidden" name="ordernum" value="${dto.ordernum }"></td>
      </tr>
    </tbody>
    </c:forEach>
    <tr><!-- 
    	<td><Input Type="hidden" name="modelNames" value=""></td>
    	<td><Input Type="hidden" name="orderNums" value=""></td> -->
		<td><input type="button" value=" 환불하기 " onclick="sendIt('ok');"/></td>
		<td><input type="button" value=" 환불취소 " onclick="sendIt('cancel');"/></td>
		<td><input type="button" value=" 기록삭제 " onclick="sendIt('delete');"/></td>
	</tr>
  </table>
</div>
</form>
</body>
</html>
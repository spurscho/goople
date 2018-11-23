<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
//체크박스 전체선택/해제
	$( document ).ready( function() {
	    $( '.checkall' ).click( function() {
	      $( '.checkBox' ).prop( 'checked', this.checked );
	    } );
	  } );
	  
	function sendIt(orderState){
		
		f = document.myOrderForm;
		
		f.action = "<%=cp%>/order/complete_ok.action";
		
		f.submit();
	}
	  
	function button_event(){
		
		f = document.myOrderForm;
		
		if (confirm("환불하시겠습니까??") == true){//확인
			f.action = "<%=cp%>/order/refund_ok.action";
			f.submit();
		}else{//취소
		    return;
		}
	}

	
</script>
<style>

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

/* Style the close button */
.topright {
    float: right;
    cursor: pointer;
    font-size: 28px;
}

.topright:hover {color: red;}
</style>
</head>
<body>


<jsp:include page="../main/header.jsp" flush="false"/>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>


<div align="center">

<div class="tab" align="center" style="width: 1200px; background-color: inherit; border: 0px;">
  <button class="tablinks" onclick="openCity(event, '주문내역')" id="defaultOpen">주문내역</button>
  <button class="tablinks" onclick="openCity(event, '이전구매목록')">이전구매목록</button>
  <button class="tablinks" onclick="openCity(event, '환불')">환불</button>
</div>
<form action="" name="myOrderForm" method="post">
<div id="주문내역" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="container">
   <table class="table">
    <thead>
      <tr>
      	<th>
      	<input type="checkbox" class="checkall" onclick="checkAll();">
      	</th>
        <th>구매번호</th>
        <th>회사명</th>
        <th>제품명</th>
        <th>모델명</th>
        <th>가격</th>
        <th>구매수량</th>
        <th>총구매가격</th>
        <th>주문상태</th>
        <th>구매날짜</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
	    <c:forEach var="dto" items="${totallist}">
	    <c:if test="${sessionScope.info.id eq dto.id }">
	      <tr>
	        <c:if test="${dto.state ne '구매완료' }">
	        <td>
	        <input type="checkbox" class="checkBox" name="checkbox" value="${dto.model},${dto.ordernum}">
			</td>
	        <td>${dto.ordernum }</td>
	        <td>${dto.company }</td>
	        <td>${dto.pname }</td>
	        <td>${dto.model }</td>
	        <td>${dto.price }</td>
	        <td>${dto.amount }</td>
	        <td>${dto.price * dto.amount }</td>
	        <c:if test="${dto.state=='결제완료' }">
	    		<td style="font-weight: bold;">${dto.state }</td>
	    	</c:if>
	    	<c:if test="${dto.state=='배송준비중' }">
	    		<td style="font-weight: bold;">${dto.state }</td>
	   		</c:if>
	   		<c:if test="${dto.state=='배송중' }">
	    		<td style="font-weight: bold;">${dto.state }</td>
	    	</c:if>
	    	<c:if test="${dto.state=='배송완료' }">
	    		<td style="font-weight: bold;">${dto.state }</td>
	   		</c:if>
	        <td>${dto.orderdate }</td>
	        </c:if>
	        <c:if test="${dto.state=='배송완료' }">
	        <td><input type="button" value=" 구매완료 " onclick="sendIt();"/>
	        <input type="hidden" name="amount" value="${dto.amount }"/>
	        <input type="hidden" name="id" value="${dto.id }"/>
	        <input type="hidden" name="ordernum" value="${dto.ordernum }"></td>
	      	</c:if>
	      </tr>
		</c:if>
	    </c:forEach>      
	    </tbody>
	  </table>
	  <input type="button" value="환불신청" onclick="button_event();">
	 <input type="hidden" name="sessionId" value="${sessionScope.info.id}"/>
	</div>
	</div>
	</form>
<div id="이전구매목록" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="container">
   <table class="table">
    <thead>
      <tr>
        <th>구매번호</th>
        <th>회사명</th>
        <th>제품명</th>
        <th>모델명</th>
        <th>가격</th>
        <th>구매수량</th>
        <th>총구매가격</th>
        <th>주문상태</th>
        <th>구매날짜</th>
      </tr>
    </thead>
    
    <tbody>
    <c:forEach var="dto" items="${totallist}">
    <c:if test="${sessionScope.info.id eq dto.id }">
      <tr>
        <c:if test="${dto.state=='구매완료' }">
        <td>${dto.ordernum }</td>
        <td>${dto.company }</td>
        <td>${dto.pname }</td>
        <td>${dto.model }</td>
        <td>${dto.price }</td>
        <td>${dto.amount }</td>
        <td>${dto.price * dto.amount }</td>
        <td style="color: black; font-weight: bold;" >${dto.state }</td>
        <td>${dto.orderdate }</td>
        </c:if>
      </tr>
     </c:if>
    </c:forEach>      
    </tbody>
  </table>
</div>
</div>

 <div id="환불" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="container">
   <table class="table">
    <thead>
      <tr>
        <th>구매번호</th>
        <th>회사명</th>
        <th>제품명</th>
        <th>모델명</th>
        <th>가격</th>
        <th>구매수량</th>
        <th>총구매가격</th>
        <th>주문상태</th>
        <th>구매날짜</th>
      </tr>
    </thead>
    
    <tbody>
    <c:forEach var="dto" items="${refundlist}">
     <c:if test="${sessionScope.info.id eq dto.id }">
      <tr>
        <td>${dto.ordernum }</td>
        <td>${dto.pcompany }</td>
        <td>${dto.pname }</td>
        <td>${dto.model }</td>
        <td>${dto.price }</td>
        <td>${dto.pamount }</td>
        <td>${dto.price * dto.pamount }</td>
        <c:if test="${dto.state=='환불대기' }">
    		<td style="color: red;font-weight: bold;">${dto.state }</td>
    	</c:if>
    	<c:if test="${dto.state=='환불완료' }">
    		<td style="color: blue;">${dto.state }</td>
   		</c:if>
        <td>${dto.orderdate }</td>
      </tr>
     </c:if>
    </c:forEach>      
    </tbody>
  </table>
</div>
</div>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

</body>
</html>
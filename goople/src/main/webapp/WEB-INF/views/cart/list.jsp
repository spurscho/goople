<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="<%=cp %>/resources/cart/css/cart.css" type="text/css"> --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<script type="text/javascript">
	
	$(document).ready(function() {
		calc_total_pay();
		
		var input_amount = $('input[name=amount]');
		
		input_amount.change(function(){
			var amount = $(this).val();
			var cartNo = $(this).siblings('input[name=cartNo]').val();
			var price = $(this).parent().prev().prev().html().substring(1);
			var total_price_td = $(this).parent().next();
			
			$.ajax({
	            url: '/goople/ajax',
	            type: 'POST',
	            data: { cartNo : cartNo, amount : amount },
	        })
	        .done(function() {
	            console.log("성공");
	        	var total_price = amount * price;
	        	total_price_td.html('￦' + total_price);
	        	calc_total_pay();
	        })
	        .fail(function() {
	            console.log('fail');
	        });
		});
				
		var input_check = $('input[name=model]');
		
		input_check.click(function(){
			
			calc_total_pay();
		});
		
	});
	
	function calc_total_pay(){
		var total_pay = 0;
		
		var input_check = $('input[name=model]:checked');
		
		input_check.each(function(){
			var amount = $(this).parent().siblings('.td').find('input[name=amount]').val();
			var each_total_price = Number($(this).parent().siblings('.td').find('.total_price').html().trim().substring(1));
			total_pay += each_total_price;
		});
		
		$('.pay').html(numberWithCommas(total_pay));
	}
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	$( document ).ready( function() {
		//체크박스 전체선택/해제
        $( '#checkall' ).click( function() {
        	var checkbox = $( '.model' ); 
          // $( '.model' ).prop( 'checked', this.checked );
          
        	if($(this).is(':checked')){
				checkbox.prop("checked", true);        		
				calc_total_pay();
        	}else{
        		checkbox.prop("checked", false);
        		$('#pay').html(0);
        	}
        } );
		
		// 삭제 버튼
		$('.del_button').click(function(){
				 deleteItem(); 
			/* if (confirm("삭제하시겠습니까??") == true){//확인 */
				 /* $(this).parent().submit(); */ 
			/* } */
		});
      } );
	
	function payIt(){
		var f = document.myForm;
		f.action = "<%=cp%>/payment/payment.action";
		
		var isChecked = $('[name=model]').is(':checked');
		
		if(isChecked==true){
			f.submit();
		}else if(isChecked==false){
			alert("구매할 물품이 없습니다.");
		}
		
		var count = f.model.length;
		var amountForPay = "";
		var cartNo = "";
		
		for (var i = 0; i < count; i++) {
			if(f.amount[i].value>0){
				if (f.model[i].checked == true) {
					amountForPay += f.amount[i].value;
					amountForPay += ",";
					cartNo += f.cartNoInList[i].value;
					cartNo += ",";
				}
			}else{
				f.amount[i].value = -1;
			}
		}
		/* alert(amountForPay);
		alert(cartNo); */
		f.submit();
	}
	
	function deleteItem(){
			var f = document.myForm;

			if (confirm("삭제하시겠습니까??") == true){//확인
				f.action = "<%=cp%>/cart/cartDeletedItem.action";
				f.submit();
			}else{//취소
			    return;
			}
		}
		
	function deleteAll(){
		
		f = document.myForm;
		
		if (confirm("삭제하시겠습니까??") == true){//확인
			f.action = "<%=cp%>/cart/cartDeletedAll.action";
			f.submit();
		}else{//취소
		    return;
		}
	}
	
</script>

<jsp:include page="../main/header.jsp" flush="false"/>

<br/><br/><br/><br/><br/><br/><br/>


	<div class="container">   
	<h3 style="padding-bottom: 30px;">장바구니에 있는 제품</h3>
	<input type="checkbox" id="checkall" class="checkall" value="모두선택" checked="checked">
	<span style="font-size: 10pt;padding:5px;vertical-align: middle;">모두 선택</span>
	  <br/><br/>
	  <form action="" name="myForm" method="post">
	  <table class="table">
	        
	    <tbody>
	    <c:forEach var="cdto" items="${cartlist}">
	      <tr style="text-align: center;">
	        <td width="20%" style="vertical-align: middle;"> 
		        <c:if test="${cdto.pamount==0 }">
		        	<input type="checkbox" name="model" class="model1" value="${cdto.model }" onclick="nocheck();" disabled="disabled">
		        </c:if>
	        	<c:if test="${cdto.pamount!=0 }">
		        	<input type="checkbox" name="model" class="model checkAll" value="${cdto.model }" checked="checked">
		        </c:if>
	        	<img src="${imagePath }/${cdto.img }"
	        		style="width:100px; padding-left: 30px;padding-top: 10px;padding-bottom: 10px;">
	        </td>
	        <td width="10%" style="vertical-align: middle;text-align: left;">
	        	<%-- ${cdto.company } --%>
	        	<c:if test="${cdto.company eq '구글' }">
		        	<img src="${iconPath }/googleIcon.png" width="22px">
		        </c:if>
	        	<c:if test="${cdto.company eq '애플' }">
		        	<img src="${iconPath }/appleIcon.png" width="25px">
		        </c:if>
	        </td>
	        <td width="70%" class="td">
		        <table>
		        	<tr style="border-bottom: 1px solid #D5D5D5;">
		        		<td width="50%" style="vertical-align: middle;font-weight: bold;text-align: left;padding-top:12px;padding-bottom:12px;">${cdto.pname }</td>
		        		
		        		<td width="5%"></td>
		        		
		        		<td width="10%">￦${cdto.price}</td>
		        		
		        		<td width="10%"></td>
		        		
		        		<td width="5%">
		        		
			        		<c:if test="${cdto.pamount==0 }">
					        	<input type="number" style="width: 10px" name="amount" value="${cdto.amount}" min="1" disabled="disabled"/>
					        	<input class="w3-input w3-border" type="number" value="${cdto.amount}" name="amount" min="1" style="width: 50px" disabled="disabled"/>  
					        	<input type="hidden" name="cartNoInList" value="${cdto.cartNo}"/>
					        </c:if>
					        <c:if test="${cdto.pamount!=0 }">
					         	<input class="w3-input w3-border" type="number" value="${cdto.amount}" name="amount" min="1" style="width: 50px"/>  
					        	<input type="hidden" name="cartNoInList" value="${cdto.cartNo}"/>
					        </c:if>
			        	</td>
			        	
		        		<td width="30%" align="right" class="total_price" style="font-weight: bold;"> 
				        	<c:if test="${cdto.pamount==0 }">
				        	￦<fmt:formatNumber>0</fmt:formatNumber>
				        	</c:if>
					        <c:if test="${cdto.pamount!=0 }">
					        ￦${cdto.price * cdto.amount}
					        </c:if>
			        	</td>
		        	</tr>
		        	
		        	<tr>
		        		<td style="font-size: 9pt;color: #747474; text-align: left;">배송: 
		        			<c:if test="${cdto.pamount==0 }">
			        		재고없음
			        		</c:if>
			        		<c:if test="${cdto.pamount!=0 }">
			        		재고있음
			        		</c:if>
			        	</td>
		        		<td colspan="4"></td>
		        		<td>
			        			<a class="del_button" style="font-size: 10pt;color: #4374D9;cursor: pointer;" >삭제</a>
		  	       				<input type="hidden" name="cartNo" value="${cdto.cartNo}"/>
						</td>
		        	</tr>
		        	<tr>
		        		<td style="font-size: 9pt; color: #747474; text-align: left;">
		        			픽업: 오늘, 위치: Apple 가로수길
		        		</td>
		        		<td colspan="3"></td>
		        		<td colspan="2" style="font-size: 9pt;color: #BDBDBD;text-align: right;">
		        		제품번호: ${cdto.model }
		        		</td>
		        	</tr>
		        </table>
	        </td>
	      </tr>
	    </c:forEach>
	    </tbody>
	    </table>
	    <table class="table">
			<tr align="right">
				<td style="text-align:left;font-size: 9pt;">
				 *배송 및 픽업 옵션은 결제 시 선택할 수 있습니다.
				 <br/><br/><br/>
				 <a onclick="deleteAll();" style="font-size: 8pt;cursor: pointer;color: blue;">전체삭제</a>
				</td>
				
				<td style="font-weight: bold;font-size: 12pt;">
					<table style="text-align: right;" cellspacing=0>
						<tr style="font-size: 9pt;color: #747474;">
							<td width="30%">장바구니 소계</td>
							<td width="10%"></td>
							<td width="60%">
								￦<span class="pay">0</span>
							</td>
						</tr>
						<tr height="5px"></tr>
						<tr style="font-size: 9pt;color: #00A500;">
							<td width="30%">무료 배송</td>
							<td width="10%"></td>
							<td width="60%">
								￦0
							</td>
						</tr>
						<tr style="padding: 0px;">
							<td colspan="3" style="position: top;"><hr></td>
						</tr>
						<tr style="text-align: right;">
							<td style="font-size: 11pt;" width="20%">
								합계
							</td>
							<td colspan="2" width="80%" style="font-size: 12pt; font-weight: bold;">
								￦<span class="pay">0</span>
							</td>
						</tr>
						<tr height="20px"></tr>
						<tr>
							<td colspan="4" align="right">
								<img src="${buttonPath}/button_buy.png" value="구매하기" onclick="payIt();" style="cursor: pointer;"/>
								<input type="hidden" value="${sessionScope.info.id}" name="loginID"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
	  </table>
	  
	</form>
	</div>
 


</body>
</html>
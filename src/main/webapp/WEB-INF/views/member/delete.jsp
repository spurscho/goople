<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">

	table{
	text-align: center;	
	margin-left: auto;
	margin-right: auto;
    border: 1px solid grey;
    border-style: round;
    border-image:outset;
    padding: 25px;
    height: 200px;
	}
	
	td,tr{
	text-align: left;
	}
	
	form{
	text-align: center;
	}
	
	div.relative {
    position: relative;
    left: 450px;
    border: 3px solid white;
	}
	
</style>
	
<script type="text/javascript">

//120919 win8 이슈 대응 : capslock 자동설정해제
document.msCapsLockWarningOff = true;
function setContainerHeight(height) {}
function clearDocs(){}

window.onload = changeContentSize; // Window 창 로드시
window.onresize = changeContentSize; // Window 창 크기를 조정할때마다
$("#content").resize(changeContentSize);



</script>


<jsp:include page="../main/header.jsp" flush="false"/>
</head>
<body>


<form action="/goople/member/delete" method="post">
<br/>
<br/>
<br/>
<br/>

<div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">WITHDRAWAL </h4>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well" style="width: 530px;">
				          <h2>비밀번호 재확인</h2>
				          탈퇴 후 모든 회원정보 및 개인형 서비스 기록은 삭제됩니다.<br/>
				          삭제 후 데이터는 복구되지 않으며  서비스 이용기록와 앞으로의<br/>
				          서비스 이용기 어려운 점 양해부탁드립니다.        
      				 </div>
      				 
      				 <div class="form-group">
                                  <label for="username" class="control-label"  style="width: 450px;">&nbsp;E-MAIL &nbsp;&nbsp;
                                 메일 계정 및 보관중인 메일 삭제  </label>
                                  <span class="help-block"></span>
                     </div>
                     
                      <div class="form-group">
                                  <label for="username" class="control-label"  style="width: 450px;">&nbsp;주문목록 &nbsp;&nbsp;
                                 	주문 제품과 구매한 상품 관련된 모든 정보 삭제  </label>
                                  <span class="help-block"></span>
                     </div>
                     
                      <div class="form-group">
                                  <label for="username" class="control-label"  style="width: 450px;">&nbsp;장바구니 &nbsp;&nbsp;
                                 	최근 본 상품 구매한 상품 관련된 모든 정보 삭제</label>
                                  <span class="help-block"></span>
                     </div>
      				 
      				  <div class="form-group">
                                  <label for="username" class="control-label"  style="width: 450px;">&nbsp;기타 &nbsp;&nbsp;
                                   아이디에 연계된 개인적 영역의 정보 및 게시물 삭제  </label>
                                  <span class="help-block"></span>
                     </div>                  
                   
				      <div class="well" style="width: 530px;">
				      
				      	<p class="contxt">안전한 GOOPLE 사용을 위해 비밀번호를 다시 한 번 입력해주세요.
						<br>비밀번호 재확인 입력
						<br><span class="txt_id">${sessionScope.info.id} 님</span></p>									
						<p class="spc_row2">
								<label id="lb_pwd" for="upw">비밀번호
								<input type="password" id="pwd" name="pwd"  class="form-control"  style="width: 200px"/></label>
						</p>
								<input type="submit"  class="btn btn-default btn-block" style="width: 150px; display: block; margin: 0 auto;" value="탈퇴하기"/>								               
      				 </div>     				 
				  </div>
			   </div>
		  </div>
	  </div>
</div>
	
</form>
</body>
</html>
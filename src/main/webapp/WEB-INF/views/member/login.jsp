<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">

	table{
	text-align: center;	
	margin-left: auto;
	margin-right: auto;
    border: 2px solid grey;
    border-style: outset;
    border-image:outset;
    padding: 40px;
    height: 200px;    
	}	
	
	tr{
	text-align: left;		
	}	
	
	form{
	text-align: center;	
	}
	
</style>
<jsp:include page="../main/header.jsp" flush="false"/>
</head>
<body>
<script type="text/javascript">

$(document).ready(function(){
	var btn = $('#lock');
	
	btn.click(function(){
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		console.log(id);
		
		$.ajax({
			url:'/goople/member/lch',
			type:'POST',
			data:{'id':id, 'pwd':pwd}
		})
		.done(function(result){
			if(result!=""){
				alert('로그인되었습니다');					
				location.href="/goople/";
			}else{
				alert('아이디 혹은 패스워드를 확인해주세요.');
			}			
		})
		.fail(function(err){
			alert(err);
			console.log(err);
		});		
	});
});
	
window.onload = changeContentSize; // Window 창 로드시
window.onresize = changeContentSize; // Window 창 크기를 조정할때마다
$("#content").resize(changeContentSize);

</script>

<h3>로그인</h3>
<br/>
<br/>
<br/>
<br/>
<br/>
<!-- <form action="/goople/member/login"  method="post"> -->
<form>
<!-- <button type="button"  id="lock"  class="cla" >로그인</button> -->

<!------ Include the above in your HEAD tag ---------->
    <div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">Login </h4>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well">
                          <form id="loginForm" method="POST" action="/login/" novalidate="novalidate">
                              <div class="form-group">
                                  <label for="username" class="control-label">Username</label>
                                  <input type="text" class="form-control" id="id" name="id" title="Please enter you username" placeholder="ID를 입력하세요">
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                  <input type="password" class="form-control" id="pwd" name="pwd" title="Please enter your password" placeholder="PWD를 입력하세요">
                                  <span class="help-block"></span>
                              </div>
                              <div id="loginErrorMsg" class="alert alert-error hide">Wrong username og password</div>
                              <button type="button" id="lock" class="btn btn-default btn-block" >Login</button>
                              	<p style="padding-top: 20px;text-align: left;"><a href='/goople/member/id' style="font-size: 10pt;">ID를 잊어버리셨나요?</a></p>
                              	<p style="text-align: left;"><a href='/goople/member/pwd' style="padding-top: 10px;font-size: 10pt;text-align: left;">PWD를 잊어버리셨나요?</a></p>
                          </form>
                      </div>
                  </div>
                  <div class="col-xs-6">
                      <p class="lead" style="font-size: 14pt;text-align: left;">다음과 같은 다른 Goople 서비스를 위해 Goople ID를 사용할 수 있습니다.</p>
                      <ul class="list-unstyled" style="line-height: 2;text-align: left;">
                          <li><span class="fa fa-check text-success"></span> Apple Store</li>
                          <li><span class="fa fa-check text-success"></span> Apple 제품</li>
                          <li><span class="fa fa-check text-success"></span> Google Store</li>
                          <li><span class="fa fa-check text-success"></span> Google 제품</li>
                      </ul>
                      <p style="padding-top: 20px;"><a href="/goople/member/join" style="font-size: 10pt;color: blue;">Gopple ID가 없으신가요? 지금 생성.</a></p>
                  </div>
              </div>
          </div>
      </div>
  </div>
 </form>
</body>
</html>
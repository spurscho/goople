<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript"
src="https://code.jquery.com/jquery-3.3.1.min.js"
integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
crossorigin="anonymous">
</script>
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
	
	$('#pwdco').click(function(){
		var id = $('#id').val();
		var name = $('#name').val();
		
		console.log(id);
		console.log(name);
		
		$.ajax({
			url:'/goople/member/pwd',
			type:'POST',
			data:{'id':id, 'name':name}		
	})
	.done(function(result){
		if(result!=""){
			alert(result + '입니다');
			location.href="login";
		}else{
			alert('일치하는 정보가 없습니다.');
		}		
	})
	.fail(function(err){
			console.log(err);	
		});
	});
});


</script>

<form>
<table style="width: 600px;">
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<!------ Include the above in your HEAD tag ---------->
    <div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">Login </h4>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well" style="width: 540px;">
                          <form id="loginForm" method="POST" action="/login/" novalidate="novalidate">
                              <div class="form-inline form-group" >
                                  <label for="username" class="control-label">ID</label>
                                  <div class="col-sm-20">
                                  <input type="text" class="form-control" id="id" name="id" title="Please enter you username" placeholder="ID를 입력하세요" style="width: 350px;"/>
                                  </div>
                                  <span class="help-block"></span>
                              </div>
                              
                              <div class="form-inline form-group" >
                                  <label for="username" class="control-label">USERNAME</label>
                                  <div class="col-sm-20">
                                  <input type="text" class="form-control" id="name" name="name" title="Please enter you username" placeholder="이름을 입력하세요" style="width: 350px;"/>
                                  </div>
                                  <span class="help-block"></span>
                              </div>                                                            
                           </form>
                        </div>
                     </div>
                  </div>
                  <button type="button" id="pwdco"  class="btn btn-default btn-block"  style="width: 200px; display: block; margin: 0 auto;"  name="name">패스워드 찾기</button>
					&nbsp;&nbsp;&nbsp;&nbsp;<a href='/goople/member/login' class="btn btn-default btn-block"  style="width: 200px; display: block; margin: 0 auto;"  name="name">로그인</a>	
                  
            </div>
        </div>
     </div>
</table>
</form>
</body>
</html>
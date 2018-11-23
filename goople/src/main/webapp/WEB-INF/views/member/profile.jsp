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
<title>Insert title here</title>
<style type="text/css">

	table{
	text-align: center;	
	margin-left: auto;
	margin-right: auto;
    border: 1px solid grey;
    border-style: round;
    border-image:outset;
    padding: 40px;
    height: 200px;
	}	
	
	td,tr{
	text-align: left;
	}
	
	form{
	text-align: center;
	}


</style>

<script type="text/javascript">

window.onload = changeContentSize; // Window 창 로드시
window.onresize = changeContentSize; // Window 창 크기를 조정할때마다
$("#content").resize(changeContentSize);

</script>
<jsp:include page="../main/header.jsp" flush="false"/>
</head>
<body>

<br/>
<br/>
<br/>
<br/>
<br/>

<form action="/goople/member/update" method="get" >
<table  style="width: 1000px">

<!--  <table width="1000" border="2" bordercolor="#EAEAEA"
			style="border-width: 1px;" cellpadding="1" cellspacing="0">  -->
			
<!------ Include the above in your HEAD tag ---------->		
<div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">MY FROFILE </h4>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well" style="width: 530px;">
                      	<form>
                              <div class="form-group">
                                  <label for="username" class="control-label">ID</label><br/>
                                 ${sessionScope.info.id}
                                  <span class="help-block"></span>
                              </div>
                      
					 		  <div class="form-group">
                                  <label for="username" class="control-label">NAME</label><br/>
                                 ${sessionScope.info.name}
                                  <span class="help-block"></span>
                       		  </div>
		
		   				      <div class="form-group">
                                  <label for="username" class="control-label">E-MAIL</label><br/>
                                 ${sessionScope.info.emailid}@${sessionScope.info.emailad}
                                  <span class="help-block"></span>                      		
                 		      </div>
		   
		   				      <div class="form-group">
                                  <label for="username" class="control-label">PHONE NEMBER</label><br/>
                                  ${sessionScope.info.phone}
								 -${sessionScope.info.phone1}
		                         -${sessionScope.info.phone2}
                                  <span class="help-block"></span>
                       	      </div>
			
							  <div class="form-group">
                                  <label for="username" class="control-label">ADDRESS</label><br/>
                                  ${sessionScope.info.zipcode}		
								&nbsp;-&nbsp;
								  ${sessionScope.info.address}
									&nbsp;
								  ${sessionScope.info.address1}
									&nbsp;
								  ${sessionScope.info.address2}
								  ${sessionScope.info.address3}
                                  <span class="help-block"></span>
                       		  </div>
					</form>
				</div>
			</div>			
	      </div>
	      <input type="submit" class="btn btn-default btn-block"  value="수정하기"   style="width: 200px; display: block; margin: 0 auto;"/>  
	      <button type="button" class="btn btn-default btn-block" onclick="window.location='/goople/member/delete';" style="width: 200px; display: block; margin: 0 auto;">탈퇴하기</button>
        </div>
     </div>
   </div>
  </table>

<br/>
<br/>
<br/>
<br/>




</form>





</body>
</html>
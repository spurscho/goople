<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>회원정보 수정</title>
<style type="text/css">

	table{
	text-align: center;	
	margin-left: auto;
	margin-right: auto;
    border: 1px solid black;
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
	
	input {
	vertical-align: center;
	
	}

</style>

<script type="text/javascript" src="/springwebmybatis/resources/js/util.js"></script>

<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>

<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<script type="text/javascript">   //우편번호 검색

	function openDaumZipAddress() {

		new daum.Postcode({

			oncomplete:function(data) {

				jQuery("#zipcode").val(data.postcode1);

				jQuery("#address").val(data.postcode2);

				jQuery("#address1").val(data.zonecode);
				
				jQuery("#address2").val(data.address);

				jQuery("#address3").focus();

				console.log(data);

			}

		}).open();

	}
	
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
    <br/>
    <br/>
    <br/>
	<form action="/goople/member/update" method="post">
	
<!-- 	<table style=" width: 1000"  border="2"  bordercolor="#EAEAEA"  style="border-width: 1px"  cellpadding="1"  cellspacing="0"> -->
	<table  style="width: 1200px">
<!------ Include the above in your HEAD tag ---------->
<div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">UPDATE </h4>
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
                              
                              <div class="form-inline form-group" >
                                  <label for="username" class="control-label">PASSWORD</label><br/>
                                   <div class="col-sm-20">
                                  <input type="password"  name="pwd" class="form-control" placeholder="비밀번호" value="${dto.pwd }"  maxlength="30"  style="width: 230px;"/>
                                  </div>
                                  <span class="help-block"></span>
                              </div>
                              
                               <div class="form-inline form-group" >
                                  <label for="username" class="control-label">NAME</label>
                                  <div class="col-sm-20">
                                  <input type="text"  name="name" class="form-control" placeholder="이름" value="${dto.name }"  maxlength="20" style="width: 230px;"/>
                                  </div>
                                  <span class="help-block"></span>
                              </div>
                              
                               <div class="form-inline form-group" >
                                  <label for="username" class="control-label">E-MAIL</label><br/>
                                  <div class="col-sm-20">
                                  <input type="text"  name="emailid" class="form-control" placeholder="ID"  value="${dto.emailid }"  maxlength="50"  style="width: 130px;"/> @
					              <input type="text"  name="emailad" class="form-control" placeholder="메일주소"  value="${dto.emailad }"  maxlength="50"  style="width: 260px;"/>
                                  </div>
                                  <span class="help-block"></span>
                              </div>
                              
                                <div class="form-inline form-group" >
                                  <label for="username" class="control-label">PHONE NEMBER</label><br/>
                                  <div class="col-sm-20">
                                 <select style="height: 16pt;" name="phone">
									<option class="form-control" style="width: 60px;">선택</option>
									<option>SKT</option>
									<option>LG</option>
									<option>KT</option>
								</select>									
									<input type="text" name="phone" class="form-control"  value="${dto.phone }"  style="width: 100px;"/>
									 - <input type="text" name="phone1" class="form-control"  value="${dto.phone1 }"  style="width: 100px;"/>
									 -	<input type="text" name="phone2"  class="form-control"  value="${dto.phone2 } "  style="width: 100px;"/>		                               	
                                 </div>
                                 <span class="help-block"></span>
                             </div>
                             
                              <div class="form-inline form-group" >
                                  <label for="username" class="control-label">ADDRESS</label><br/>
                                  <div class="col-sm-20">
                                  <input id="zipcode" name="zipcode"  type="text"  class="form-control"  value="${dto.zipcode }" style="width:70px;" readonly/>
									&nbsp;-&nbsp;					
								   <input id="address"  name="address"  type="text" class="form-control"   value="${dto.address }" style="width:70px;" readonly/>					
									&nbsp;&nbsp;					
								   <input id="address1"  name="address1"  type="text" class="form-control"   value="${dto.address1 }" style="width:70px;" readonly/>				
									&nbsp;		
									<input type="button" onClick="openDaumZipAddress();" class="form-control" style="width:80px;" value = "주소 찾기" />					
									<br/>					
									<input id="address2"  name="address2"  type="text"  class="form-control"   value="${dto.address2 }" style="width:200px;" readonly/>					
									<input id="address3"  name="address3"  type="text"  class="form-control"   value="${dto.address3}" style="width:200px;" size=""/>																	
                                   </div>
                                  <span class="help-block"></span>
                              </div>                             
                        </form>
                      </div>
                   </div>
                </div>                      
        <input type="submit"  class="btn btn-default btn-block"  style="width: 200px; display: block; margin: 0 auto;" value="수정하기"/>
                   </div>              
      </div>
</div>
	</table>	
			<!-- 	<input type="button" onClick="javascript:location.href='delete'" value = "탈퇴하기" />   -->		
</form>
	

	

</body>
</html>
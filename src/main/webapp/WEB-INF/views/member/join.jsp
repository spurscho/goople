<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/goople/resources/member/data/css/radio_button.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>회원가입</title>
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">   //우편번호 검색

	function openDaumZipAddress() {

			new daum.Postcode({

				oncomplete:function(data) {

					jQuery("#address").val(data.postcode1);

					jQuery("#zipcode").val(data.zonecode);

					jQuery("#address1").val(data.postcode2);
					
					jQuery("#address2").val(data.address);

					jQuery("#address3").focus();

					console.log(data);

				}

			}).open();

		}
	
	function showPopup() {
		window.open("terms", "약관호출", "width=650, height=680, left=500, top=50"); 
		
	}
		  
	</script>
</head>

<body>
<jsp:include page="../main/header.jsp" flush="false"/>
<script type="text/javascript">


$(document).ready(function(){
	var btn = $('#idck');
	
	btn.click(function(){
		var id = $('#id').val();
		console.log(id);
		
		$.ajax({
			url: '/goople/member/ajax',
			type:'POST',
			data:{'id':id}
		})
		.done(function(result){
			if(result==''){
				alert('사용가능합니다');
			}else{
				alert('이미 사용중인 아이디 입니다.');
			
			}
		})
		.fail(function(err){
			console.log(err);
		});
	});
});

</script>




<form action="/goople/member/join" method="post" name="myForm" >
<div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
            	<br/><br/><br/><br/><br/><br/><br/>
                    <fieldset>
                        <legend>Account Details</legend>

                        <div class="form-group col-md-8">
                            <label for="">아이디</label>
                            <input type="text" class="form-control" name="id" id="id" placeholder="아이디" required="required">
                        </div>
                        <div class="form-group col-md-1">
                            <label for="">&nbsp;</label>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="">&nbsp;</label>
                            <button type="button" class="form-control" id="idck"  class="cla" >중복체크</button>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <label for="password">비밀번호</label>
                            <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호" required="required">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="confirm_password">비밀번호 확인</label>
                            <input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="비밀번호 확인" required="required">
                        </div>
                        
                        <div class="form-group col-md-6">
                            <label for="">이름</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="이름" required="required">
                        </div>
                        
                        <div class="form-group col-md-2">
                            <label for="">생년</label>
                            <input type="" class="form-control" name="birth" id="birth" placeholder="" required="required">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">월</label>
                            <input type="" class="form-control" name="birth1" id="birth1" placeholder="" required="required">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">일</label>
                            <input type="" class="form-control" name="birth2" id="birth2" placeholder="" required="required">
                        </div>
                        
                        <div class="form-group col-md-12" align="center">
                       		 <label style="">&nbsp;</label><br/>
                             <div class="pretty p-default p-round p-smooth">
						        <input type="radio"  name="gender" value="남자" checked="checked" required="required"/>
						        <div class="state p-primary">
						            <label>남자</label>
						        </div>
					    	</div>
                            <div class="pretty p-default p-round p-smooth">
						        <input type="radio"  name="gender" value="여자" required="required"/>
						        <div class="state p-primary">
						            <label>여자</label>
						        </div>
					    	</div>
                        </div>

                        <div class="form-group col-md-5">
                            <label for="">이메일</label>
                            <input type="text" class="form-control" name="emailid" id="emailid" placeholder="Email id" required="required">
                        </div>
                        
                        <div class="form-group col-md-1">
                        	<label for="">&nbsp;</label>
                        	<p style="font-size: 15pt;">@</p>
                        </div>
                       
                        <div class="form-group col-md-6">
                            <label for="">&nbsp;</label>
                            <input type="text" class="form-control" name="emailad" id="emailad" placeholder="goople.com" required="required">
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Optional Details</legend>
                        
                         <!-- <div class="form-group col-md-12">
                            <label for="">생년월일</label>
                            <input type="" class="form-control" name="" id="" placeholder="">
                        </div> -->
                        
                        <div class="form-group col-md-3">
                            <label for="">우편번호</label>
                            <input type="text" class="form-control" name="address" id="address" placeholder="" readonly> 
                        </div>
                        
                        <div class="form-group col-md-3">
                            <label for="">&nbsp;</label>
                            <input type="text" class="form-control" name="address1" id="address1" placeholder="" readonly>
                        </div>
                        
                        <div class="form-group col-md-3">
                            <label for="">&nbsp;</label>
                            <input type="text" class="form-control" name="zipcode" id="zipcode" placeholder="" readonly>
                        </div>
                        
                        <div class="form-group col-md-1">
                            <label for="">&nbsp;</label>
                        </div>
                        
                        <div class="form-group col-md-2" align="center">
                            <label for="">&nbsp;</label>
                            <input type="button" onClick="openDaumZipAddress();" value = "주소찾기" class="form-control" required="required"/>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <label for="">주소</label>
                            <input type="text" id="address2" name="address2" class="form-control" readonly required="required"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">상세 주소</label>
							<input type="text" id="address3" name="address3" class="form-control" required="required" required="required"/>
                        </div>
                        
                        <div class="form-group col-md-3">
                            <label for="">연락처</label>
                            <select class="form-control" name="" >
                                <option>선택</option>
                                <option>SKT</option>
                                <option>KT</option>
                                <option>LG</option>
                                <option>알뜰폰</option>
                            </select>
                        </div>
                        
                        <div class="form-group col-md-2">
                            <label for="">&nbsp;</label>
                            <input type="text" class="form-control" name="phone" id="phone" required="required">
                        </div>
                        
                        <div class="form-group col-md-1">
                         	<label for="">&nbsp;</label>
                        	<p style="font-size: 15pt;">-</p>
                        </div>
                       
                        <div class="form-group col-md-2">
                            <label for="">&nbsp;</label>
                            <input type="" class="form-control" name="phone1" id="phone1" required="required">
                        </div>
                        
                        <div class="form-group col-md-1">
                        	<label for="">&nbsp;</label>
                        	<p style="font-size: 15pt;">-</p>
                        </div>
                       
                        <div class="form-group col-md-3">
                            <label for="">&nbsp;</label>
                            <input type="" class="form-control" name="phone2" id="phone2" required="required">
                        </div>
                        
                        <!-- 
                        <div class="form-group col-md-12 hidden">
                            <label for="specify">Please Specify</label>
                            <textarea class="form-control" id="specify" name=""></textarea>
                        </div> -->
                    </fieldset>

                    <div class="form-group">
                        <div class="col-md-12" align="center">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"  name="agreecheckbox"  value="동의" >
                                    가입에 동의합니다. &nbsp;&nbsp;
                                    <a style="colors: blue;font-size: 9px;" onclick="showPopup();">가입 약관</a>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12" align="center" style="padding-left: 120px;">
                            <button type="submit" class="btn btn-link" value="회원가입 완료" name="cha">
								  <img src="../resources/member/img/button/join.png"/>                         
                            </button>
                            <span><a href="./login" style="colors: blue; font-size: 9px;">이미 계정을 갖고있으십니까?</a></span>
                        </div>
                    </div>
                    
            </div>
        </div>
    </div>
</form>

</body>
</html>
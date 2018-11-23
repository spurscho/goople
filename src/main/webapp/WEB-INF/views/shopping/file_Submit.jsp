<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="500" color="green">
		<h2>상품정보등록</h2>
		<hr width="500" color="green">
		<!--  상품정보 등록하는페이지 /admin으로 로그인했을때만 등록가능하도록 설계해야함 -->
		<form action="fileUpload.action" method="post" enctype="multipart/form-data">
			<div align="left" style="padding-left: 42%;">
				상품 회사: <input type="radio" name="company" value="애플" checked="checked" />
				애플 &nbsp; <input type="radio" name="company"value="구글" />구글<br/><br/> <br/> 
				상품종류 : <input type="text" name="pname"><br/> <br/><br/>  
				상품가격: <input type="text" name="price"><br/> <br/> <br/>  
				상품설명제목: <input type="text" name="subject"><br/> <br/><br/>  
				상품설명내용: <input type="text" name="content" 
					style="text-align:center; width:200px; height:50px; letter-spacing: -5px"><br/> <br/> <br/> 
				상품재고: <input type="text" name="pamount"><br/> <br/> <br/> 
				상품판매상태: 
				<select name="pstate">
					<option>준비중</option>
					<option>판매중</option>
					<option>품절</option>
				</select><br /><br/> <br/> 
				상품 이미지파일 : <input type="file" name="file"> <br /><br/> <br/> 
				모델명: <input type="text" name="model"><br /> <br/> <br/> 
				크기: <input type="text" name="psize"><br /> <br/> <br/> 
				사양: <input type="text" name="spec"><br /> <br/> <br/> 
				비고: <input type="text" name="etc"><br /> <br/> <br/> 
				<input type="submit" value="전송" /><br/> 
			</div>
		</form>
	</div>
</body>
</html>
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
		<form action="modelUpload_ok" method="post" enctype="multipart/form-data">
		<div align="left" style="padding-left: 42%;">
		
		상품가격: <input type="text" name="dprice"><br/>
		상품설명제목: <input type="text" name="dsubject"><br/>
		상품설명내용: <input type="text" name="dcontent"><br/>
		상품재고: <input type="text" name="damount"><br/>
		상품 이미지파일 : <input type="file" name="file"> <br/>
		상품모델: <input type="text" name="dmodel"><br/>
		상품사양: <input type="text" name="dspec"><br/>
		상품사이즈:	<input type="text" name="dsize"><br/>
		상품비고:	<input type="text" name="detc"><br/>
		<input type="hidden" name="dstate" value="${dstate} "><br/>
		<input type="hidden" name="dsellcount" value="0"/>
		<input type="hidden" name="dname" value="${dname }" ><br/>
		<input type="hidden" name="dcompany" value="${dcompany }"><br/>
		<input type="submit" value="전송"/>
		</div>
		</form>
	
	</div>

</body>
</html>
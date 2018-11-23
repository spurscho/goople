<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	table{
	text-align: center;	
	margin-left: auto;
	margin-right: auto;
	}	


</style>

<jsp:include page="../main/header.jsp" flush="false"/>
</head>
<body>



로그인 성공<br/>

${sessionScope.info.name}님 방가방가.<br/>




</body>
</html>
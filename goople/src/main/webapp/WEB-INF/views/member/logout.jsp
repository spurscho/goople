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









</body>
</html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Bootstrap -->
<link rel="stylesheet" href="/goople/resources/css/kfonts2.css" type="text/css"/>
<link rel="stylesheet" href="/goople/resources/css/bootstrap.min.css" type="text/css"/>
 

<%-- <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src='<c:url value="/jquery/jquery-1.11.3.min.js" />'></script> --%>

<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="/goople/resources/js/bootstrap.min.js"></script>

<title>고객센터</title>

</head>
<body>
<jsp:include page="../main/header.jsp" flush="false"/>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="container">
  <form action="${pageContext.request.contextPath}/mail/mailSending" method="post">
    <div align="center"><!-- 고객메일주소 -->
       <input type="text" name="tomail" size="120" style="width:60%" placeholder="문의 내용 받으실 EMAIL" class="form-control" >
    </div>
    
    <div align="center" st><!-- 제목 -->
       <input type="text" name="title" size="120" style="width:60%" placeholder="제목" class="form-control" >
    </div>
    <p>
    <div align="center"><!-- 내용 --> 
      <textarea name="content" cols="120" rows="12" style="width:60%; resize:none" placeholder="문의 내용을 입력해주세요" class="form-control"></textarea>
    </div>
    <p>

    <div align="center">
      <input type="submit" value="메일 보내기" class="btn btn-warning">
    </div>
  </form>
</div>
</body>
</html> 
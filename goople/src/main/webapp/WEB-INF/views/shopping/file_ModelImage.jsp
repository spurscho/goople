<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/goople/resources/shopping/data/style.css"
	type="text/css" />
<link rel="stylesheet"
	href="/goople/resources/shopping/data/article.css" type="text/css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Goople Article</title>

<!-- Bootstrap core CSS -->
<link
	href="/goople/resources/shopping/data/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/goople/resources/shopping/data/shop-item.css"
	rel="stylesheet">
</head>
<body>
<jsp:include page="../main/header.jsp" flush="false"/>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<script type="text/javascript">
		$(function() {
			var $win = $(window);
			var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.

			/*사용자 설정 값 시작*/
			var speed = 300; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
			var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
			var $layer = $('#floatMenu'); // 레이어 셀렉팅
			var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px
			$layer.css('position', 'absolute');
			/*사용자 설정 값 끝*/

			// 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
			if (top > 0)
				$win.scrollTop(layerTopOffset + top);
			else
				$win.scrollTop(0);

			//스크롤이벤트가 발생하면
			$(window).scroll(function() {
				yPosition = $win.scrollTop() + 300;
				if (yPosition < 0) {
					yPosition = 0;
				}
				$layer.animate({
					"top" : yPosition
				}, {
					duration : speed,
					easing : easing,
					queue : false
				});
			});
		});
	</script>
	<!-- Navigation -->
	<div class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Goople</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="floatMenu" id="floatMenu">
					<c:set var="i" value="1" />
					<c:forEach items="${lists }" var="dto">
						<c:choose>
							<c:when test="${i == 1 }">
								<a href="#" class="list-group-item active">${dto.dmodel  }</a>
								<!-- 하이퍼링크 searchValue 포함해서주기  -->
							</c:when>

							<c:otherwise>
								<a href="#" class="list-group-item">${dto.dmodel }</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>
			<div class="col-lg-9">
				<div>
					<h1 class="my-4" align="center">Goople</h1>
				</div>
				<div class="card mt-4">
					<img class="card-img-top img-fluid"
						src="${imagePath }/${dto.dimg }" alt="">
					<div class="card-body">
						<h3 class="card-title">제품명 : ${dto.dname }</h3>
						<h4>가격 : ${dto.dprice }</h4>
						<p class="card-text">제품소개 : ${dto.dcontent }</p>
					</div>
				</div>
				<div class="card card-outline-secondary my-4">
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	<!-- /.container --> </footer>

	<!-- Bootstrap core JavaScript -->
	<script src="/goople/resources/shopping/data/jquery/jquery.min.js"></script>
	<script
		src="/goople/resources/shopping/data/bootstrap/js/bootstrap.bundle.min.js"></script>


	<%-- <div id="bbs">
	<div id="bbs_title">
	게 시 판(Spring 3.0)
	</div>
	<div id="bbsArticle">
		<div id="bbsArticle_header">
			${dto.dsubject }
		</div>
		
		<div class="bbsArticle_bottomLine">
			<dl>
				<dt>작성자</dt>
				<dd>${dto.dname }</dd>
				<dt>줄수</dt>
				<dd>${lineSu }</dd>
			</dl>		
		</div>
		
		<div class="bbsArticle_bottomLine">
			<dl>
			</dl>		
		</div>
		
		<div id="bbsArticle_content">
			<table width="600" border="0">
			<tr><td style="padding: 20px 80px 20px 62px;" valign="top" height="200">
			${dto.dcontent }
			</td></tr>		
			</table>			
		</div>	
	</div>

	<div class="bbsArticle_noLine" style="text-align: right;">
	</div>
	
	<div id="bbsArticle_footer">
	
		<div id="leftFooter">	
		
		<input type="button" value=" 수정 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/updated.action?pnum=${dto.dnum}&pageNum=${pageNum}'"/>
		<input type="button" value=" 삭제 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/deleted.action?pnum=${dto.dnum}&pageNum=${pageNum}'"/>
		</div>		
		<div id="rightFooter">
		<input type="button" value=" 리스트 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/fileImage.action?${params}'"/>
		</div>	
		
	</div>
</div>
 --%>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


</body>
</html>





































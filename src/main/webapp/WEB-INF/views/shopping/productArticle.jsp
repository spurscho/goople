<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="/goople/resources/shopping/data/style.css?ver=1" type="text/css" />
<link rel="stylesheet"
	href="/goople/resources/shopping/data/article.css" type="text/css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link
	href="/goople/resources/shopping/data/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/goople/resources/shopping/data/shop-item.css"
	rel="stylesheet">
	
<!-- Button style for this template -->
<link href="/goople/resources/shopping/data/button.css" rel="stylesheet">

</head>
<body>
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

<script>
	    $(document).ready(function(){
	        //button1은 1mm버튼  , button2는 2mm버튼
	    	var btn1 = $('#button1');
	        var btn2 = $('#button2');
	        var cartbutton = $('#cartbutton');
	        
	
	        btn1.click(function(){
	            var dsize1 = $('#dsize1').val();
	            var models = $('#models').val();
	            var addCart = '0';
	            
	            $.ajax({
	                url: '../shopping/ajax',
	                type: 'GET',
	                data : {'data' : dsize1,'models' : models , 'addCart' : addCart}
	            })
	            .done(function(result){
	            	/* if(result == null){
	            		// id 사용 가능
	            	}else{
	            		// id 사용 불가
	            	} */
            	 //alert(result);
	            	 var showDsize = $('#showDsize').html(dsize1); 
	            })
	            .fail(function(){
	            	alert('fail');
	            });
	        });
	        btn2.click(function(){
	            var dsize2 = $('#dsize2').val();
	            var models = $('#models').val();
	            var addCart = '0';
	            
	            $.ajax({
	                url: '../shopping/ajax',
	                type: 'GET',
	                data : {'data' : dsize2,'models' : models, 'addCart' : addCart}
	            })
	            .done(function(result){
	            	/* if(result == null){
	            		// id 사용 가능
	            	}else{
	            		// id 사용 불가
	            	} */
            	// alert(result);
	            	var showDsize = $('#showDsize').html(dsize2); 
	            	/* var div = $('#div').append('<button>btn</button>'); */
	            })
	            .fail(function(){
	            	alert('fail');
	            });
	        });
	        cartbutton.click(function(){
	            //dsize는 아티클상의 사이즈 id
	        	var dsize3 = document.getElementById('showDsize').innerHTML;
	            var models = $('#models').val();
	            var addCart = '1';
	           
	            $.ajax({
	                url: '../shopping/ajax2',
	                type: 'POST',
	                data : {'data' : dsize3,'models' : models,'addCart' : addCart}
	            })
	            .done(function(result){
	            	/* if(result == null){
	            		// id 사용 가능
	            	}else{
	            		// id 사용 불가
	            	} */
            	// alert(result);
	            	alert('장바구니에 추가되었습니다')
	            	/* var dsize = $('#dsize').html(dsize2); */ 
	            	/* var div = $('#div').append('<button>btn</button>'); */
	            	
	            })
	            .fail(function(){
	            	alert('fail');
	            });
	        });
	    });
	    function addToCart(){
	    	var f = document.myForm;
		    var userId = "${sessionScope.info.id}";
	    	/* alert(userId); */
		    if(userId != null){
		    	f.action = "<%=cp%>/cart/cartInsert.action";
		    	
		    	f.submit();
		    
		    }
	    	else{
	    	
	    	alert("로그인후 장바구니추가가 가능합니다.");
	    	return;
	    	}
	    	
	    }
	</script>

<jsp:include page="/WEB-INF/views/main/header.jsp" />
 
<head>
<link rel="stylesheet"
	href="/goople/resources/shopping/data/style.css?ver=2" type="text/css" />
<link rel="stylesheet"
	href="/goople/resources/shopping/data/article.css" type="text/css" />
	</head>

	<form action="" name="myForm" method="post">
	<!-- Page Content -->
	<div class="container" align="center" style="margin-top: 67px;">
		<div class="row">
			<div class="col-lg-3">
				<div class="list-group">
					<div class="floatMenu" id="floatMenu">
						<c:set var="i" value="1" />
						<c:set var="j" value="${j }" />
						<c:forEach items="${lists }" var="dto">
							<c:choose>
								<c:when test="${models == dto.dmodel }">
									<a href="${articleUrl }&num=${dto.dnum}&models=${dto.dmodel}"
										class="list-group-item active">${dto.dmodel  }</a>
									<input type="hidden" name="modelName" value="${dto.dmodel }"/>
									<!-- 하이퍼링크 searchValue 포함해서주기  -->
								</c:when>
								<c:when test="${i == 1 } && ${models != dto.dmodel }">
									<a href="${articleUrl }&num=${dto.dnum}&models=${dto.dmodel}"
										class="list-group-item active">${dto.dmodel  }</a>
										<input type="hidden" name="modelName" value="${dto.dmodel }"/>
									<!-- 하이퍼링크 searchValue 포함해서주기  -->
								</c:when>
								<c:otherwise>
									<a href="${articleUrl }&num=${dto.dnum}&models=${dto.dmodel}"
										class="list-group-item">${dto.dmodel }</a>
								</c:otherwise>
							</c:choose>
							<c:set var="i" value="${i+1 }" />
						</c:forEach>

					</div>
				</div>
			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">
				<div class="card mt-4" >
					<div style="padding-top: 50px;padding-left: 20px;">
						<div style="text-align: left;">
							<div style="float: right;">
								<img class="card-img-top img-fluid"
									src="${imagePath }/${dto.dimg }" style="height: 380px;width: 380px;">
							</div>
							<h1 class="card-title" style="font-size: 25pt;">${dto.dname }</h1>
							<p style="font-size: 13pt;">￦<fmt:formatNumber>${dto.dprice }</fmt:formatNumber></p>
							<p style="font-size: 10pt;padding-top: 30px;padding-bottom: 0px;">색상</p>
							<img src="${imagePath }/temp/colors.PNG"/>
							<br/><br/>
							<!-- <p style="font-size: 10pt;padding-top: 40px;">크기</p> -->
							<div>
								<!-- <a class="btn" id="button1">
								<input type="hidden" value="1mm" id="dsize1" >1mm
								</a>
								&nbsp;
								<a class="btn" id="button2">
								<input type="hidden" value="2mm" id="dsize2" >2mm
								</a> -->
								<table height="110px">
								<tr>
									<td>
										<table height="110px" style="color: gray;">
											<tr><td><img src="${imagePath }/icon/icon_bubble.PNG"/></td></tr>
											<tr><td style="color: black;">픽업:</td></tr>
											<tr><td>오늘,위치: Apple 가로수길</td></tr>
											<tr><td>&nbsp;</td></tr>
											<tr><td>&nbsp;</td></tr>
										</table>
									</td>
									<td width="15%"></td>
									<td>
										<table height="110px" style="color: gray;">
											<tr><td><img src="${imagePath }/icon/icon_box.PNG"/></td></tr>
											<tr><td style="color: black;">배송:</td></tr>
											<tr><td>재고있음</td></tr>
											<tr><td>무료배송</td></tr>										
											<tr><td><a href="https://service.epost.go.kr/iservice/usr/trace/usrtrc001k01.jsp">배송 일자 확인</a></td></tr>										
										</table>
									</td>
								</tr>
							</table>
							</div>
								<input type="hidden" value="${dto.dmodel }" id="models" >
								<input type="hidden" value="${dto.dsize }" id="dsize" >
								<input type="hidden" name="userId" value="${sessionScope.info.id}"/>
						</div>
					</div>
					<!-- 장바구니 버튼 -->
					<div align="left" style="padding-top: 40px;padding-left: 20px;">
					<c:if test="${!empty sessionScope.info.id}">
						<button onclick="addToCart();"><img src="${imagePath }/button/button_cart.PNG"/></button>
					</c:if>
						<c:if test="${sessionScope.info.id eq 'admin'}">
						<input type="button" value="게시물등록"
				onclick="location.href='http://192.168.16.5:8080/goople/shopping/modelUpload.action?num=${dto.dnum}&models=${dto.dmodel}'" class="btn" 
				style="width: 100px; height: 42px; align-content: center; line-height:30px; right:0; position:relative; " >
						<p align="right">
						<a href="http://192.168.16.5:8080/goople/shopping/deleteModel.action&?num=${dto.dnum}&models=${dto.dmodel}&selected=${dto.dcompany}" class="btn">삭제</a>
						</p>
						</c:if>
					</div>
					<div style="padding-top:25px;padding-left:35px;">
							<%-- <table height="110px">
								<tr>
									<td>
										<table height="110px" style="color: gray;">
											<tr><td><img src="${imagePath }/icon/icon_bubble.PNG"/></td></tr>
											<tr><td style="color: black;">픽업:</td></tr>
											<tr><td>오늘,위치: Apple 가로수길</td></tr>
											<tr><td>&nbsp;</td></tr>
											<tr><td>&nbsp;</td></tr>
										</table>
									</td>
									<td width="15%"></td>
									<td>
										<table height="110px" style="color: gray;">
											<tr><td><img src="${imagePath }/icon/icon_box.PNG"/></td></tr>
											<tr><td style="color: black;">배송:</td></tr>
											<tr><td>재고있음</td></tr>
											<tr><td>무료배송</td></tr>										
											<tr><td><a href="https://service.epost.go.kr/iservice/usr/trace/usrtrc001k01.jsp">배송 일자 확인</a></td></tr>										
										</table>
									</td>
								</tr>
							</table> --%>
							<hr>
					</div>
					<div class="card-body">
						<p class="card-text"><h3>제품 정보</h3></p>
					</div>
					<div class="card-body">
						<span style="font-size: 15pt; float: left;color: gray;">개요</span>
						<p style="font-size: 10pt; padding-left: 300px;">${dto.dcontent }</p>
					</div>
					<div class="card-body">
						<span style="font-size: 15pt; float: left;color: gray;">제품 크기</span>
						<p style="font-size: 10pt; padding-left: 300px;" id="showDsize">${dto.dsize }</p>
					</div>
					<div class="card-body">
						<span style="font-size: 15pt; float: left;color: gray;">제품 사양</span>
						<p style="font-size: 10pt; padding-left: 300px;">${dto.dspec }</p>
					</div>
				</div>
				<!-- /.card -->

			</div>
		</div>
		<!-- Footer -->	
		<footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>
	</div>
	</form>
	

	<!-- Bootstrap core JavaScript -->
	<script src="/goople/resources/shopping/data/jquery/jquery.min.js"></script>
	<script
		src="/goople/resources/shopping/data/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>

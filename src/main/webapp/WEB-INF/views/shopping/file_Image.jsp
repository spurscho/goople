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
<link rel="stylesheet" href="/goople/resources/shopping/data/style.css" type="text/css"/>
<link rel="stylesheet" href="/goople/resources/shopping/data/shop-homepage.css" type="text/css"/>
<script type="text/javascript" src="/goople/resources/shopping/data/image.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style type="text/css" >
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300);
body {
	color: #333;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
}
h1,
h1+p {
	margin: 30px 15px 0;
	font-weight: 300;
}
h1+p a {
	color: #333;
}
h1+p a:hover {
	text-decoration: none;
}
h2 {
	margin: 60px 15px 0;
	padding: 0;
	font-weight: 300;
}
h2 span {
	margin-left: 1em;
	color: #aaa;
	font-size: 85%;
}
.column {
	margin: 15px 15px 0;
	padding: 0;
}
.column:last-child {
	padding-bottom: 60px;
}
.column::after {
	content: '';
	clear: both;
	display: block;
}
.column div {
	position: relative;
	float: left;
	width: 200px;
	height: 200px;
	margin: 0 0 0 25px;
	padding: 0;
}
.column div:first-child {
	margin-left: 0;
}
.column div span {
	position: absolute;
	bottom: -20px;
	left: 0;
	z-index: -1;
	display: block;
	width: 200px;
	margin: 0;
	padding: 0;
	color: #444;
	font-size: 18px;
	text-decoration: none;
	text-align: center;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
	opacity: 0;
}
figure {
	margin: 0;
	padding: 0;
	background: #fff;
	overflow: hidden;
}
figure:hover+span {
	bottom: -36px;
	opacity: 1;
}
/* Shine */
.hover14 figure {
	position: relative;
}
.hover14 figure::before {
	position: absolute;
	top: 0;
	left: -75%;
	z-index: 2;
	display: block;
	content: '';
	width: 50%;
	height: 100%;
	background: -webkit-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,.3) 100%);
	background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,.3) 100%);
	-webkit-transform: skewX(-25deg);
	transform: skewX(-25deg);
}
.hover14 figure:hover::before {
	-webkit-animation: shine .75s;
	animation: shine .75s;
}
@-webkit-keyframes shine {
	100% {
		left: 125%;
	}
}

@keyframes shine {
	100% {
		left: 125%;
	}
}

/* Circle */
.hover15 figure {
	position: relative;
}
.hover15 figure::before {
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 2;
	display: block;
	content: '';
	width: 0;
	height: 0;
	background: rgba(255,255,255,.2);
	border-radius: 100%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	opacity: 0;
}
.hover15 figure:hover::before {
	-webkit-animation: circle .75s;
	animation: circle .75s;
}
@-webkit-keyframes circle {
	0% {
		opacity: 1;
	}
	40% {
		opacity: 1;
	}
	100% {
		width: 200%;
		height: 200%;
		opacity: 0;
	}
}
@keyframes circle {
	0% {
		opacity: 1;
	}
	40% {
		opacity: 1;
	}
	100% {
		width: 200%;
		height: 200%;
		opacity: 0;
	}
}



</style>

 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Goople</title>

    <!-- Bootstrap core CSS -->
    
    <link href="/goople/resources/shopping/data/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/goople/resources/shopping/data/shop-homepage.css" rel="stylesheet">
    
    
</head>
<script type="text/javascript">
$(function(){
    var $win = $(window);
    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.

    /*사용자 설정 값 시작*/
    var speed          = 300;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
    var easing         = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
    var $layer         = $('#floatMenu'); // 레이어 셀렉팅
    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
    $layer.css('position', 'absolute');
    /*사용자 설정 값 끝*/

    // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
    if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
    else
        $win.scrollTop(0);

    //스크롤이벤트가 발생하면
    $(window).scroll(function(){
        yPosition = $win.scrollTop() - 20;
        if (yPosition < 0)
        {
            yPosition = 0;
        }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });
});
</script>

<body>

<img src="https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/w/ha/whats/new/whats-new-alp-201702?wid=1440&amp;hei=320&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1486750556168" alt="" width="100%" height="320" data-scale-params-2="wid=2880&amp;hei=640&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1486750556168" class="pd-billboard-hero ir">
 <jsp:include page="/WEB-INF/views/main/header.jsp" />
 <head><link rel="stylesheet" href="/goople/resources/shopping/data/style.css?ver=2"  type="text/css"/></head>
    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <div class="floatMenu" id="floatMenu">
          	<c:choose>
          		<c:when test="${selected eq '애플'}">
	          		<c:if test="${empty searchValue}">
		          	<a href="/goople/shopping/fileImage.action?selected=애플" class="list-group-item active">ALL</a>
		          	</c:if>
		            <c:if test="${!empty searchValue }">
		            <a href="/goople/shopping/fileImage.action?selected=애플" class="list-group-item">ALL</a>
		            </c:if>
		            <c:if test="${searchValue eq 'macbook'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=macbook&selected=애플" class="list-group-item active">MACBOOK</a>
		            </c:if>
		            <c:if test="${searchValue ne 'macbook'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=macbook&selected=애플" class="list-group-item">MACBOOK</a>
		            </c:if>
		            <c:if test="${searchValue eq 'iPAD'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=iPAD&selected=애플" class="list-group-item active">iPAD</a>
		            </c:if>
		            <c:if test="${searchValue ne 'iPAD'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=iPAD&selected=애플" class="list-group-item">iPAD</a>
		            </c:if>
		            <c:if test="${searchValue eq 'iPhone'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=iPhone&selected=애플" class="list-group-item active">iPhone</a>
		            </c:if>
		            <c:if test="${searchValue ne 'iPhone'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=iPhone&selected=애플" class="list-group-item">iPhone</a>
		            </c:if>
		            <c:if test="${searchValue eq 'etc'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=etc&selected=애플" class="list-group-item active">기타</a>
		            </c:if>
		            <c:if test="${searchValue ne 'etc'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=etc&selected=애플" class="list-group-item">기타</a>
		            </c:if>
	            	<!-- <a href="#" class="list-group-item">예제 3</a> -->
          		</c:when>
          		
          		<c:when test="${selected eq '구글'}">
          			<c:if test="${empty searchValue}">
		          	<a href="/goople/shopping/fileImage.action?selected=구글" class="list-group-item active">ALL</a>
		          	</c:if>
		            <c:if test="${!empty searchValue }">
		            <a href="/goople/shopping/fileImage.action?selected=구글" class="list-group-item">ALL</a>
		            </c:if>
		            <c:if test="${searchValue eq 'ChromeBook'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=ChromeBook&selected=구글" class="list-group-item active">ChromeBook</a>
		            </c:if>
		            <c:if test="${searchValue ne 'ChromeBook'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=ChromeBook&selected=구글" class="list-group-item">ChromeBook</a>
		            </c:if>
		            <c:if test="${searchValue eq 'GoogleHome'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=GoogleHome&selected=구글" class="list-group-item active">GoogleHome</a>
		            </c:if>
		            <c:if test="${searchValue ne 'GoogleHome'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=GoogleHome&selected=구글" class="list-group-item">GoogleHome</a>
		            </c:if>
		            <c:if test="${searchValue eq 'Phones'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=Phones&selected=구글" class="list-group-item active">Phones</a>
		            </c:if>
		            <c:if test="${searchValue ne 'Phones'}">
		            <a href="/goople/shopping/fileImage.action?searchKey=pname&searchValue=Phones&selected=구글" class="list-group-item">Phones</a>
		            </c:if>
	            	<!-- <a href="#" class="list-group-item">예제 3</a> -->
	          	</c:when>
	          </c:choose>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

		<div align="right" >
		<br/><h1 align="center">Goople</h1>
		<c:if test="${sessionScope.info.id eq 'admin'}">
			<input type="button" value="게시물등록" 
					onclick="location.href='http://192.168.16.5:8080/goople/shopping/fileUpload'"  >
		</c:if>
		</div>
		


          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
            
             <div class="row">
            <c:set var="i" value="0" />
			<c:set var="j" value="3" />
			
			<c:forEach items="${lists }" var="dto">
			<c:if test="${i%j == 0 }">
			</c:if>
			
			<div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
               <div class="hover15 column"><figure><a href="${articleUrl }&num=${dto.num}&searchValue=${dto.pname}&models=${dto.model}"><img class="card-img-top" src="${imagePath }/${dto.img }" style="width: 253px; height:200px"  alt=""  align="middle"/></a></figure></div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${articleUrl }&num=${dto.num}&searchValue=${dto.pname}&models=${dto.model}">${dto.pname}</a>
                  </h4>
                  <p class="card-text">${dto.content }</p>
                  <h5>￦<fmt:formatNumber>${dto.price }</fmt:formatNumber></h5>
                </div>
              </div>
            </div>
			<c:if test="${i%j == j-1}">
			</c:if>
			<c:set var="i" value="${i+1 }" />
			</c:forEach>
              </div>
            </div>

          </div>
          
          <!-- /.row -->
		
			<div align="center">
             <ul class="pagination justify-content-center">
             <!-- <li class="page-item"> -->
              ${pageIndexList }
              <!-- </li> -->
  			</ul>
            </div>
        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
	
	
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="/goople/resources/shopping/data/jquery/jquery.min.js"></script>
    <script src="/goople/resources/shopping/data/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
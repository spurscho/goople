<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	String cp = request.getContextPath();

%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 18px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
	padding: 8px 8px 8px 32px;
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body>
<!-- Links (sit on top) -->
<div class="w3-top" style="z-index: 99999;">
  <div class="w3-row w3-padding w3-black" >
  <div id="mySidenav" class="sidenav" >
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  		<a href="/goople/" class="w3-bar-item w3-button w3-padding" style="float: left;">
		<i class="fa fa-home fa-fw w3-margin-right"></i> HOME</a>
<c:if test="${sessionScope.info.id==null}">
  		<a href="/goople/member/login" class="w3-bar-item w3-button w3-padding" style="float: left;">
		<i class="fa fa-user fa-fw w3-margin-right"></i> LOGIN</a>
</c:if>
<c:if test="${sessionScope.info.id!=null}">
	    <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" style="float: left;" id="myBtn">
	    <i class="fa fa-user-circle fa-fw w3-margin-right"></i>
	   ${sessionScope.info.name} 님&nbsp;<i class="fa fa-caret-down"></i></a>
	    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
	      <a href="/goople/member/profile" class="w3-bar-item w3-button w3-padding" style="float: left;">
	      <i class="fa fa-edit fa-fw w3-margin-right"></i>MY PROFILE</a> 
	   	  <a href="/goople/cart/cartList.action?userId=${sessionScope.info.id}" class="w3-bar-item w3-button w3-padding" style="float: left;">
	   	  <i class="fa fa-shopping-cart fa-fw w3-margin-right"></i>CART</a> 
	   	  <a href="/goople/order/orderList.action?id=${sessionScope.info.id}" class="w3-bar-item w3-button w3-padding" style="float: left;">
	   	  <i class="fa fa-credit-card fa-fw w3-margin-right"></i>ORDERS</a>
	   	  <c:if test="${sessionScope.info.id eq 'admin'}">
		   	  <a href="/goople/refund/list.action" class="w3-bar-item w3-button w3-padding" style="float: left;">
		   	  <i class="fa fa-times-circle fa-fw w3-margin-right"></i>REFUND</a>
		  </c:if>
	    </div>
</c:if>
<c:if test="${sessionScope.info.id==null}">
	    <a href="/goople/member/join" class="w3-bar-item w3-button w3-padding" style="float: left;">
	    <i class="fa fa-user-plus fa-fw w3-margin-right"></i> JOIN</a>
</c:if>
	    <a href="/goople/qna/qnaHome.action" class="w3-bar-item w3-button w3-padding" style="float: left;">
	    <i class="fa fa-question-circle fa-fw w3-margin-right"></i> Q & A</a> 
	    
	    <a class="w3-bar-item w3-button w3-padding" style="color: gray; float: left;" onclick="document.getElementById('contact').style.display='block'">
	    <i class="fa fa-envelope fa-fw w3-margin-right"></i> CONTACT</a>
	
	<c:if test="${sessionScope.info.id!=null}">
		<a href="/goople/member/logout" class="w3-bar-item w3-button w3-padding" style="float: left;">
	    <i class="fa fa-user-times fa-fw w3-margin-right"></i> LOGOUT</a>
	</c:if>	
</div>
	<span style="font-size:30px; cursor:pointer; color: white; float: left;" onclick="openNav()">&#9776;&nbsp;&nbsp;&nbsp;</span>
    <div class="w3-col s5" style="width: 46.7%">
      <a href="/goople/shopping/fileImage.action?selected=애플" class="w3-button w3-block w3-black">
      <input type="image" src="<%=cp %>/resources/main/img/apple.png" width="30" height="30">
      </a>
    </div>
    <div class="w3-col s5" style="width: 46.7%" >
      <a href="/goople/shopping/fileImage.action?selected=구글" class="w3-button w3-block w3-black">
      <input type="image" src="<%=cp %>/resources/main/img/google.png" width="30" height="30">
      </a>
    </div>
    
  </div>
</div>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w6-wide">
  <input type="image" src="<%=cp %>/resources/main/img/apple.png" width="30" height="30"></div>
  <div class="w3-bar-item w3-padding-24 w6-wide">
  <input type="image" src="<%=cp %>/resources/main/img/google.png" width="30" height="30">
  </div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
 

</div>

<!-- Contact Modal -->
<div id="contact" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black">
      <span onclick="document.getElementById('contact').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>Contact</h1>
    </div>
    <div class="w3-container">
      <form action="${pageContext.request.contextPath}/mail/mailSending.action" method="post">
      <br/>
        <p><input class="w3-input w3-padding-16 w3-border" type="text" name="tomail" placeholder="Email" required name="Email"></p>
        <p><input class="w3-input w3-padding-16 w3-border" type="text" name="title" placeholder="Title" required name="Title"></p>
        <p><textarea class="w3-input w3-padding-16 w3-border" rows="12" name="content" placeholder="Message \ Special requirements" required name="Message"></textarea></p>
        <p><button class="w3-button w3-black" type="submit">SEND MESSAGE</button></p>
      </form>
    </div>
  </div>
</div>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>

<script>
// Accordion 
function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

</script>

</body>
</html>
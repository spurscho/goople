<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="<%=cp %>/resources/main/css/bootstrap.min.css" type="text/css">
<!-- Custom styles for this template -->
<link rel="stylesheet" href="<%=cp %>/resources/main/css/product.css" type="text/css">
<style type="text/css">

*{margin: 0; padding: 0;}

.container{
	
	width: 630px;
	margin: 100px auto 0;

}

.box{

	float: left;
	width: 255px;
	height: 515px;
	margin: 0 30px;

}

.back{

	position: absolute;
	top: 600px;
	left: 200px;

}

.front{

	position: absolute;
	top: 600px;
	left: 200px;

}

.box:hover .front{transform: translateX(40px); }
.box:hover .back{transform: translateX(-40px); }

.front{transform: traslateX(0px); transition: all 01s ease;}
.back{transform: traslateX(0px); transition: all 01s ease;}

.container2{
	
	width: 630px;
	margin: 100px auto 0;

}

.box2{

}

.back2{

	position: absolute;
	top: 1300px;
	right: 200px;
	float: right;
	width: 255px;
	height: 515px;
	margin: 0 30px;

}

.front2{

	position: absolute;
	top: 1300px;
	right: 200px;
	float: right;
	width: 255px;
	height: 515px;
	margin: 0 30px;

}

.box2:hover .front2{transform: translateX(40px); }
.box2:hover .back2{transform: translateX(-40px); }

.front2{transform: traslateX(0px); transition: all 01s ease;}
.back2{transform: traslateX(0px); transition: all 01s ease;}



</style>
</head>

<body>

<jsp:include page="../main/header.jsp" flush="false"/>
<br/>

<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light w3-animate-opacity">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">GOOPLE</h1>
        <p class="lead font-weight-normal">
       Super Retina. In big and bigger. 
       The custom OLED displays on iPhone XS deliver the most accurate color in the industry, HDR, and true blacks.
        And iPhone XS Max has our largest display ever on an iPhone.
        </p>
        <a class="btn btn-outline-secondary" href="#">Coming soon</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    
    <div class="container">
    
    	<div class="box">
			<div class="front"><img src="<%=cp %>/resources/main/img/iphonexs.png" width="50%"></div>     	
			<div class="back"><img src="<%=cp %>/resources/main/img/iphonexs.png" width="50%"></div>     	
    	</div>
    	
    </div>   
    <br/><br/>
    <h1>iPhoneXs</h1>
    <p style="font-size: 50px; font-weight: bold;">Welcome to the big screens.<p>
    <p style="font-size: 20px">Super Retina in two sizes — including the largest display ever on an iPhone. <br/>
    Even faster Face ID. <br/>
    The smartest, most powerful chip in a smartphone. <br/>
    And a breakthrough dual-camera system with Depth Control. <br/> 
    iPhone XS is everything you love about iPhone. <br/>
    Taken to the extreme.</p>
     <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <div class="w3-col l0 w3-padding-large">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    Pixel3</h1>
    <p style="font-size: 50px; font-weight: bold">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Devices that work together <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    to make life run smoother.</p>
    <p style="font-size: 20px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    In terms of design, the Google Pixel 3 and 3 XL look similar to their predecessors.<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    It features the same two-tone design on the rear,<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     though this time around it’s a glass back with a matte finish on half.<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     It’s available in three colours; Just Black, <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     Clearly White and Not Pink which, believe it or not, is a little bit pink.
    </p>
    </div>
    
     <div class="container2">
    
    	<div class="box2">
			<div class="front2"><img src="<%=cp %>/resources/main/img/pixel3.png" width="160%"></div>     	
			<div class="back2"><img src="<%=cp %>/resources/main/img/pixel3.png" width="160%"></div>     	
    	</div>

    </div>   
    
    
    <!-- Team Section -->
<div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="w3-container" style="padding:128px 16px" id="team">
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card" align="center">
        <img src="<%=cp %>/resources/main/img/google home.png" style="width:269px; height: 179px;">
        <div class="w3-container">
          <h3>Google Home</h3>
          <p class="w3-opacity">Google</p>
          <p><br/>Hands-free help from the Google Assistant.
Get answers, play songs, tackle your day, enjoy your entertainment and control your smart home with just your voice.<br/></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card" align="center">
        <img src="<%=cp %>/resources/main/img/pixelbook.png" style="width:269px; height: 179px;">
        <div class="w3-container">
          <h3>PixelBook</h3>
          <p class="w3-opacity">Google</p>
          <p><br/>One, two, three, four ways to use it.
Use it as a laptop, or watch your favorite shows. Fold it into a tablet, or stand it up. Pixelbook’s unibody is 10.3 mm thin, and ready to go with an all-day battery.<br/></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card" align="center">
        <img src="<%=cp %>/resources/main/img/Google-chromecast-ultra.png" style="width:269px; height: 179px;">
        <div class="w3-container">
          <h3>Chromecast Ultra</h3>
          <p class="w3-opacity">Google</p>
          <p>A streaming device that plugs into your TV's HDMI port, Chromecast Ultra provides fast, reliable 4k video with minimal buffering and smooth streaming. Use your iPhone®, iPad®, Android device or laptop to stream video from thousands of Cast-enabled apps.
          </p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card" align="center">
        <img src="<%=cp %>/resources/main/img/google daydream2.png" style="width:269px; height: 179px;">
        <div class="w3-container">
          <h3>Daydream</h3>
          <p class="w3-opacity">Google</p>
          <p><br/>VR wherever you are.
Swim with seals, go to Mars or experience sports and concerts like you’re actually there. Just slide in a Google Pixel or any Daydream-ready phone to get going.</p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<!-- Promo Section "Statistics" -->
<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
  <div class="w3-quarter">
    <span class="w3-xxlarge">14+</span>
    <br>Partners
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">55+</span>
    <br>Projects Done
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">89+</span>
    <br>Happy Clients
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">150+</span>
    <br>Meetings
  </div>
</div>




 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="<%=cp %>/resources/main/js/jquery-slim.min.js"><\/script>')</script>
    <script src="<%=cp %>/resources/main/js/popper.min.js"></script>
    <script src="<%=cp %>/resources/main/js/bootstrap.min.js"></script>
    <script src="<%=cp %>/resources/main/js/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>



</body>
</html>
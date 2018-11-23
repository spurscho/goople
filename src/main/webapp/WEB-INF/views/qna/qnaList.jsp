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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="/goople/resources/member/data/css/radio_button.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<title>Q&A</title>

<link rel="stylesheet" href="<%=cp%>/resources/qna/css/jquery-ui.css"
	type="text/css">

<style type="text/css">
body {
	font: 82.5% "나눔 고딕", sans-serif;
	margin: 300px;
	
}

ul#icons {
	margin: 0;
	padding: 0;
}

ul#icons li {
	margin: 2px;
	position: relative;
	padding: 4px 0;
	cursor: pointer;
	float: left;
	list-style: none;
}

ul#icons span.ui-icon {
	float: left;
	margin: 0 4px;
}

#container {
	width: 800px;
}
</style>

<style type="text/css">
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: #89B2E9;
	text-decoration: underline;
}

a:active {
	color: red;
	text-decoration: underline;
}


</style>

<script type="text/javascript"
	src="<%=cp%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=cp%>/resources/qna/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp%>/resources/qna/js/bootstrap.js"></script>


<script type="text/javascript">
	$(function() {
		$("#qna_menu").tabs();
		$("#hide_reply_join_1").hide();
		$(document).ready(function() {
			$("#qna_question_join_1").click(function() {
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_1").toggle(300);
			});
		});
		$("#hide_reply_join_2").hide();
		$(document).ready(function() {
			$("#qna_question_join_2").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_2").toggle(300);
			});
		});
		$("#hide_reply_join_3").hide();
		$(document).ready(function() {
			$("#qna_question_join_3").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_3").toggle(300);
			});
		});
		$("#hide_reply_join_4").hide();
		$(document).ready(function() {
			$("#qna_question_join_4").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_4").toggle(300);
			});
		});
		$("#hide_reply_join_5").hide();
		$(document).ready(function() {
			$("#qna_question_join_5").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_5").toggle(300);
			});
		});
		$("#hide_reply_join_6").hide();
		$(document).ready(function() {
			$("#qna_question_join_6").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_6").toggle(300);
			});
		});
		$("#hide_reply_join_7").hide();
		$(document).ready(function() {
			$("#qna_question_join_7").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_7").toggle(300);
			});
		});
		$(document).ready(function() {
			$("#qna_question_join_re1").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_3").toggle(300);
			});
		});
		$("#hide_reply_join_8").hide();
		$(document).ready(function() {
			$("#qna_question_join_8").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_8").toggle(300);
			});
		});
		$("#hide_reply_join_9").hide();
		$(document).ready(function() {
			$("#qna_question_join_9").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_9").toggle(300);
			});
		});
		$(document).ready(function() {
			$("#qna_question_join_re2").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_8").toggle(300);
			});
		});
		$("#hide_reply_join_10").hide();
		$(document).ready(function() {
			$("#qna_question_join_10").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_11").hide();
				$("#hide_reply_join_10").toggle(300);
			});
		});
		$("#hide_reply_join_11").hide();
		$(document).ready(function() {
			$("#qna_question_join_11").click(function() {
				$("#hide_reply_join_1").hide();
				$("#hide_reply_join_2").hide();
				$("#hide_reply_join_3").hide();
				$("#hide_reply_join_4").hide();
				$("#hide_reply_join_5").hide();
				$("#hide_reply_join_6").hide();
				$("#hide_reply_join_7").hide();
				$("#hide_reply_join_8").hide();
				$("#hide_reply_join_9").hide();
				$("#hide_reply_join_10").hide();
				$("#hide_reply_join_11").toggle(300);
			});
		});
		$("#hide_reply_delivery_1").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_1").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_1").toggle(300);
			});
		});
		$("#hide_reply_delivery_2").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_2").click(function() {
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_2").toggle(300);
			});
		});
		$("#hide_reply_delivery_3").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_3").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_3").toggle(300);
			});
		});
		$("#hide_reply_delivery_4").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_4").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_4").toggle(300);
			});
		});
		$("#hide_reply_delivery_5").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_5").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_5").toggle(300);
			});
		});
		$("#hide_reply_delivery_6").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_6").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_6").toggle(300);
			});
		});
		$("#hide_reply_delivery_7").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_7").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_7").toggle(300);
			});
		});
		$("#hide_reply_delivery_8").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_8").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_8").toggle(300);
			});
		});
		$("#hide_reply_delivery_9").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_9").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_9").toggle(300);
			});
		});
		$("#hide_reply_delivery_10").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_10").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_10").toggle(300);
			});
		});
		$("#hide_reply_delivery_11").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_11").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_11").toggle(300);
			});
		});
		$("#hide_reply_delivery_12").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_12").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_12").toggle(300);
			});
		});
		$("#hide_reply_delivery_13").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_13").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_13").toggle(300);
			});
		});
		$("#hide_reply_delivery_14").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_14").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_14").toggle(300);
			});
		});
		$("#hide_reply_delivery_15").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_15").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_15").toggle(300);
			});
		});
		$("#hide_reply_delivery_16").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_16").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_16").toggle(300);
			});
		});
		$("#hide_reply_delivery_17").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_17").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_17").toggle(300);
			});
		});
		$("#hide_reply_delivery_18").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_18").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_18").toggle(300);
			});
		});
		$("#hide_reply_delivery_19").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_19").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_20").hide();
				$("#hide_reply_delivery_19").toggle(300);
			});
		});
		$("#hide_reply_delivery_20").hide();
		$(document).ready(function() {
			$("#qna_question_delivery_20").click(function() {
				$("#hide_reply_delivery_2").hide();
				$("#hide_reply_delivery_3").hide();
				$("#hide_reply_delivery_4").hide();
				$("#hide_reply_delivery_5").hide();
				$("#hide_reply_delivery_6").hide();
				$("#hide_reply_delivery_7").hide();
				$("#hide_reply_delivery_8").hide();
				$("#hide_reply_delivery_1").hide();
				$("#hide_reply_delivery_9").hide();
				$("#hide_reply_delivery_11").hide();
				$("#hide_reply_delivery_10").hide();
				$("#hide_reply_delivery_13").hide();
				$("#hide_reply_delivery_14").hide();
				$("#hide_reply_delivery_12").hide();
				$("#hide_reply_delivery_16").hide();
				$("#hide_reply_delivery_17").hide();
				$("#hide_reply_delivery_18").hide();
				$("#hide_reply_delivery_19").hide();
				$("#hide_reply_delivery_15").hide();
				$("#hide_reply_delivery_20").toggle(300);
			});
		});
		$("#hide_reply_order_1").hide();
		$(document).ready(function() {
			$("#qna_question_order_1").click(function() {
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_1").toggle(300);
			});
		});
		$("#hide_reply_order_2").hide();
		$(document).ready(function() {
			$("#qna_question_order_2").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_2").toggle(300);
			});
		});
		$("#hide_reply_order_3").hide();
		$(document).ready(function() {
			$("#qna_question_order_3").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_3").toggle(300);
			});
		});
		$("#hide_reply_order_4").hide();
		$(document).ready(function() {
			$("#qna_question_order_4").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				4
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_4").toggle(300);
			});
		});
		$("#hide_reply_order_5").hide();
		$(document).ready(function() {
			$("#qna_question_order_5").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_5").toggle(300);
			});
		});
		$("#hide_reply_order_6").hide();
		$(document).ready(function() {
			$("#qna_question_order_6").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_6").toggle(300);
			});
		});
		$("#hide_reply_order_7").hide();
		$(document).ready(function() {
			$("#qna_question_order_7").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_7").toggle(300);
			});
		});
		$("#hide_reply_order_8").hide();
		$(document).ready(function() {
			$("#qna_question_order_8").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_8").toggle(300);
			});
		});
		$("#hide_reply_order_9").hide();
		$(document).ready(function() {
			$("#qna_question_order_9").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_9").toggle(300);
			});
		});
		$("#hide_reply_order_10").hide();
		$(document).ready(function() {
			$("#qna_question_order_10").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_10").toggle(300);
			});
		});
		$("#hide_reply_order_11").hide();
		$(document).ready(function() {
			$("#qna_question_order_11").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_11").toggle(300);
			});
		});
		$("#hide_reply_order_12").hide();
		$(document).ready(function() {
			$("#qna_question_order_12").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_12").toggle(300);
			});
		});
		$("#hide_reply_order_13").hide();
		$(document).ready(function() {
			$("#qna_question_order_13").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_13").toggle(300);
			});
		});
		$("#hide_reply_order_14").hide();
		$(document).ready(function() {
			$("#qna_question_order_14").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_14").toggle(300);
			});
		});
		$("#hide_reply_order_15").hide();
		$(document).ready(function() {
			$("#qna_question_order_15").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_15").toggle(300);
			});
		});
		$("#hide_reply_order_16").hide();
		$(document).ready(function() {
			$("#qna_question_order_16").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_16").toggle(300);
			});
		});
		$("#hide_reply_order_17").hide();
		$(document).ready(function() {
			$("#qna_question_order_17").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_17").toggle(300);
			});
		});
		$("#hide_reply_order_18").hide();
		$(document).ready(function() {
			$("#qna_question_order_18").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_18").toggle(300);
			});
		});
		$("#hide_reply_order_19").hide();
		$(document).ready(function() {
			$("#qna_question_order_19").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_19").toggle(300);
			});
		});
		$("#hide_reply_order_20").hide();
		$(document).ready(function() {
			$("#qna_question_order_20").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_20").toggle(300);
			});
		});
		$("#hide_reply_order_21").hide();
		$(document).ready(function() {
			$("#qna_question_order_21").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_21").toggle(300);
			});
		});
		$("#hide_reply_order_22").hide();
		$(document).ready(function() {
			$("#qna_question_order_22").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_23").hide();
				$("#hide_reply_order_22").toggle(300);
			});
		});
		$("#hide_reply_order_23").hide();
		$(document).ready(function() {
			$("#qna_question_order_23").click(function() {
				$("#hide_reply_order_1").hide();
				$("#hide_reply_order_2").hide();
				$("#hide_reply_order_3").hide();
				$("#hide_reply_order_4").hide();
				$("#hide_reply_order_5").hide();
				$("#hide_reply_order_6").hide();
				$("#hide_reply_order_7").hide();
				$("#hide_reply_order_8").hide();
				$("#hide_reply_order_9").hide();
				$("#hide_reply_order_10").hide();
				$("#hide_reply_order_11").hide();
				$("#hide_reply_order_12").hide();
				$("#hide_reply_order_13").hide();
				$("#hide_reply_order_14").hide();
				$("#hide_reply_order_15").hide();
				$("#hide_reply_order_16").hide();
				$("#hide_reply_order_17").hide();
				$("#hide_reply_order_18").hide();
				$("#hide_reply_order_19").hide();
				$("#hide_reply_order_20").hide();
				$("#hide_reply_order_21").hide();
				$("#hide_reply_order_22").hide();
				$("#hide_reply_order_23").toggle(300);
			});
		});
	});
</script>

</head>
<body>
	<jsp:include page="../main/header.jsp" flush="false"/>
<br/><br/><br/><br/><br/>
<!------ Include the above in your HEAD tag ---------->
    <div id="login-overlay" class="modal-dialog">
      <div class="modal-content"  style="width: 600px;">
          <div class="modal-header"  align="center">
              <h8 class="modal-title" id="myModalLabel"  >Q&A </h8>
          </div>               
	<div id="qna_menu"  >
		
		<ul style="height: 100px; height: 90px;"">
			<li><a href="#qna_menu_1" style="width: 130px; height: 33px;"><FONT face="나눔 고딕"><h8>회원가입/탈퇴</h8></FONT></a></li>
			<li><a href="#qna_menu_2" style="width: 130px; height: 33px;"><FONT face="나눔 고딕"><h8>회원정보/수정</h8></FONT></a></li>
			<li><a href="#qna_menu_3" style="width: 135px; height: 33px;"><FONT face="나눔 고딕"><h8>배송진행상태</h8></FONT></a></li>
			<li><a href="#qna_menu_4" style="width: 160px; height: 33px;"><FONT face="나눔 고딕"><h8>배송상태확인/변경</h8></FONT></a></li>
			<li><a href="#qna_menu_5" style="width: 130px; height: 33px;"><FONT face="나눔 고딕"><h8>주문거래/확인</h8></FONT></a></li>
			<li><a href="#qna_menu_6" style="width: 110px; height: 33px;"><FONT face="나눔 고딕"><h8>무통장입금</h8></FONT></a></li>
			<li><a href="#qna_menu_7" style="width: 100px; height: 33px;"><FONT face="나눔 고딕"><h8>카드결제</h8></FONT></a></li>
		</ul>
	
		<div id="qna_menu_1">
			<h3>
				<li><a href="#qna_question_join_1" id="qna_question_join_1"
					style="font-size: 10px;">회원가입은 어떻게 하나요?</a><br/></li>
			</h3>
			<div id="hide_reply_join_1">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-: 10pt"><B>√ 사이트 상단 회원가입 클릭 후 약관동의 및
								본인인증 완료 시 가입 완료<br /> <br />
						</B></SPAN></FONT><FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">1.
							GOOPLE 사이트 상단 회원가입 클릭<br /> 2. 개인 구매회원 또는 사업자 구매회원 중 택1<br />
							3. 회원가입 약관에 동의 후 회원가입 클릭<br /> 4. 회원정보 입력 후 확인버튼 클릭 > 가입완료<br />
							※ 기존 비밀번호 재사용 불가<br /> ※ 숫자, 영문, 특수문자 중 1개만 사용한 비밀번호는 사용 불가<br />
							※ ID, 주민번호, 생일, 전화번호 등 개인정보로 이루어진 비밀번호는 사용 불가<br /> ※ 동일한 문자 또는
							숫자가 많이 들어간 비밀번호 사용 불가<br /> ※ 14세 미만 회원가입 불가 (보호자 동의가 있어도 가입 불가)<br />
					</SPAN></FONT>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_2" id="qna_question_join_2"
					style="font-size: 10px;">회원가입시 이미 가입된 아이디라고 나옵니다.</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_2">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt">√ 아이디 찾기 또는 비밀번호 찾기 진행</B></SPAN></FONT><FONT
						face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt"><br />
							<br /> 회원가입 하신 사실을 잊으셨거나 제휴사이트를 통해 가입된 경우가 많습니다.<br /> 아이디 찾기
							또는 비밀번호 찾기를 진행해주세요.</SPAN></FONT><br /> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">아이디 찾기</span></b></font></a> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">비밀번호 찾기</span>
						</b></font></a><br />
				</h8>
				<FONT color=#329f2b face="나눔 고딕"><SPAN
					style="FONT-SIZE: 10pt"><b> 이런 FAQ를 찾고 계신가요?</B></SPAN></FONT><br /> <a
					href="#qna_question_re1" id="qna_question_re1"><font
					color="blue" face="나눔 고딕"><b> <span
							style="font-size: 10pt;">로그인 아이디가 생각나지 않아요</span></b></font></a><br /> </a>
				</li>
			</div>
			<h3>
				<li><a href="#qna_question_join_3" id="qna_question_join_3"
					style="font-size: 10px;">로그인 아이디가 생각나지 않아요</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_3">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 로그인창에서 아이디 찾기 진행</B></SPAN></FONT><br /> <br />
					<FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt"> 1.
							휴대폰/아이핀 인증 : 전체 아이디 확인가능<br /> 2. 등록된 정보로 찾기 : 아이디 일부분만 확인가능<br />
							(전체ID는 ID찾기 이후, 등록된 이메일/휴대폰으로 수신하여 확인가능)
					</SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">아이디 찾기</span>
						</b></font></a> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">비밀번호 찾기</span>
						</b></font></a><br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_4" id="qna_question_join_4"
					style="font-size: 10px;">비밀번호가 생각나지 않아요</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_4">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 본인인증 후 비밀번호 변경 </B></SPAN></FONT><br /> <br />
					<FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">
							비밀번호는 암호화되어 저장되기 때문에 시스템에서는 확인이 어렵습니다.<br /> 따라서 비밀번호를 분실하셨다면
							본인인증 후 비밀번호를 변경해 주세요.
					</SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">비밀번호 변경하기</span>
						</b></font></a><br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_5" id="qna_question_join_5"
					style="font-size: 10px;">회원탈퇴는 어떻게 하나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_5">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ MYPAGE > 회원정보 설정 > 회원탈퇴 진행
						</B></SPAN></FONT><br /> <br /> <FONT face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt">일반회원은 진행 중인 주문 건이 없을 시, 배송 및 정산이 모두
							완료 후 가능합니다.<br /> 탈퇴 후 7일간 재가입 불가하고 기존 이용내역 이전이 불가 합니다.<br />
							해당 아이디는 영구적으로 사용이 중지되어 새로운 아이디로만 재가입이 가능 합니다.
					</SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">회원탈퇴</span>
						</b></font></a><br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_6" id="qna_question_join_6"
					style="font-size: 10px;">회원탈퇴 후 재가입이 가능한가요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_6">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 탈퇴 이후에 새로운 아이디로 재가입 가능 </B></SPAN></FONT><br />
					<br /> <FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">탈퇴와
							동시에 아이디는 영구 사용중지되므로 새로운 아이디로만 재가입이 가능합니다.<br /> 단, 법령 위반 등의 이유로
							계약 해지를 당했다면 GOOPLE 자체 심사를 통해재가입 여부가 결정됩니다.<br /> 다음과 같은 경우에는
							G마켓에서 이용계약을 해지할 수 있습니다.<br /> <br /> 1. 타이용자의 권리,명예,신용,기타 정당한
							이익을 침해하였거나 대한민국 법령 또는 공서양속을 위배한 경우<br /> 2. 회사가 제공하는 GOOPLE 서비스의
							원활한 진행을 방해하는 행위를 하거나 시도한 경우<br /> 3. 기타 회사가 합리적인 판단에 기하여 서비스의
							제공을 거부할 필요가 있다고 인정할 경우
					</SPAN></FONT><br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_7" id="qna_question_join_7"
					style="font-size: 10px;">개인정보 관련안내</a><br /></li>
			</h3>
			<div id="hide_reply_join_7">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 개인정보 이용내역 통지제도 </B></SPAN></FONT><br /> <br />
					정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 30조의 1, 동법 시행령 제 17조에 의거<br /> 서비스
					제공을 위해 이용한 고객의 개인정보 내역을 연 1회 안내하는 제도<br /> 1년 간 로그인 이력이 없는 경우 개인정보
					유효기간 종료<br /> <br /> <br /> <FONT color=#329f2b face="나눔 고딕">
						<SPAN style="FONT-SIZE: 10pt"><B>√ 개인정보 공유 동의 </B></SPAN>
					</FONT><br /> <br />
					<FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">
							GOOPLE과 구매자 사이의 원활한 거래이행을 위하여 최소한의 개인정보를 아래와 같이 공유<br /> 1.
							개인정보를 공유받는자 : GOOPLE<br /> 2. 공유하는 개인정보 항목 : 구매자 성명, 전화번호, ID,
							휴대폰 번호, 구매정보, 수취확인 정보(성명, 주소, 전화번호)<br /> 3. 개인정보를 공유받은 자의 이용 목적
							: 거래의 원활한 진행, 본인의사의 확인, 고객 상담, 불만처리, 배송지 확인 등<br /> 4. 개인정보를
							공유받는 자의 개인정보 보유 및 이용 기간 : 개인정보 수집 및 이용 목적 달성 시까지 보관<br /> 5. 동의
							거부 시 불이익 : 개인정보 공유 동의를 거부할 수 있음 (거부한 경우 구매가 제한될 수 있음)<br /> 6.
							개인정보 공유 내용은 주문결제 페이지 > 결제하기 버튼 하단에서 확인
					</SPAN></FONT><br />
				</h8>
			</div>
		</div>

		<div id="qna_menu_2">
			<h3>
				<li><a href="#qna_question_join_8" id="qna_question_join_8"
					style="font-size: 10px;">회원정보를 수정하고 싶어요</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_8">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의설정에서 주소,연락처 등 회원정보 수정<br />
								<br />
						</B></SPAN></FONT><FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">
							단, 아이디는 수정이 불가합니다. 아이디 변경을 원하신다면 탈퇴 후 새 아이디로 가입하셔야 합니다.<br /> 개명
							등으로 고객명 변경이 필요한 경우 인터넷 실명확인 서비스에서 실명등록 후 직접 변경하실 수 있습니다.
					</SPAN></FONT> <br /> <br />
					<br />
					<a href="#"><font color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">회원정보수정</span>
						</b></font></a><br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_9" id="qna_question_join_9"
					style="font-size: 10px;">회원가입시 이름이 잘못 입력 되었는데 어떻게 하나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_join_9">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의설정에서 주소,연락처 등 회원정보 수정 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">회원정보수정에서
							변경 가능합니다</SPAN></FONT> <br /> <br /> <FONT color=#329f2b face="나눔 고딕"><SPAN
						style="FONT-SIZE: 10pt"><b> 이런 FAQ를 찾고 계신가요?</B></SPAN></FONT><br /> <a
						href="#qna_question_join_re2" id="qna_question_join_re2"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">회원정보를 수정하고 싶어요</span>
						</b></font></a><br />
					</li>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_10" id="qna_question_join_10"
					style="font-size: 10px;">제 이메일 주소로 다른 사람의 이메일이 옵니다</a><br /> </a></li>
			</h3>

			<div id="hide_reply_join_10">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ GOOGLE 고객센터로 이메일 전달(포워딩) <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">다른
							회원이 회원가입 시 이메일 주소를 잘못 입력한 경우일 수 있습니다.<br /> 이런 경우 연락처, 이메일 주소,
							캡처 화면을 GOOPLE 고객센터로 접수해 주세요
					</SPAN></FONT><br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_join_11" id="qna_question_join_11"
					style="font-size: 10px;">GOOPLE에서 오는 이메일을 받고 싶지 않아요</a><br /> </a></li>
			</h3>

			<div id="hide_reply_join_11">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ GOOGLE 고객센터 이메일 문의로 수신거부
								가능합니다 <br /> <br />
						</B></SPAN></FONT><FONT face="나눔 고딕"> <SPAN style="FONT-SIZE: 10pt">쇼핑메일의
							수신여부에 상관없이 거래 관련된 이메일은 발송됩니다. </SPAN></FONT><br />
				</h8>
			</div>
		</div>
		<div id="qna_menu_3">
			<h3>
				<li><a href="#qna_question_delivery_1"
					id="qna_question_delivery_1" style="font-size: 10px;">배송지연 안내</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_delivery_1">
				<h8>
					<FONT color=#329f2b face="나눔고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 빨리보낼게요 </B></SPAN></FONT><br /> <br /> <FONT
						face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt"> 1. 입금미확인
							: 배송상태가 입금대기가 아닌 결제완료 상태인지 확인 필요<br /> 2. 판매자 주문미확인 및 발송지연 :
							결제완료, 배송준비중 상태 지속 시 판매자에게 발송일정 문의<br /> 3. 택배사 배송 지연 : 택배사 사정으로
							배송 지연, 전체주문내역에서 택배사 확인 후 배송일정 문의 <br />4. 수령인 부재 및 배송지 정보 오기재 :
							택배사 또는 판매자에게 상품 반품여부 확인 및 재배송 요청<br /> 5. 상품 옵션 미기재 : 주문단계에서 상품
							옵션 정확하게 기재<br /> ※ 배송지연 시 고객센터(1566-0000) <br />
					</SPAN></FONT>
					</li>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_2" onclick="send"
					id="qna_question_delivery_2" style="font-size: 10px;">평균 배송기간은
						얼마나 걸리나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_2">
				<h8>
					<FONT color=#329f2b face=" 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 결제완료 후 평균 2~5일(영업일 기준) /
								가전,가구 등은 7~15일(영업일 기준) 소요 <br />
							<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">
							보통 평일에만 배송이 가능하고 배송추적은 나의쇼핑 > 전체주문내역에서 가능합니다.<br /> 기본 배송일이 경과해도
							물건이 오지 않으면 배송지연으로 고객센터(1566-0000) 문의해 주세요.<br /> ※ 배송기간은 상품의
							특성이나 주문량 등에 따라 달라질 수 있음
					</SPAN></FONT><br />
					<br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>

				</h8>

			</div>
			<h3>
				<li><a href="#qna_question_delivery_3"
					id="qna_question_delivery_3" style="font-size: 10px;">상품을 구매했는데
						배송이 되지 않아요 </a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_3">
				<h8>
					<FONT color=#329f2b face="나눔고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 주문 건이 정상적으로 결제 되었는지 확인 필요
								<br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							나의쇼핑 > 전체주문내역에서 주문건이 결제완료 상태인지 확인해 주세요.<br /> 만약 결제완료나 배송준비중 단계가
							일정기간 이상 지속되면 판매자에게 직접 문의 부탁 드립니다.
					</SPAN></FONT><br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_4"
					id="qna_question_delivery_4" style="font-size: 10px;">결제대기 상태로
						보이는데 어떻게 하나요? </a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_4">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ PG사 또는 VAN사 승인 기다리는 과정 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							휴대폰결제, 카드결제 등의 결제승인을 기다리는 과정입니다.<br /> 최대 3분 이내까지 결제대기 상태가 지속되면
							GOOPLE 고객센터(1566-0000)로 문의해 주세요.
					</SPAN></FONT> <br /> <br />
				</h8>

			</div>
			<h3>
				<li><a href="#qna_question_delivery_5"
					id="qna_question_delivery_5" style="font-size: 10px;">주문번호는 어디서
						확인 하나요? </a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_5">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역에서 확인 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							전체주문내역에서 확인 가능합니다.</SPAN></FONT><br /> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_6"
					id="qna_question_delivery_6" style="font-size: 10px;">상품을 받지
						못했는데 배송완료 상태로 바꿔었어요 </a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_6">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역 > 고객센터 문의 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							상품을 수령하지 못했는데 배송완료 상태로 확인된다면 미수령신고를 해주세요.<br /> G마켓에서 확인 후 처리해
							드리겠습니다.<br /> ※ 배송완료 상태로 전환되는 경우<br /> 1. 구매자가 수취확인 버튼을 클릭한 경우<br />

							2. 택배사 시스템에서 배송완료로 확인된 경우<br /> 3, 관리자가 수동 변경한 경우
					</SPAN></FONT><br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_7"
					id="qna_question_delivery_7" style="font-size: 10px;">단계별 배송상태가
						궁금합니다 </a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_7">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 배송상태는 총 7단계로 구분되고 나의쇼핑 >
								전체주문내역에서 확인 가능 승인될 수 있음 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt"> 1.
							입금대기 : 주문완료 되었으나 입금 미확인 상태<br /> 2. 결제대기 : 결제완료 되었으나 판매자에게 주문서
							전달되기 전으로 1분~15분 소요<br /> 3. 결제완료 : 주문서는 발급 되었으나 판매자가 주문을 확인하지 않은
							상태<br /> 4. 배송준비중 : 판매자가 주문건 확인 후 상품 준비 중인 단계, 배송정보 수정 및 주문취소는
							판매자 확인 필요<br /> 5. 배송시작 : 상품 발송된 상태로 상품 발송된 이후에는 배송정보 수정 및 주문취소
							불가<br /> 6. 배송중 : 택배사에서 상품을 배송 중인 단계<br /> 7. 배송완료 : 구매자 수령확인
							2~3일 후 배송완료로 자동 전환
					</SPAN></FONT><br /> <br /> <br /> <a href="#"><font color="blue"
						face="나눔 고딕"><b> <span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_8"
					id="qna_question_delivery_8" style="font-size: 10px;">배송준비중
						상태인데 상품이 도착했습니다</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_8">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 배송준비중 상태라도 상품이 배송될 수 있으므로
								안심하고 수령 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							판매자가 운송장 번호를 입력하지 않고 물건을 발송했다면 배송준비중이라도 상품이 배송될 수 있습니다. 전체주문내역에서
							수취확인 및 구매결정 버튼을 누르면 구매결정됩니다.</SPAN></FONT><br /> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_9"
					id="qna_question_delivery_9" style="font-size: 10px;">주문한 상품의
						배송상태는 어디서 확인 하나요?</a><br /></li>
			</h3>
			<div id="hide_reply_delivery_9">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역에서 배송상태 확인 가능
								<br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">주문한
							상품이 배송시작/배송중이라면 배송추적이 가능합니다. </SPAN></FONT> <br /> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_10"
					id="qna_question_delivery_10" style="font-size: 10px;">배송사고 책임은
						누가 지나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_10">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 배송사고 원인 제공자가 책임 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							파손상품이 배송되면 겉포장 및 내부 상품들을 배달상태 그대로 보존해야 합니다. 배송 중 발생한 사고/훼손은 판매자
							또는 택배사와 협의해 주세요. GOOPLE에서는 상품 배송 중 발생하는 사고에 대해서 관여하지 않습니다. ※ 판매자
							책임으로 인정되는 경우<br /> 1. 포장이 부실하여 배송 중 상품이 파손/분실된 경우<br /> 2. 배송시
							요구사항을 확인하지 않아 문제가 발생한 경우<br /> 3. 배송사 측에 배송불가품을 사전에 확인시키지 않아 사고가
							발생한 경우<br /> 4. 상품 발송 전 상품에 이상이 발생되었다고 판단되는 경우<br /> ※ 구매자 책임으로
							인정되는 경우<br /> 1. 배송지 불명(전화,주소지,성명 등)으로 인한 오배송<br /> 2. 구매자
							부재중으로 인한 배송지연/반송<br /> 3. 파손사고 접수 시 배달 당시 박스/포장재를 보관하지 않고 파손된
							상품만 보관한 경우<br /> 4. 상품 배송 후 피해보상 청구일 이내에 이의 제기가 없었을 경우<br /> 5.
							상품 배달 후 상품에 이상이 발생되었다고 판단되는 경우<br /> ※ 배송사 책임으로 인정되는 경우<br />
							1. 배송도중 파손 되었다고 판단되는 경우<br /> 2. 배송도중 분실 되었다고 판단되는 경우
					</SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
		</div>

		<div id="qna_menu_4">
			<h3>
				<li><a href="#qna_question_delivery_11"
					id="qna_question_delivery_11" style="font-size: 10px;">배송지를
						변경하고 싶습니다</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_11">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역 > 주문상세보기 >
								배송정보 수정에서 변경 가능 결제대기, 결제완료 상태에서만 변경 가능하고 배송준비중이라면 판매자에게 변경 가능여부를
								꼭 확인해 주세요.</B></SPAN></FONT> <br /> <br /> <FONT face="나눔고딕"><SPAN
						style="FONT-SIZE: 10pt"> 주소를 변경 했더라도 이미 상품이 발송 되었다면 적용되지 않을
							수 있습니다.<br /> ※ 배송준비중 이후 상태에서는 주소지 변경 불가<br /> ※ 상품이 발송된 경우
							택배사로 변경 가능여부 문의 > 추가배송비 발생할 수 있음
					</SPAN></FONT><br />

				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_12"
					id="qna_question_delivery_12" style="font-size: 10px;">배송지 주소를
						변경했는데 전 주소로 배송되었어요.</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_12">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 상품발송 전 변경 요청 되었는 지 확인 </B></SPAN></FONT><br />
					<br /> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							배송지 변경이 가능한 결제대기,결제완료 상태에서 변경을 했거나 판매자와 협의 했음에도 불구하고<br /> 변경 전
							주소로 발송되었다면 판매자 또는 고객센터로 문의해 주세요.<br /> ※ 배송시 요청사항에 변경할 주소를 기재해도
							반영되지 않음 (배송비 문제 발생 시 구매자 부담)
					</SPAN></FONT> <br />
					</li>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_13"
					id="qna_question_delivery_13" style="font-size: 10px;">배송 지연으로
						취소했는데 상품이 배송되었어요</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_13">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 판매자측으로 반송(수취거부) </B></SPAN></FONT> <br />
					<br /> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
							상품을 사용하고 싶거나 재구매 의사가 있다면 고객센터(1566-0000)로 문의해 주세요. </SPAN></FONT><br />
					</li>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_14"
					id="qna_question_delivery_14" style="font-size: 10px;">한번에 주문한
						상품이 왜 따로 오나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_14">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 물품 재고에 따라 각각 발송 될 수도 있습니다
						</B></SPAN></FONT> <br />
					<br />
					<FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt"> 상품
							재고 부족시 바로 발송가능한 물품 먼저 보내드립니다.</SPAN></FONT>
				</h8>
			</div>
			<h3>

				<li><a href="#qna_question_delivery_15"
					id="qna_question_delivery_15" style="font-size: 10px;">GOOPLE에서
						방문 수령 가능한가요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_15">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 직접 방문으로 상품구매 또는 수령 불가 </B></SPAN></FONT> <br />
					<br />
					<br />
					<FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">방문
							수령은 불가합니다.</SPAN></FONT>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_16"
					id="qna_question_delivery_16" style="font-size: 10px;">파손된 상품이
						배송되었어요</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_16">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 배송사에 사고접수 후 겉포장,물품을 배달 당시
								그대로 보관한 상태에서 판매자와 반품/교환여부 협의 </B></SPAN></FONT> <br /> <br />
				</h8>
				<FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">포장재가
						남아있지 않고 물품만 보관하면 배송사에서 사고처리를 해주지 않으므로 유의 부탁 드립니다. <br /> 이런 FAQ를
						찾고 계신가요? <br /> 배송사고 책임은 누가 지나요?
				</SPAN></FONT><br />
				</h8>
			</div>
		</div>

		<!-- <div id="qna_menu_5">
			<h3>
			<li><a href="#qna_question_delivery_17"
				id="qna_question_delivery_17" style="font-size: 10px;">배송비를 선결제하면 좋은점이 있나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_17">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 상세페이지에서 배송비 결제여부 선택 후 결제 시
								편리하게 배송비 결제 가능 </B></SPAN></FONT><br /> <br /> <FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">판매자 설정에 따라 배송비 선결제가 불가 할 수 있고 이런
					경우 택배기사님에게 배송비를 지불하면 됩니다.<br /> 배송비 선결제가 불가한 상품인데 실수로 배송비를 함께 입금한
					경우 차액은 스마일캐시로 환불됩니다.</SPAN></FONT><br />

				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_18"
					id="qna_question_delivery_18" style="font-size: 10px;">배송비를 선결제 했는데 택배사에서 배송비를 요구합니다 </a><br />
					</a></li>
			</h3>
			<div id="hide_reply_delivery_18">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역 > 배송비 결제여부
								확인 후 판매자에게 택배비 확인 요청 </B></SPAN></FONT> 
								
								<br /> <br />
								<FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
								일단 배송비용 지불하고 상품수령을 한 후
					판매자에게 택배비 환불을 문의해 주세요.</SPAN></FONT> <br />

				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_19"
					id="qna_question_delivery_19" style="font-size: 10px;">상품을 배송했는데 일부만 배송되었어요(배송누락/상품누락)</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_delivery_19">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"><SPAN
						style="FONT-SIZE: 10pt"><B>√ 분리배송 여부 확인 후 판매자에게 재발송 요청
						</B></SPAN></FONT><br /> <br /> 
						<FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
						부피가 큰 상품은 여러 박스로 분리되어 발송될 수 있기 때문에 분리 배송 여부를 먼저
					확인해 주세요.<br /> 상품 누락인 경우 상품 상세페이지 문의하기 또는 판매자 연락처로 재발송 요청을 해주세요. <br />
					</SPAN></FONT>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_delivery_20"
					id="qna_question_delivery_20" style="font-size: 10px;">부재중으로 상품이 반송되었어요</a><br /> </a></li>
			</h3>
			<div id="hide_reply_delivery_20">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역 > 배송추적 클릭 >
								운송장 번호 확인 후 반품여부 택배사 문의 </B></SPAN></FONT> <br /> <br />
								<FONT face="나눔고딕"><SPAN style="FONT-SIZE: 10pt">
								판매자에게 이미 반송되었다면 판매자와 협의
					후 재배송 받을 수 있습니다.<br /> 배송비는 구매자 부담이고 상황에 따라 배송비가 추가될 수 있으니 배송비는
					판매자와 협의해 주세요.</SPAN></FONT><br /> <br />
				</h8>
			</div> -->
		<div id="qna_menu_5">
			<h3>
				<li><a href="#qna_question_order_1" id="qna_question_order_1"
					style="font-size: 10px;">상품 주문은 어떻게 하나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_1">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 상품 상세페이지에서 구매하기 또는 장바구니 버튼
								누른 후 결제 진행 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">주문결제
							페이지에서 상품정보, 옵션이 맞는지 다시 한번 확인해 주세요. <br /> 배송지 정보, 결제정보 입력 후 결제하기
							버튼을 누르면 주문이 완료됩니다.<br /> 장바구니는 최대 30개 상품이 저장되고 7일 동안 결제 이력이 없을
							경우 자동 삭제됩니다.<br /> ※ 로그인 하지 않은 상태에서 장바구니에 보관한 상품은 인터넷 창 종료 시 삭제
					</SPAN></FONT> <br />
					</li>
				</h8>

			</div>
			<h3>
				<li><a href="#qna_question_order_2" id="qna_question_order_2"
					style="font-size: 10px;">구매내역은 어디에서 확인할 수 있나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_2">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역 > 주문상세보기 클릭
								<br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">주문상세보기
							클릭 시 선택정보, 옵션내역, 할인내역, 결제정보 등 상세정보 확인 가능합니다.</SPAN></FONT> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>

				</h8>

			</div>
			<h3>
				<li><a href="#qna_question_order_3" id="qna_question_order_3"
					style="font-size: 10px;">장바구니로 여러 상품을 무통장입금으로 주문했는데 일부 상품만 주문해도
						되나요? </a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_3">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 전체 주문취소 후 결제할 상품만 재주문 <br />
								<br />
						</B></SPAN></FONT><FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt"> 일부
							상품의 금액만 입금되면 입금확인이 되지 않습니다.<br /> 기존 미입금 상태의 주문 건 중 입금 금액과 동일한
							금액의 주문 건이 있다면<br /> 임의로 다른 주문 건이 입금확인 처리될 수 있으니 주의해 주세요.
					</SPAN></FONT><br />
					<br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>

				</h8>

			</div>
			<h3>
				<li><a href="#qna_question_order_4" id="qna_question_order_4"
					style="font-size: 10px;">결제대기 상태로 보이는데 어떻게 하나요? </a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_4">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ PG사 또는 VAN사 승인 기다리는 과정 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">휴대폰결제,
							카드결제 등의 결제승인을 기다리는 과정입니다.<br /> 최대 3분 이내까지 결제대기 상태가 지속되면 GOOPLE
							고객센터(1566-0000)로 문의해 주세요.
					</SPAN></FONT><br /> <br />
				</h8>

			</div>
			<h3>
				<li><a href="#qna_question_order_5" id="qna_question_order_5"
					style="font-size: 10px;">주문번호는 어디서 확인 하나요? </a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_5">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역에서 확인 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">전체주문내역에서
							확인 가능합니다.</SPAN></FONT><br /> <br /> <a href="#"><font color="blue"
						face="나눔 고딕"><b> <span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_6" id="qna_question_order_6"
					style="font-size: 10px;">소비자 불만족은 어디서 어떻게 처리되나요? </a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_6">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 전자상거래 등에서의 소비자보호에 관한 법률 및
								관계법령 규정 내용을 기준으로 처리 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">GOOPLE은
							소비자 불만이나 분쟁의 원인 등을 조사하여 영업일 3일 이내에 진행 경과를 소비자에게 알리고 <br /> 영업일
							10일 이내에 조사 결과 또는 처리 방안을 소비자에게 알리고 있습니다.
					</SPAN></FONT> <br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_7" id="qna_question_order_7"
					style="font-size: 10px;">결제한 카드와 다른 카드사 명의로 승인이 되었습니다 </a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_7">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 계열카드 결제 시 결제카드사와 다른 카드사로
								승인될 수 있음 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">일부
							카드사가 자체적으로 승인을 낼 수 없어 신한, BC, KB(국민) 등의 카드사를 통해 결제를 내는 것으로 불이익은
							전혀 없습니다.<br /> 1. 하나, 하나VISA 카드: BC카드 승인br /> 2. 씨티(한미), 우리,
							신세계한미카드 : 국민카드 승인<br /> 3. 제주, 전북, 광주, 조흥, 수협카드 : 신한카드 승인
					</SPAN></FONT><br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_8" id="qna_question_order_8"
					style="font-size: 10px;">무통장입금 시 주문자명과 다른 이름으로 입금해도 되나요?</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_order_8">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 전용계좌로 정확한 금액을 입금하면 입금확인 가능
								<br /> <br />
						</B></SPAN></FONT> 입금액이 정확하지 않으면 입금확인이 지연될 수 있습니다.<br /> <br /> <br /> <a
						href="#"><font color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">입금내역확인</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_9" id="qna_question_order_9"
					style="font-size: 10px;">주문하고 입금했는데 GOOPLE에서 주문내역을 찾을 수 없다고 합니다</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_order_9">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 배송상태가 결제완료 상태인지 확인 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">나의쇼핑
							> 전체주문내역에서 배송상태가 결제완료인지 확인해 주세요.<br /> 판매자가 주문내역을 확인하려면 결제 후 10분
							정도 소요되고<br /> 판매자가 주문내역을 확인하면 배송상태가 배송준비중으로 변경됩니다.
					</SPAN></FONT><br /> <br /> <br /> <a href="#"><font color="blue"
						face="나눔 고딕"><b> <span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
		</div>
		<div id="qna_menu_6">
			<h3>
				<li><a href="#qna_question_order_10" id="qna_question_order_10"
					style="font-size: 10px;">무통장계좌로 입금했는데 다른 주문건이 입금 확인되었어요.</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_order_10">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 결제금액보다 많은 금액을 입금했습니다 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">결제금액만큼
							자동체결 후 입금차액은 고객센터로 문의 주시면 환급 가능합니다. <br /> 환불계좌 번호는 아이디 명의와 일치하지
							않으면 환급이 어렵습니다.
					</SPAN></FONT> <br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_11" id="qna_question_order_11"
					style="font-size: 10px;">무통장입금 결제는 어떻게 하나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_11">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 결제 시 무통장입금 > 은행 선택 후 결제하기
								> 주문 시 안내되는 입금기한 이내 입금 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">기한
							내에 입금확인되지 않으면 주문은 자동 취소됩니다.<br /> 입금확인 전에는 입금대기 상태로, 입금확인 후에는
							결제대기/결제완료 상태로 표시됩니다.<br /> 통장이나 카드가 없으면 ATM에서 입금이 불가할 수 있습니다.
					</SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">전체주문내역</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_12" id="qna_question_order_12"
					style="font-size: 10px;">입금을 했는데 게속 입금대기로 나와요.</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_12">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 주문 시 입력한 결제정보와 입금정보가 다를 경우
								입금확인 지연 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">입금내역
							및 전용계좌 정보 확인 가능합니다. </SPAN></FONT><br /> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">입금내역 확인</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_13" id="qna_question_order_13"
					style="font-size: 10px;">입금내역은 어디에서 확인하나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_13">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 입금내역확인 입금확인 지연 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">입금일자,
							입금자명, 은행명, 입금액을 정확하게 입력해야 조회 가능합니다. </SPAN></FONT> <br /> <br /> <a href="#"><font
						color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">입금내역 확인</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_14" id="qna_question_order_14"
					style="font-size: 10px;">무통장입금 주문 시 선택한 은행이 아닌 다른 은행 가상졔롸로 입금
						했어요.</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_14">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 주문시 결제정보와 일치하지 않으면 입금확인 지연
								<br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">입금확인은
							가능하지만 주문 시 결제정보와 일치하지 않아 입금확인이 지연될 수 있습니다. </SPAN></FONT><br /> <br /> <br />
					<a href="#"><font color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">입금내역 확인</span>
						</b></font></a>
				</h8>
			</div>
		</div>
		<div id="qna_menu_7">
			<h3>
				<li><a href="#qna_question_order_15" id="qna_question_order_15"
					style="font-size: 10px;"> 주문하지 않았는데 카드 승인 문자가 왔어요.</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_15">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 나의쇼핑 > 전체주문내역 > 주문상세보기 >
								카드승인번호 확인 후 고객센터 문의(1566-0000) <br /> <br />
						</B></SPAN></FONT><FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt"> 가족
							중 카드를 사용한 분이 없는 지 먼저 확인해 보시고<br /> 사용한 사람이 없다면 카드 승인번호를 확인하여
							고객센터로 문의 부탁 드립니다.<br /> 주문상세보기 > 카드전표 버튼을 누르면 승인번호 확인 가능 합니다.<br />

							만약 주문내역에서 확인이 안될 경우 카드사로 승인번호 확인해 주세요.
					</SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">입금내역 확인</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_16" id="qna_question_order_16"
					style="font-size: 10px;"> 법인카드/대표자명의가 아닌 다른 카드로 결제해도 세액 공제를 받을
						수 있나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_16">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 법인은 법인카드, 개인사업자는 대표자명의
								신용카드에 대해 적용되는 것이 원칙 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">사업자
							소속 임직원 명의 또는 부득이한 경우에 가족 명의(배우자 또는 부양가족) 카드를 사용한 경우<br /> 공급받은
							재화 또는 용역이 자기의 과세사업 관련 여부(구체적 사실)에 따라 매입세액공제를 받을 수 있습니다.
					</SPAN></FONT><br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">입금내역 확인</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_17" id="qna_question_order_17"
					style="font-size: 10px;"> 신용카드로 결제했는데 30개월/60개월 할부로 표기 되어 있어요.</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_order_17">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 신용카드 포인트 결제 시 선택 할부 +30개월
								또는 60개월로 표기 <br /> <br />
						</B></SPAN></FONT> <br /> <br /> <a href="#"><font color="blue" face="나눔 고딕"><b>
								<span style="font-size: 10pt;">신용카드 포인트 결제 안내</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_18" id="qna_question_order_18"
					style="font-size: 10px;"> 무이자 할부 상품을 구매했는데 할부수수료가 청구 되었어요.</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_order_18">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 다음과 같은 경우 무이자 할부가 적용되지 않을
								수 있음 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">1.
							일정금액 미만일 경우<br /> 2. 무이자할부 카드 또는 무이자할부 지원 개월 수가 아닌 경우<br /> 3.
							부분무이자 결제 시 1~2회 차 등 일부 할부 수수료 청구
					</SPAN></FONT><br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_19" id="qna_question_order_19"
					style="font-size: 10px;"> 신용카드 한도 초과 시 부족한 금액은 현금으로 결제할 수 있나요?</a><br />
					</a></li>
			</h3>
			<div id="hide_reply_order_19">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 카드결제와 현금결제는 혼용 불가 <br />
								<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">다른
							카드로 결제를 하거나 부족한 금액은 스마일캐시, 제휴사 포인트 등으로 결제해 주세요.</SPAN></FONT><br /> <br /> <a
						href="#"><font color="blue" face="나눔 고딕"><b> <span
								style="font-size: 10pt;">입금내역 확인</span>
						</b></font></a>
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_20" id="qna_question_order_20"
					style="font-size: 10px;"> 법인카드로 결제할 수 있나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_20">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ G마켓에서 판매하는 모든 상품은 법인카드로 결제
								가능 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">할부결제
							및 포인트 사용은 불가하오니 참고해 주세요.</SPAN></FONT><br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_21" id="qna_question_order_21"
					style="font-size: 10px;"> 구매자와 다른 명의의 신용카드로 결제할 수 있나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_21">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 카드 소유자 본인이 입증된 경우 다른 명의의
								신용카드로 결제 가능 <br /> <br />
						</B></SPAN></FONT> <br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_22" id="qna_question_order_22"
					style="font-size: 10px;"> 카드사 연락처 안내</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_22">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 카드사 연락처 <br /> <br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">
							1. 국민카드 1588-1688 <BR />2. 신한카드 1544-7000<br /> 3. 삼성카드
							1588-8700<br /> 4. 현대카드 1577-6000<br /> 5. 롯데카드 1588-8100<br />
							6. 하나카드 1800-1111<br /> 7. 비씨카드 1588-4000<br /> 8. 우리카드
							1588-9955<br /> 9. 씨티카드 1566-1000<br /> 10. 농협카드 1644-4000<br />
							11. 수협카드 1588-1515<br /> 12. 광주은행카드 1588-3388<br /> 13. 전북은행카드
							1588-4477<br /> 14. 제주은행카드 1588-0079
					</SPAN></FONT> <br /> <br />
				</h8>
			</div>
			<h3>
				<li><a href="#qna_question_order_23" id="qna_question_order_23"
					style="font-size: 10px;"> 신용/체크카드로 결제하려면 어떻게 하나요?</a><br /> </a></li>
			</h3>
			<div id="hide_reply_order_23">
				<h8>
					<FONT color=#329f2b face="나눔 고딕"> <SPAN
						style="FONT-SIZE: 10pt"><B>√ 결제 페이지에서 신용/체크카드 선택 > 카드정보
								선택 > 결제하기 클릭 <br />
							<BR />
							<br />
						</B></SPAN></FONT> <FONT face="나눔고딕"> <SPAN style="FONT-SIZE: 10pt">결제
							시 할부 개월 수 선택 가능하지만 기프트카드, 체크(직불)카드, 법인카드는 일시불 결제만 가능합니다.<br />

							할부 선택 시 할부수수료를 확인해 주세요. 배송지가 국내 주소지인 경우 해외 카드 결제는 불가합니다.<br />
							결제 완료 후에는 할부 개월 수, 카드 정보 등 변경은 불가하오니 결제하기 전 정보가 정확한지 확인해 주세요.
					</SPAN></FONT><br /> <br />
				</h8>
			</div>
		</div>
	</div>
	 </div>
     </div>




</body>
</html>
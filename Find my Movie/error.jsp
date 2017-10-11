<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ page import="findMovie.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Find my Movie - The Online Movie Recommendation Site</title>

<link rel="stylesheet" href="css/bootstrap.min.css"   type="text/css" media="all" />
<!-- Custom Theme files -->


<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<link rel="stylesheet" href="css/mystyle.css"   type="text/css" media="all"  />



<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link rel="icon" type="image/png" href="images/findmymovie/movie_icon.png">
</head>
<body>
	<!-- header-section-starts -->
	<div class="full">
					<div class="menu">
				<ul>
					<li><a class="active" href="findmymovie.jsp"><i class="home"></i></a></li>
				
					<li><a href="movieList.jsp"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
					<li><a  href="userProfile.jsp"><div class="user"><i class="searching"><img src="images/findmymovie/user_icon.png" alt="" style="position:relative; left:15px; padding-top:14px"/></i><i class="searching1"></i></div></a></li>
					<li><a href="contact.jsp"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
				</ul>
			</div>
		<div class="main">
		<div class="error-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="findmymovie.html"><img src="images/findmymovie/logo.png" alt="" /></a>
					<p>The Online Movie Recommendation Site</p>
				</div>
				<!--div class="search v-search">
					<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
					</form>
				</div-->
				<div class="clearfix"></div>
			</div>
			<div class="error-404 text-center">
				<img src="images/findmymovie/error.jpg" alt="" />
				<p>Sorry this was unexpected</p><br>
				<div class="alert alert-danger" role="alert"><%= exception.getMessage() %></div>
				
	
				<a class="b-home" href="findmymovie.jsp" style="font-size:15px">Back to Home!<i class="book"></i></button> </a>
			</div>	
<div class="footer">
				<h6>Disclaimer : </h6>
					<p class="claim">We do not own or distribute any of the movies referenced here. The rights to all movies belong to their respective owners.</p>
						<a href="example@mail.com">findmymovie@mail.com</a>	
			</div>	
	</div>
	<div class="clearfix"></div>
	</div>
	</div>
</body>
</html>
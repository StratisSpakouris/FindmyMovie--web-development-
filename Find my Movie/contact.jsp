<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<%@ page import="findMovie.*,java.io.*,java.sql.*,java.util.List,java.util.ArrayList"%>
-->
<!DOCTYPE html>
<html>
<head>
<title>Find my Movie - The Online Movie Recommendation Site</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/mystyle.css"   type="text/css" media="all"  />
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
					<li><a href="findmymovie.jsp"><i class="home"></i></a></li>
					<li><a href="movieList.jsp"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
					<li><a  href="userProfile.jsp"><div class="user"><i class="searching"><img src="images/findmymovie/user_icon.png" alt="" style="position:relative; left:15px; padding-top:14px"/></i><i class="searching1"></i></div></a></li>
					<li><a class="active" href="contact.jsp"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
				</ul>
			</div>
		<div class="main">
		<div class="contact-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="findmymovie.jsp"><img src="images/findmymovie/logo.png" alt="" /></a>
					<p>The Online Movie Recommendation Site</p>
				</div>
				<%
				 	User us = (User) session.getAttribute("user-object");
									
					if (us==null) {
								
				%>
				<%@ include file="rightMenu.jsp"  %>
				<%@ include file="register_navigation.jsp"  %>
				<div class="clearfix"></div>
				
				<%} else {%>
								
								<div class="nav navbar-nav navbar-right">
									<li><a href="aboutUs.jsp">
										<b>About us</b></a>
									</li>
									<li class="">
										<a href="logout.jsp"><span class="glyphicon glyphicon-log-out">
										</span>Logout</a>
									</li>
									<div class="search">
										<form>
										<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
										<input type="submit" value="">
										</form>
									</div>
								</div>
								
				<%}%>
				<div class="clearfix"></div>
				</div>
			</div>
			<!---contact-->
		<div class="main-contact">
		 <h3 class="head">Contact us!</h3>
		 <p>We're always here to answer your questions</p>
		 <div class="contact-form">
			 <form>
				 <div class="col-md-6 contact-left">
					  <input type="text" placeholder="Name" >
					  <input type="text" placeholder="E-mail" >
					  <input type="text" placeholder="Phone" >
				  </div>
				  <div class="col-md-6 contact-right">
					 <textarea placeholder="Message"></textarea>
				
					 <input type="submit" id="myWish" value="SEND"/>
				 </div>
				
				 <div class="clearfix"></div>
			 </form>
			 <br>
			  <div class="alert alert-success" id="success-alert">
							<button type="button" class="close" data-dismiss="alert">x</button>
							<strong>Message has been sent!</strong>
							</div>
	     </div>
		 
		 <div class="contact_info">
			 <h3>Find Us Here</h3>
			 <div class="map">
				<iframe width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#000;text-align:left;font-size:12px">View Larger Map</a></small>
			</div>
		</div>
</div>
	<div class="footer">
		<h6>Disclaimer : </h6>
		<p class="claim">We do not own or distribute any of the movies referenced here. The rights to all movies belong to their respective owners.</p>
		<a href="example@mail.com">findmymovie@mail.com</a>
		
	</div>
	</div>
			<script src="js/jquery.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			<script>
$(document).ready (function(){
            $("#success-alert").hide();
            $("#myWish").click(function showAlert() {
                $("#success-alert").alert();
                $("#success-alert").fadeTo(5000, 500).slideUp(500, function(){
               $("#success-alert").slideUp(500);
                });   
            });
 });
	</script>	
	<div class="clearfix"></div>
	</div>
</body>
</html>
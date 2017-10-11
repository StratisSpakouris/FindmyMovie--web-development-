<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>

<%@ page import="findMovie.*,java.io.*,java.sql.*,java.util.List,java.util.ArrayList"
 %>
<!DOCTYPE html>
<html>
<head>
<title>Find my Movie - The Online Movie Recommendation Site</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="css/bootstrap.min.css"   type="text/css" media="all" />
<link rel="stylesheet" href="css/mystyle.css"   type="text/css" media="all"  />
 <!--link rel="stylesheet" href="css/bootstrap.min.css"-->
  <!--link rel="stylesheet" href="dist/css/bootstrap-select.css"-->
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
  <script src="dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="dist/sweetalert.css">
<script src="js/bootstrap.min.js"></script >
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 
<!-- Custom Theme files -->
<meta charset ="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--meta http-equiv="Content-Type" content="text/html; charset=utf-8" /-->
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
		<div class="header">
			<div class="top-header">
				<div class="logo">
					<a href="findmymovie.jsp"><img src="images/findmymovie/logo.png" alt="" /></a>
					<p>The Online Movie Recommendation Site</p>
				</div>
				
			
				 <div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
				
			</div>
				
				
				<div id="navbar" class="navbar-collapse collapse">
				<div class="nav navbar-nav navbar-right">
				
				
				<%session.setAttribute("current-page", "findmymovie.jsp");%>
				
				
				
				
				<%User us = (User) session.getAttribute("user-object");
			if (us!=null) {
				
				%>
				
				
				
				
				<li><a href="aboutUs.jsp">
						<b>About us</b></a>
					</li>
					<li class=""><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span>
						Logout</a></li>
						
						
				
				
				
			<%}else{%>
				
				
				<li><a href="aboutUs.jsp">
						<b>About us</b></a>
					</li>
					<li><a id="loginbtn" data-toggle="modal" data-target="#loginModal">
						<span class="glyphicon glyphicon-log-in"></span> Login</a>
					</li>
					<li><a id="registerbtn" data-toggle="modal" data-target="#registerModal">
						<span class="glyphicon glyphicon-user"></span> Register</a>
					</li>
			<%}%>
			
			
				<li class="search">
			
					<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
					</form>
				
				</li>
				</div>
										
					
				
				
				
				</div>
				</div>
				
		
		</div>
			<div id="loginModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login </h4>
					</div>
					<div class="modal-body">

						<form action="loginController.jsp" method="post" class="form-horizontal">
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">Username</label>
								<div class="col-sm-6">
									<input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
								</div>							
							</div>
							<div class="form-group">
								<label for="password" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-6">
									<input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
								</div>								
							</div>
						
							<div class="form-group">
								<div class="col-sm-6 col-sm-offset-2">
									<button class="btn btn-success" type="submit">Sign in</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</div>
							</div>
							
						</form>
					</div> <!-- /.modal-body -->
				</div> <!-- /.modal-content -->
			</div>  <!-- /.modal-dialog -->
		</div> <!-- /#loginModal -->
		<!-- End login modal -->
		
		
		
		
		
		
		<div id="registerModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Register </h4>
					</div>
					<div class="modal-body">

						<form action="registerController.jsp" method="post" class="form-horizontal">
						<div class="form-group">
								<label for="name" class="col-sm-2 control-label">First Name</label>
								<div class="col-sm-6">
									<input type="text" name="name" id="name" class="form-control" placeholder="First Name" required>
								</div>								
							</div>
							<div class="form-group">
								<label for="surname" class="col-sm-2 control-label">Last Name</label>
								<div class="col-sm-6">
									<input type="text" name="surname" id="surname" class="form-control" placeholder="Last Name"required >
								</div>								
							</div>
							
							<div class="form-group">
								<label for="email" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-6">
									<input type="text" name="email" id="email" class="form-control" placeholder="Email" required >
								</div>								
							</div>
							
							
							
							
							
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">Username</label>
								<div class="col-sm-6">
									<input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
								</div>							
							</div>
							
							<div class="form-group">
								<label for="password" class="col-sm-2 control-label">Create Password</label>
								<div class="col-sm-6">
									<input type="password" name="password" id="password" class="form-control" placeholder="Create Password" required >
								</div>								
							</div>
							

							<div class="form-group">
								<div class="col-sm-6 col-sm-offset-2">
									<button class="btn btn-success" type="submit">Sign up</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</div>
							</div>
							
						</form>
					</div> <!-- /.modal-body -->
				</div> <!-- /.modal-content -->
			</div>  <!-- /.modal-dialog -->
		</div> <!-- /#loginModal -->
		<!-- End login modal -->
		
		
				<div class="clearfix"></div>
			<br>
			<br>
		
		<div class="des">
		 <h4><center>Looking for a good movie to watch?</center></h4><br>
		
		<form  action="findMovieController.jsp" method="post" class="form-horizontal" >
		
	<div class="form-group" >
      <label for="genre" class="col-lg-4 control-label">Genre</label>
      <div class="col-lg-4">
        <select name="genre" id="genre" class="selectpicker show-tick form-control">
			<option value="any" >Any Genre</option>		
			<option value="action">Action Movies</option>
			<option value="adventure">Adventure Movies</option>
			<option value="animation">Animation Movies</option>
			<option value="comedy">Comedy Movies</option>
			<option value="crime">Crime Movies</option>
			<option value="drama">Drama Movies</option>
			<option value="family">Family Movies</option>
			<option value="horror">Horror Movies</option>
			<option value="mystery">Mystery Movies</option>
			<option value="sci-fi">Sci-Fi Movies</option>
			<option value="thriller">Thriller Movies</option>
			<option value="war">War Movies</option>
			<option value="western">Western Movies</option>
        </select>
      </div>
	 </div>
	
	
	<div class="form-group" >
      <label for="decade" class="col-lg-4 control-label">Decade</label>
      <div class="col-lg-4">
        <select name="decade" id="decade" class="selectpicker show-tick form-control">
			<option value="any" >Any Decade</option>		
			<option value="1980s">1980s</option>
			<option value="1990s">1990s</option>
			<option value="2000s">2000s</option>
			<option value="2010s">2010s</option>
			        </select>
      </div>
	 </div>
	
	
	<div class="form-group">
      <label for="findmymovierating" class="col-lg-4 control-label">FindmyMovie Rating</label>

      <div class="col-lg-4">
        <select name="findmymovierating" id="findmymovierating" class="selectpicker show-tick form-control" >
		
		  <option value="0">Any Rating</option>
          <option value="6">Rated Over 6</option>
          <option value="6.5">Rated Over 6.5</option>
          <option value="7">Rated Over 7</option>
          <option value="7.5">Rated Over 7.5</option>
		  <option value="8">Rated Over 8</option>
          <option value="8.5">Rated Over 8.5</option>
		  <option value="9">Rated Over 9</option>
        </select>
		
      </div>
	  
	  
    </div>

 
    <div class="form-group">
      <label for="imdbrating" class="col-lg-4 control-label">IMDb Rating</label>

      <div class="col-lg-4">
        <select name="imdbrating" id="imdbrating" class="selectpicker show-tick form-control" >
		  <option value="0">Any Rating</option>
          <option value="6">Rated Over 6</option>
          <option value="6.5">Rated Over 6.5</option>
          <option value="7">Rated Over 7</option>
          <option value="7.5">Rated Over 7.5</option>
		  <option value="8">Rated Over 8</option>
          <option value="8.5">Rated Over 8.5</option>
		  <option value="9">Rated Over 9</option>
        </select>
		<br>
		
		<button type="submit" class="btn btn-warning" style=font-size:15px>Find my Movie!<i class="book"></i></button>
		
	
      </div>
	  
    </div>
	</form>
	</div>
	</div>
	<div class="clearfix"></div>

		<div class="review-slider">
			<ul id="flexiselDemo1">
				<li><a href="singleMovie.jsp?id=106"><img src="images/findmymovie/r1.jpg" alt="" /></a></li>
				<li><a href="singleMovie.jsp?id=116"><img src="images/findmymovie/r2.jpg" alt=""/></a></li>
				<li><a href="singleMovie.jsp?id=117"><img src="images/findmymovie/r3.jpg" alt=""/></a></li>
				<li><a href="singleMovie.jsp?id=115"><img src="images/findmymovie/r4.jpg" alt=""/></a></li>
				<li><a href="singleMovie.jsp?id=114"><img src="images/findmymovie/r4palio.jpg" alt=""/></a></li>
				<!--li><img src="images/findmymovie/r5.jpg" alt=""/></li>
				<li><img src="images/findmymovie/r6.jpg" alt=""/></li-->
			</ul>
<script type="text/javascript">
		$(window).load(function() {
		  $("#flexiselDemo1").flexisel({
				visibleItems: 6,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: false,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 2
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 3
					},
					tablet: { 
						changePoint:768,
						visibleItems: 4
					}
				}
			});
			});
		</script>
		<%if(request.getAttribute("msg")!=null ) {%>	
		<script>
	//	document.querySelector('ul.examples li.success button').onclick = function(){
	swal("<%=request.getAttribute("msg").toString() %>", "Thank you for your Registration!", "success");
//};

</script>

	<%}%>

		<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
		</div>
		<!--div class="video">
			<iframe  src="https://www.youtube.com/embed/2LqzF5WauAw" frameborder="0" allowfullscreen></iframe>
		</div-->
	
		<!--div class="more-reviews">
			 <ul id="flexiselDemo2">
			<li><img src="images/m1.jpg" alt=""/></li>
			<li><img src="images/m2.jpg" alt=""/></li>
			<li><img src="images/m3.jpg" alt=""/></li>
			<li><img src="images/m4.jpg" alt=""/></li>
		</ul>
			<script type="text/javascript">
		$(window).load(function() {
			
		  $("#flexiselDemo2").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: false,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 2
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 3
					},
					tablet: { 
						changePoint:768,
						visibleItems: 3
					}
				}
			});
			});
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
		</div-->	
	<div class="footer">
		<h6>Disclaimer : </h6>
		<p class="claim">We do not own or distribute any of the movies referenced here. The rights to all movies belong to their respective owners.</p>
		<a href="example@mail.com">findmymovie@mail.com</a>
		
	</div>
		
	</div>
	</div>
	<div class="clearfix"></div>
</body>
</html>
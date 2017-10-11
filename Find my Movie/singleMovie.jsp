<%@page contentType="text/html; charset=UTF-8"%>


<%@ page import="findMovie.*,java.io.*,java.sql.*,java.util.List,java.util.ArrayList" %>



<!DOCTYPE html>
<html>
<head>
<title>Find my Movie - The Online Movie Recommendation Site</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css"   type="text/css" media="all" />
<link rel="stylesheet" href="css/mystyle.css"   type="text/css" media="all"  />



<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<script src="js/jquery.min.js"></script>
  <script src="dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="dist/sweetalert.css">
  
  
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
		<li><a href="findmymovie.jsp"><div class="hm"><i class="home1"></i><i class="home2"></i></div></a></li>
				
					<li><a class="active" href="movieList.jsp"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
					<li><a  href="userProfile.jsp"><div class="user"><i class="searching"><img src="images/findmymovie/user_icon.png" style="position:relative; left:15px; padding-top:14px"></i><i class="searching1"></i></div></a></li>
			<!--		<li><a href="404.html"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li> -->
					<li><a href="contact.jsp"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
				</ul>
			</div>
		<div class="main">
		<div class="single-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="findmymovie.jsp"><img src="images/findmymovie/logo.png" alt="" /></a>
					<p>Don't know what to watch next?</p>
				</div>
				<!--<div class="search v-search">
					<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
					</form>
				</div> -->
				
							
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
			
			
				<div class="search">
					<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
					</form>
				</div>
				</div>
										
					
				
				
				
				</div>
				</div>
				
				
			
				
				
				
				
			

			<% 		Movie mov = new Movie( 0,"null", 0, "null", "null", "null", "null", "null", "null", "null", 0.0, 0.0,"null") ; 
	     
					int id = 0; 
					String idString = request.getParameter("id");
					
					try {
					id = Integer.parseInt(idString);}catch (NumberFormatException e) {throw new Exception ("Invalid id");}
		
					MovieDAO dao = new MovieDAO();
					 mov = dao.findMovie(id);
					 
					
					 %> 
					 

					
					 <%session.setAttribute("current-page", "singleMovie.jsp?id="+ mov.getId());%>
					 
	   
				
				<div class="clearfix"></div>
			</div>
			
			<div class="reviews-section">
			
			
				<h3 class="head"> <%=mov.getName()%> (<%=mov.getYear()%>)</h3>
					<div class="col-md-9 reviews-grids">
						<div class="review">
							<div class="movie-pic">
								<img src="<%=mov.getImageurl()%>" alt="" />
							</div>
							<div class="review-info">
							<!--	<a class="span" href="singleMovie.jsp">mar mar  <i>Movie Review</i></a>
								<p class="dirctr"><a href="">Reagan Gavin Rasquinha, </a>TNN, Mar 12, 2015, 12.47PM IST</p> -->
								<p class="ratingview">IMDb Rating:</p>
								<!--div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div-->
								<p class="ratingview">
								&nbsp; <%=mov.getImdbRating()%>/10
								</p>
								<div class="clearfix"></div>
								<p class="ratingview c-rating">Avg Users' Rating:</p>
								<!--div class="rating c-rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div--> 	
								<p class="ratingview c-rating">								
								&nbsp; <%=mov.getFindMyMovieRating()%>/10</p>
								<div class="clearfix"></div>
												
					


							
								<div class="yrw">

				<div class="rtm text-center">
									
										
												<!--div class="ui"-->

										<a  href="favoritesController.jsp?favId=<%=mov.getId()%>">Add to Favorites</a>


												<!--/div-->
												

											
									<%if(request.getAttribute("alert")!=null ) {%>	
														
												

												<!--script>


													document.querySelector('div.examples div.timer a').onclick = function(){

													swal({
													title: "<%=request.getAttribute("alert").toString() %>",
		
													timer: 2000,
													showConfirmButton: false
														});
														};

													</script-->
			

														
													<%}%>
								

										

			
			
			
			
									</div>
									<div class="wt text">
										<a  href="wantToWatchController.jsp?wantId=<%=mov.getId()%>">Want to Watch</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<p class="info">CAST:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= mov.getActors() %> </p>
								<p class="info">DIRECTION: &nbsp;&nbsp;&nbsp;&nbsp; <%= mov.getDirector() %> </p>
								<p class="info">GENRE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= mov.getGenre() %></p>
								<p class="info">DURATION:&nbsp;&nbsp;&nbsp; &nbsp;  <%= mov.getDuration() %></p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="single">
						
							<p>STORY: <i>  <%= mov.getSummary()%>  </i></p>
						
						<div class="mar text-center">

	<h3> <a href="movieList.jsp" class="btn btn-info" role="button" style=font-size:23px > Want to find another film? </a></h3> </div>




						</div>
						
						
						
							<!-- comments-section-starts -->
	<!-- comments-section-starts -->
							 <div class="clearfix"></div>
							<div class="clearfix"></div>
							
							
	<% session.setAttribute("movie-id", mov.getId());
	
	%>
	<% List<Comment> commentList = new ArrayList <Comment>();
		commentDAO daoC = new commentDAO ();
		commentList = daoC.getComments(mov.getId());
		int i = 0; 
		if (commentList.size()== 0) { 
		%> 
		<div class="comments-section">
	        <div class="comments-section-head">
				<div class="comments-section-head-text">
					<h3>No comments for this movie yet</h3>
				</div>
				<div class="clearfix"></div>
		    </div>
			
	    </div>  
			
		<%}else {
			for (Comment com: commentList) {
			i= i+1;}
			
			%>

			<% int flag = 1;
			for (Comment com1: commentList) {
				%> 
		 <div class="comments-section">
	        <div class="comments-section-head">
				<div class="comments-section-head-text">
				<%if (flag == 1) { %>
				<h3><%=i%> Comments</h3> <% }flag = 0;%>
				</div>
				<div class="clearfix"></div>
		    </div>
			
			
			
			<div class="comments-section-grids">
				<div class="comments-section-grid">
					<div class="col-md-2 comments-section-grid-image">
					<%if (com1.getUserId()==26){%> 
						<img src="images/findmymovie/mariella.jpg" class="img-responsive" alt="" /><%}else if(com1.getUserId()==1){%> 
						<img src="images/findmymovie/despoina.jpg" class="img-responsive" alt="" />
						<%}else{%> 
						<img src="images/findmymovie/yellowUser.png" class="img-responsive" alt="" />
						<%}%>
						
					</div>
					<div class="col-md-10 comments-section-grid-text">
						<h4><%= com1.getUsername()%></h4>
						<label><%=com1.getCommentDate() %>   </label>
						<p><%=com1.getContent()%> </p>
						
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
	    </div>  
		
		
		
		
		<%} 
		} 


	%>  
	  <!-- comments-section-ends --> 
		  <div class="reply-section">
			  <div class="reply-section-head">
				  <div class="reply-section-head-text">
					  <h3>Leave Your Comment</h3>
				  </div>
			  </div> 
			  </div><br><br>
			  <%
			if (us!=null) {%>
			<div class="blog-form">
			    <form  action="commentController.jsp" method="get">
					<!--input type="text" name="name" class="text" value="Enter Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Name';}">
					<input type="text" name="email" class="text" value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}"-->
					<input type="text" name="comment" id="comment" class="text" placeholder="Comment" >
					<!--<textarea></textarea>-->
				
					<button type="submit" class="btn btn-warning" style=font-size:17px>Submit Comment!</button>
			    </form>
			 </div>
			<%}else{%> 
			
			
			<div class="alert alert-warning" style="text-align:center">
					 You must be signed-in in order to leave a comment.<a  id="loginbtn" data-toggle="modal" data-target="#loginModal" class="alert-link" style="color:#381948"> Click here to Sign in.</a> 
				</div>
			
			
			
			
			
			<%}%>
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
									<input type="text" name="surname" id="surname" class="form-control" placeholder="Last Name" required>
								</div>								
							</div>
							
							<div class="form-group">
								<label for="email" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-6">
									<input type="text" name="email" id="email" class="form-control" placeholder="Email" required>
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
									<input type="password" name="password" id="password" class="form-control" placeholder="Create Password" required>
								</div>								
							</div>
							

							
							<div class="form-group">
								<div class="col-sm-6 col-sm-offset-2">
									<button class="btn btn-success" type="submit" onClick="swal()">Sign up</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</div>
							</div>
							
						</form>
					</div> <!-- /.modal-body -->
				</div> <!-- /.modal-content -->
			</div>  <!-- /.modal-dialog -->
		</div> <!-- /#loginModal -->
		<!-- End login modal -->
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		  
		  </div>
					<div class="col-md-3 side-bar">
										<div class="featured">
			<h3>Today's Top Recommendations </h3>
							<ul>
								<li>
									<a href="singleMovie.jsp?id=101"><img src="images/findmymovie/f1.jpg" alt="" /></a>
									<p>Up(2009)</p>
								</li>
								<li>
									<a href="singleMovie.jsp?id=102"><img src="images/findmymovie/f2.jpg" alt="" /></a>
									<p>Priest(2011)</p>
								</li>
								<li>
									<a href="singleMovie.jsp?id=103"><img src="images/findmymovie/f3.jpg" alt="" /></a>
									<p>Avatar (2009)</p>
								</li>
								<li>
									<a href="singleMovie.jsp?id=104"><img src="images/findmymovie/f4.jpg" alt="" /></a>
									<p>Jurassic World (2015)</p>
								</li>
								<li>
									<a href="singleMovie.jsp?id=105"><img src="images/findmymovie/f5.jpg" alt="" /></a>
									<p> Spotlight (2015)</p>
								</li>
								<li>
									<a href="singleMovie.jsp?id=106"><img src="images/findmymovie/f6.jpg" alt="" /></a>
									<p>Big Hero 6 (2014)</p>
								</li>
								<div class="clearfix"></div>
							</ul>
						</div>
						
						<div class="entertainment">
							<h3>All Time Top Recommendations</h3>
							<ul>
								<li class="ent">
									<a href="singleMovie.jsp?id=106"><img src="images/findmymovie/f6.jpg" alt="" /></a>
								</li>
								<li>
									<a href="singleMovie.jsp?id=106">Big Hero 6 (2014)</a>
								
								</li>
								<div class="clearfix"></div>
							</ul>
							<ul>
								<li class="ent">
									<a href="singleMovie.jsp?id=107"><img src="images/findmymovie/memento.jpg" alt="" /></a>
								</li>
									<li>
									<a href="singleMovie.jsp?id=107">Memento(2009)</a>
							
								</li>
								<div class="clearfix"></div>
							</ul>
							<ul>
								<li class="ent">
									<a href="singleMovie.jsp?id=103"><img src="images/findmymovie/f3.jpg" alt="" /></a>
								</li>
								<li>
									<a href="singleMovie.jsp?id=103">Avatar(2009)</a>
								
								</li>
								<div class="clearfix"></div>
							</ul>
							<ul>
								<li class="ent">
									<a href="singleMovie.jsp?id=108"><img src="images/findmymovie/hotel.jpg" alt="" /></a>
								</li>
								<li>
									<a href="singleMovie.jsp?id=108">The Grand Budapest Hotel(2014)</a>
								
								</li>
								<div class="clearfix"></div>
							</ul>
							
						</div>
				<div class="might">
				<h4>You might also like</h4>
				<div class="might-grid">
					<div class="grid-might">
						<a href="singleMovie.jsp?id=110"><img src="images/findmymovie/fightclub.jpg" class="img-responsive" alt=""> </a>
					</div>
					<div class="might-top">
						<p><a href="singleMovie.jsp?id=110">Fight Club (1999)</a></p> 
						Drama <i> </i>
					</div>
				<div class="clearfix"></div>
				</div>
				<div class="might-grid">
					<div class="grid-might">
						<a href="singleMovie.jsp?id=111"><img src="images/findmymovie/basterds.jpg" class="img-responsive" alt=""> </a>
					</div>
					<div class="might-top">
						<p><a href="singleMovie.jsp?id=111">Inglourious Basterds (2009)</a></p> 
						Adventure,Drama, War<i> </i>
					</div>
				<div class="clearfix"></div>
				</div>
				<div class="might-grid">
					<div class="grid-might">
						<a href="singleMovie.jsp?id=112"><img src="images/findmymovie/django.jpg" class="img-responsive" alt=""> </a>
					</div>
					<div class="might-top">
						<p><a href="singleMovie.jsp?id=112"> Django Unchained (2012)</a></p> 
						Drama, Western <i> </i>
					</div>
				<div class="clearfix"></div>
				</div>
				<div class="might-grid">
					<div class="grid-might">
						<a href="singleMovie.jsp?id=113"><img src="images/findmymovie/inception.jpg" class="img-responsive" alt=""> </a>
					</div>
					<div class="might-top">
						<p><a href="singleMovie.jsp?id=113">Inception (2010)</a></p> 
						Action, Adventure, Drama, Sci-Fi <i> </i>
					</div>
				<div class="clearfix"></div>
				</div>
			</div>
			
			
				
				

					</div>

					<div class="clearfix"></div>
			</div>
			</div>
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
						visibleItems: 1
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 2
					},
					tablet: { 
						changePoint:768,
						visibleItems: 3
					}
				}
			});
			});
		</script>
			
		<%if(request.getAttribute("alert")!=null ) {%>	
										
												<script>


													//document.querySelector('div.examples div.timer div.ui a').onclick = function(){

													swal({
													title: "<%=request.getAttribute("alert").toString() %>",
		
													timer: 2000,
													showConfirmButton: false
														});
														//};

												</script>
			

														
													<%}%>
		
		
		<%if(request.getAttribute("msg")!=null ) {%>	
		<script>
	//	document.querySelector('ul.examples li.success button').onclick = function(){
	swal("<%=request.getAttribute("msg").toString() %>", "Thank you for your Registration!", "success");
//};

</script>

	<%}%>	
		
		

	
	

		<script src="js/jquery.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
		</div>		
	<div class="footer">
		<h6>Disclaimer : </h6>
		<p class="claim">We do not own or distribute any of the movies referenced here. The rights to all movies belong to their respective owners.</p>
		<a href="example@mail.com">findmymovie@mail.com</a>
		
	</div>	
	</div>
	<div class="clearfix"></div>
	</div>
</body>
</html>
				
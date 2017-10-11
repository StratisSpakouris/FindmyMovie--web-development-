<%@page contentType="text/html; charset=UTF-8"%>
<%@page errorPage="error.jsp"%>
<%@ page import="findMovie.*,java.io.*,java.sql.*,java.util.List,java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<title>Find my Movie - The Online Movie Recommendation Site</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/mystyle.css"   type="text/css" media="all"  />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
  <script src="dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="dist/sweetalert.css">
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--code for glyphicon user icon -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="icon" type="image/png" href="images/findmymovie/movie_icon.png">


<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- header-section-starts -->
	<div class="full">
			<div class="menu">
				<ul>
					<li><a href="findmymovie.jsp"><div class="hm"><i class="home1"></i><i class="home2"></i></div></a></li>
				<!--	<li><a href="videos.html"><div class="video"><i class="videos"></i><i class="videos1"></i></div></a></li> -->
					<li><a href="movieList.jsp"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
					<li><a class="active" href="userProfile.jsp"><div class="user"><i class="searching"><img src="images/findmymovie/user_icon.png" style="position:relative; left:15px; padding-top:14px"></i><i class="searching1"></i></div></a></li>
			<!--		<li><a href="404.html"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li> -->
					<li><a href="contact.jsp"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
				</ul>
			</div>
		<div class="main">
		<div class="single-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="findmymovie.jsp"><img src="images/findmymovie/logo.png" alt="" /></a><br>
					<p>My Profile</p>
				</div>
				
				<!--script>
				  $(document).ready(function() {
					   var url =  "http://ism.dmst.aueb.gr/ismgroup42/userProfile.jsp"; 
					   $("#redirect_url").val(url);
					});
				</script-->
				
				
				<%
				   User user= (User) session.getAttribute("user-object");
					
					if (user==null) {
				
				%>
				
				<%@ include file="rightMenu.jsp"  %>
				
				
				
				
				<%@ include file="register_navigation.jsp"  %>
				
				
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
				
			<%session.setAttribute("current-page", "userProfile.jsp")  ;%>
			
			<%
				if(user==null) {
			%>
			<div class="reviews-section">
			<div class="col-lg-9 col-sm-6">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		
		
		
		
		
		
					<h4 style="text-align:center">For a better movie experience</h4>
				<div class="alert alert-warning" style="text-align:center">
					Please <a  id="loginbtn" data-toggle="modal" data-target="#loginModal" class="alert-link" style="color:#381948"><strong>Login</strong></a> or time to <a id="registerbtn" data-toggle="modal" data-target="#registerModal"><strong>Register</strong></a>.
				</div>
			</div>
			</div>
				<% } else { %>
			
			<div class="reviews-section">
				<h3 class="head"><!--Pulp Fiction--></h3>
				<div class="col-lg-9 col-sm-6">
				<div class="card hovercard" style="background:#E8DAEF none repeat scroll 0 0">
			
					<div class="useravatar" style="padding-top: 20px; margin-top:40px">
						<center><img alt="" src="images/findmymovie/purpleUser.png" class="img-circle img-responsive img-center"></center>
					</div>
					<div class="card-info" style="text-align:center; padding-bottom:30px"> <span class="card-title" style="font-size: 20px; font-family:Verdana, Geneva, sans-serif; padding-top: 50px; padding-bottom: 50px"><%=user.getName()%> <%=user.getSurname()%><br>Username: <%=user.getUsername()%> </span>

					</div>
				</div>
				
				
					<div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
					<div class="btn-group" role="group">
						<button type="button" id="stars" class="btn btn-default" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
							<div class="hidden-xs">Favorites</div>
						</button>
					</div>
					<div class="btn-group" role="group">
						<button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							<div class="hidden-xs">Want to Watch</div>
						</button>
					</div>
					<!--div class="btn-group" role="group">
						<!--<button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="glyphicons glyphicons-group" aria-hidden="true"></span>
							<div class="hidden-xs"></div>
						</button>
					</div> -->
				</div>

				<div class="well" style="background:#E8DAEF none repeat scroll 0 0">
				  <div class="tab-content">
					<div class="tab-pane fade in active" id="tab1">
					 <h3><b>My "Favorites" List</b></h3>
					 
					  
						<% 
						try {
						
						List <Movie> favList = new ArrayList<Movie>(); 
						Lists dao = new Lists();
						
						int userId = (Integer)user.getUid();;
						
						favList = dao.favoritesList(userId);
						
						int i = 0; 
						
						if (favList.size() == 0 || favList.size()==1) {
						%>
						
						<div style="margin=0; padding=0"class="alert alert-danger">
						   Your Favorites List is empty.
						</div>
						
						<%} else {%>
					  
					  <table class = 'table table-bordered'> 
						<thead>
						<tr>
						<th> # </th>
						<th> Title </th>
						<th> FindMyMovie Rating </th>
						<th> IMDB Rating </th>
						</tr> 
						</thead>

					
						
						<%						
						for (Movie mov: favList) {
							i = i + 1 ; 
							

						%>
						

						
						<tbody align="center">
						<tr>
						<td> <%=i%> </td>
						<td><p><a href="singleMovie.jsp?id=<%=mov.getId()%>"> <%=mov.getName()%> </a></p></td>
						<td> <%=mov.getFindMyMovieRating()%> </td>
						<td> <%=mov.getImdbRating()%> </td>
						</tr>
						
							<%}%>
							<%}%>
							
						</tbody>
						</table>
						
					<% 
				
					}catch(Exception e){
					
					throw new Exception("Please try again.");
					} 
					%>

					</div>

					<div class="tab-pane fade in" id="tab2">
					  <h3><b>My "Want to Watch" List</b></h3>
						
						<% 
						try {
						
						List <Movie> wtwList = new ArrayList<Movie>(); 
						Lists dao = new Lists();
						
						int userId = (Integer)user.getUid();;
						
						wtwList = dao.wantToWatchList(userId);
						
						int x = 0; 
						
						if (wtwList.size() == 0) {
						%>
						
						<div style="margin=0; padding=0"class="alert alert-danger">
						   Your Want to Watch List is empty.
						</div>
						
						<%} else {%>
						
						<table class = 'table table-bordered'> 
						<thead>
						<tr>
						<th> # </th>
						<th> Title </th>
						<th> FindMyMovie Rating </th>
						<th> IMDB Rating </th>
						</tr> 
						</thead>	
						
						<%
						for (Movie mov1: wtwList) {
							x = x + 1 ; 

						%>
			
						<tbody align="center">
						<tr>
						<td> <%=x%> </td>
						<td><p><a href="singleMovie.jsp?id=<%=mov1.getId()%>"> <%=mov1.getName()%> </a></p></td>
						<td> <%=mov1.getFindMyMovieRating()%> </td>
						<td> <%=mov1.getImdbRating()%> </td>
						</tr>
						
						<%}%>
						<%}%>
						
						</tbody>
						</table>
						
						<% 
				
						}catch(Exception e){
						
						throw new Exception("Please try again.");
						} 
						%>
				
					</div>
					
				  </div>
				 </div>
				</div> <!-- End of reviews-section -->
				<%}%>		

				<div class="col-md-3 side-bar">
						<div class="featured">
					<h3>Today's Top Recommendations </h3>
							<ul>
								<li>
									<a href="singleMovie.jsp?id=101"><img src="images/findmymovie/f1.jpg" alt="" /></a>
									<p>Up (2009)</p>
								</li>
								<li>
									<a href="singleMovie.jsp?id=102"><img src="images/findmymovie/f2.jpg" alt="" /></a>
									<p>Priest (2011)</p>
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
									<a href="singleMovie.jsp?id=107">Memento (2009)</a>
							
								</li>
								<div class="clearfix"></div>
							</ul>
							<ul>
								<li class="ent">
									<a href="singleMovie.jsp?id=103"><img src="images/findmymovie/f3.jpg" alt="" /></a>
								</li>
								<li>
									<a href="singleMovie.jsp?id=103">Avatar (2009)</a>
								
								</li>
								<div class="clearfix"></div>
							</ul>
							<ul>
								<li class="ent">
									<a href="singleMovie.jsp?id=108"><img src="images/findmymovie/hotel.jpg" alt="" /></a>
								</li>
								<li>
									<a href="singleMovie.jsp?id=108">The Grand Budapest Hotel (2014)</a>
								
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

			</div> <!-- col-md-3 side-bar -->

				<div class="clearfix"></div>
				
				</div> <!-- end of single-content -->
				
		<%if(request.getAttribute("msg")!=null ) {%>	
		<script>
	//	document.querySelector('ul.examples li.success button').onclick = function(){
	swal("<%=request.getAttribute("msg").toString() %>", "Thank you for your Registration!", "success");
//};

</script>

	<%}%>	
			
			<div class="footer">
				<h6>Disclaimer : </h6>
				<p class="claim"> We do not own or distribute any of the movies referenced here. The rights to all movies belong to their respective owners.</p>
				<a href="example@mail.com">findmymovie@mail.com</a>				
			</div>	
	</div> <!-- end of main -->
	<div class="clearfix"></div>
	</div>
</body>
</html>
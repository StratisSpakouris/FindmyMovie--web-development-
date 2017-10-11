<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Find my Movie - The Online Movie Recommendation Site</title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- Custom Theme files -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Custom Theme files -->
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/round-about.css" rel="stylesheet">
	 <link href="css/agency.min.css" rel="stylesheet">
	 <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
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
<div class="full">
	<div class="menu">
				<ul>
					<li><a href="findmymovie.jsp"><i class="home"></i></a></li>
					<!--li><a href="videos.html"><div class="video"><i class="videos"></i><i class="videos1"></i></div></a></li-->
					<li><a href="movieList.jsp"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
					<li><a  href="userProfile.jsp"><div class="user"><i class="searching"><img src="images/findmymovie/user_icon.png" alt="" style="position:relative; left:15px; padding-top:14px"/></i><i class="searching1"></i></div></a></li>
					<!--li><a href="404.html"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li-->
					<li><a href="contact.jsp"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
				</ul>
			</div>
			<div class="main">
				<div class="review-content">
				<div class="top-header span_top">
				<div class="logo">
					<a href="findmymovie.jsp"><img src="images/findmymovie/logo.png" alt="" /></a><br>
					<p>A few things about us</p>
				</div>
				<!--<div class="search v-search">
					<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
					</form>
				</div> -->
				<div class="clearfix"></div>
				</div>

				<div class="reviews-section">
				<h3 class="head" style="position:relative; bottom:25px">Our Amazing Team</h3>
					<div class="row">
				<!--<div class="col-lg-12">
					<h2 class="page-header">Our Team</h2>
				</div> -->
				<div class="col-lg-4 col-sm-6 text-center">
					<center><img class="img-circle img-responsive img-center" src="images/findmymovie/despoina.jpg" alt=""></center>
					<h3>Despoina Driva
						<small></small>
					</h3>
					
					<p><span class="glyphicon glyphicon-envelope"></span> drivadespina@gmail.com</p><br>
					 <ul class="list-inline social-buttons">
                            
                            <li><a href="https://www.facebook.com/despoina.driva"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="https://gr.linkedin.com/in/despoinadriva"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
				</div>
				<div class="col-lg-4 col-sm-6 text-center">
					<center><img class="img-circle img-responsive img-center" src="images/findmymovie/stratis.jpg" alt="""></center>
					<h3>Efstratios Spakouris
						<small><!--Job Title--></small>
					</h3>
				
					<p><span class="glyphicon glyphicon-envelope"></span> stratisspak@gmail.com</p><br>
					 <ul class="list-inline social-buttons">
                           
                            <li><a href="https://www.facebook.com/stratis.spakouris?fref=ts"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="https://gr.linkedin.com/in/efstratios-spakouris-70193988"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
				</div>
				<div class="col-lg-4 col-sm-6 text-center">
					<center><img class="img-circle img-responsive img-center" src="images/findmymovie/mariella.jpg" alt=""></center>
					<h3>Maria Elpida Papadaki
						<small></small>
					</h3>
				
					<p><span class="glyphicon glyphicon-envelope"></span> mariella.papadaki@gmail.com</p><br>
					 <ul class="list-inline social-buttons">
                            
                            <li><a href="https://www.facebook.com/mariella.papadaki?fref=ts"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="https://gr.linkedin.com/in/mariella-papadaki-b2b220a6"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
				</div>
				<div class="empty-space">
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
				</div>
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
				</div>		
			<div class="footer">
				<h6>Disclaimer : </h6>
				<p class="claim"> We do not own or distribute any of the movies referenced here. The rights to all movies belong to their respective owners.</p>
				<a href="example@mail.com">findmymovie@mail.com</a>
				
			</div>	
			<div class="clearfix"></div>
</div> <!--end of review-content-->
</div> <!--end of main-->
</div> <!--end of full-->
</body>
</html>
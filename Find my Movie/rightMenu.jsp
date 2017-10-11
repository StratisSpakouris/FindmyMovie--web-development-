<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

			<div class="nav navbar-nav navbar-right"> <!--style="width: 600px; height: 93px; padding-top:24px"> -->
					<li><a href="aboutUs.jsp">
						<b>About us</b></a>
					</li>
					<li><a id="loginbtn" data-toggle="modal" data-target="#loginModal">
						<span class="glyphicon glyphicon-log-in"></span> Login</a>
					</li>
					<li><a id="registerbtn" data-toggle="modal" data-target="#registerModal">
						<span class="glyphicon glyphicon-user"></span> Register</a>
					</li>
					<div class="search" >
						<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
						</form>
					</div>
			</div>
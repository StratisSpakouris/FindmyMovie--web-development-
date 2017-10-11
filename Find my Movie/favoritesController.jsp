<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="findMovie.*,java.io.*,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,java.util.*" %>
<%@page errorPage="error.jsp"%>


<%

 
	int movieId = 0; 
	String idString = request.getParameter("favId");
					
	try {
	movieId = Integer.parseInt(idString);}catch (NumberFormatException e) {throw new Exception ("Invalid id");}
		

 User user = (User)session.getAttribute("user-object");
 if (user==null) {throw new Exception ("<p>You must Log In to Add a Favorite Movie. Back to<a href='movieList.jsp'>Movie List</a> </p>");}
 int userId = (Integer)user.getUid();;
 
	
	Lists dao = new Lists();
	dao.newFavorite(userId,movieId);
	String pagename = (String)session.getAttribute("current-page");
	request.setAttribute("alert","Your movie has been added to Favorites!");
	
 %>
 <jsp:forward page="<%=pagename%>" />
 
	 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="findMovie.*,java.io.*,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,java.util.*" %>

<%
 String content = request.getParameter("comment");
 out.print(content);
 int movieId = (Integer)session.getAttribute("movie-id");
  out.print(movieId);

 User user = (User)session.getAttribute("user-object");
 String username=(String)user.getUsername();
  out.print(username);
  
 int userId = (Integer)user.getUid();
 
 out.print(userId);
 
 Date dt = new Date();
 String commentDate= dt.toString();
 
  out.print(commentDate);

	
	commentDAO dao = new commentDAO();
                  
	
	try{
	dao.newComment(content,userId,movieId,commentDate,username); 
	

	response.sendRedirect("singleMovie.jsp?id="+ movieId);
	}catch (Exception e){
		
			throw new Exception(e.getMessage());  
		  }
 %>


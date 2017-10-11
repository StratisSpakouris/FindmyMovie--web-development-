<%@page contentType="text/html; charset=UTF-8"%>
<%@page errorPage="errorPage.jsp"%>

<%@ page import="findMovie.*,java.io.*,java.sql.*,java.util.List,java.util.ArrayList" %>



<% 

		
		int id = (Integer)request.getParameter("id");
	
		
	movieDAO dao = new movieDAO();
	Movie mov = dao.findMovie(id);
	
	session.setAttribute("movie-object" ,mov);
	
		


%>

 <jsp:forward page="singleMovie.jsp"/>
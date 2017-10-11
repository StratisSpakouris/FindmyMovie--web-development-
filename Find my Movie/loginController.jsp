<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="findMovie.*" %>    
<%@ page errorPage="error.jsp"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	

	
		
		UserDAO udao = new UserDAO();
		
		User user = udao.authenticateUser(username, password);
			
		session.setAttribute("user-object", user);
		
		
		
		String pagename = (String)session.getAttribute("current-page");
		
		
		
%>

 <jsp:forward page="<%=pagename%>" />
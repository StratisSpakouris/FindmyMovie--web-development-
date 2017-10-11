<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="findMovie.*" %>    

<%@ page errorPage="error.jsp"%>
  


<%

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String surname = request.getParameter("surname");
	String email = request.getParameter("email");
	String username = request.getParameter("username");
	String password = request.getParameter("password");


	

	
	String errormsg = "";
	int ercounter = 0;
	
	if(name == null || name.trim().length() == 0) {
		
		errormsg += ++ercounter + ") The name field is wrong<br>";
		
	}
	
	if(surname == null || surname.trim().length() == 0) {
		
		errormsg += ++ercounter + ") The surname field is wrong<br>";
		
	}
	
	if(email == null || email.trim().length() == 0) {
		
		errormsg += ++ercounter + ") The email field is wrong<br>";
		
	}
	
	if( username == null || username.length() < 5) {
		
		errormsg += ++ercounter + ") The username field is wrong. Your username should have at least 5 characters.<br>";
		
	}
	
	if( password==null || password.trim().length() == 0 || password.length() < 5 ) {
		
		errormsg += ++ercounter + ") The password field is wrong. Your password should have at least 5 characters.<br>";
		
	}
	
	if(ercounter > 0) {
		
		if(ercounter == 1) 
			errormsg = "<h3>We noticed " + ercounter + " mistake during your registration</h3><br>" + errormsg;
		else 
			errormsg = "<h3>We noticed  " + ercounter + " mistakes during your registration</h3><br>" + errormsg;
		
		throw new Exception(errormsg);
		
	}
	
	
	
		
		UserDAO udao = new UserDAO();
		boolean flag=false;
		flag=udao.isUserRegistered(username,email);
		if(flag==true){
			
			throw new Exception("There is already a user with the username <strong>" +username+ "</strong> or  with the e-mail <strong>" +email+ "</strong> registered!<br>");
		}else{
			
		
	
	
		udao.registerUser( name,  surname,  email, username,  password);
User user = udao.authenticateUser(username, password);
			
		session.setAttribute("user-object", user);		//store user to database
		request.setAttribute("msg","Register Success");
		}
		

		
		String pagename = (String)session.getAttribute("current-page");
		
	
		
		
%>

 <jsp:forward page="<%=pagename%>" />

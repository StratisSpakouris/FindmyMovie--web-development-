<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="findMovie.*,java.io.*,java.sql.*,java.util.List,java.util.ArrayList"
 %>
 
 
	  

	  
	

 

<% 
String genre = request.getParameter("genre");
String decade = request.getParameter("decade");
Double findMyMovieRating = Double.parseDouble(request.getParameter("findmymovierating"));
Double imdbRating = Double.parseDouble(request.getParameter("imdbrating"));
		
	
		
List <Movie> movies = new ArrayList<Movie>();
movieListDAO movieListDAO = new movieListDAO (); 

movies = movieListDAO.findMovieList(genre, decade,imdbRating, findMyMovieRating);
session.setAttribute("movieList",movies);
Integer m = 1;
session.setAttribute("checkm",m);

	response.sendRedirect("movieList.jsp");	
		 
%>
	

		 
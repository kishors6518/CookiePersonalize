<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Favourite Hero</title>
<% 
	String hero=request.getParameter("hero");
	Cookie cookie=new Cookie("myApp.favouriteHero",hero);
	cookie.setMaxAge(60*60*24*365);
	response.addCookie(cookie);
	out.print("Cookie added success and we have set your fav hero to: "+hero);
	
%>
</head>
<body>
<a href="homepage.jsp">Back to home page</a>
</body>
</html>
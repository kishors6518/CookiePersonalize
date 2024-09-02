<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<% String favHero="";
	Cookie theCookie[]=request.getCookies();
	for(Cookie c: theCookie)
	{
		if("myApp.favouriteHero".equals(c.getName()))
		{
			favHero=c.getValue();
			break;
		}
	}
%>
</head>
<body>
<%= "Your favourite hero: "+favHero %><br>
<%= "Latest news on "+favHero %>
<ol>
	<li>Something</li>
	<li>Something</li>
	<li>Something</li>
	<li>Something</li>
</ol>
<hr>
<br>

<%= "Amazing facts on "+favHero %>
<ol>
	<li>He got a birthday gift from his wife</li>
	<li>Birthday gift is Airoplane</li>
	<li>He got a best actor award</li>
	<li>He had 2 babies</li>
</ol>
<hr>
<br>

<%= "Sad news on "+favHero %>
<ol>
	<li>He is in bussiness loss</li>
	<li>Has plan is dropped</li>
	<li>*******</li>
	<li>*******</li>
</ol>
<hr>
<br>

<a href="Personalize_form.jsp">Personalize your preferences</a>


</body>
</html>
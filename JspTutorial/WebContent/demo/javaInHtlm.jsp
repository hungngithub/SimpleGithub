<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java In Html</title>
</head>
<body>
	<% Random random = new Random();
		//tra ve ngau nhien 0/1/3
		int randomInt = random.nextInt(3);
		
		if(randomInt == 0){
	%>
	
		<h1>Random value =<%=randomInt%></h1>
	
	<% } else if (randomInt == 1){%>
	
		<h1>Random value =<%=randomInt%></h1>
	
	<%} else { %>
	
		<h1>Random value =<%=randomInt%></h1>
	
	<%} %>
	
	<a href="<%=request.getRequestURI()%>">Try again</a>
	
	<h1>Tinh Tong</h1>
	
	<%!
		public int sum(int a, int b){
		return a+b;
	}
	%>
	
	<h1>1 + 2 =<%=sum(1, 2) %></h1>
	
</body>
</html>
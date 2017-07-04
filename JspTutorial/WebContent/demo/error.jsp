<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true" import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body>
	<h1>Some error in page</h1>
	Message: <%=exception.getMessage()%>
	<h3>StackTrace: </h3>
	<%
	StringWriter stringWriter = new StringWriter();
	PrintWriter printWrite = new PrintWriter(stringWriter);
	exception.printStackTrace(printWrite);
	out.println("<pre>");
	out.println(stringWriter);
	out.println("<pre>");
	printWrite.close();
	stringWriter.close();
	%>
</body>
</html>
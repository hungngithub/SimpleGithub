<?xml version="1.0" ?>
<%@ page pageEncoding="UTF-8" %>

<jsp:element name="data">
	<h3>Please view source this page</h3>
	<%--Tao doi tuong Employee va set gia tri cho cac field cua no--%>
	
	<jsp:useBean id="emp" class="jsp.bean.Employee">
		<jsp:setProperty name="emp" property="empNo" value="E01"/>
		<jsp:setProperty name="emp" property="empName" value="Smith"/>
	</jsp:useBean>
	
	<jsp:element name="employee">
		<jsp:attribute name="empNo" trim="true">
			<jsp:getProperty name="emp" property="empNo"/>
		</jsp:attribute>
		<jsp:body>
			<jsp:getProperty name="emp" property="empName"/>
		</jsp:body>
	</jsp:element>
	
</jsp:element>
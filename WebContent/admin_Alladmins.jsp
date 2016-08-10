<%@page import="java.util.ArrayList"%>
<%@page import="com.demos.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1" bgcolor="white">
<caption style="font-size: 25px"><marquee>All Job Providers</marquee></caption>
<tr>
<th>Name</th><th>Email</th><th>Phone</th><th>Address</th>
<th>Pin</th><th>City</th><th>Country</th><th>User Name</th>
<th>Pass</th>
</tr>

<%
ArrayList<Admin> ad=(ArrayList<Admin>)session.getAttribute("alladmin");
for(Admin a:ad)
{
	out.println("<tr>");
	out.println("<td>"+a.getAd_name()+"</td>");
	out.println("<td>"+a.getAd_email()+"</td>");
	out.println("<td>"+a.getAd_phone()+"</td>");
	out.println("<td>"+a.getAd_address()+"</td>");
	out.println("<td>"+a.getAd_pin()+"</td>");
	out.println("<td>"+a.getAd_city()+"</td>");
	out.println("<td>"+a.getAd_country()+"</td>");
	out.println("<td>"+a.getAd_uname()+"</td>");
	out.println("<td>"+a.getAd_pass()+"</td>");
	out.println("</tr>");
}
%>
</table>
</center>
</body>
</html>
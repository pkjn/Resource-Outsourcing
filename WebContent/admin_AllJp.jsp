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
<caption style="font-size: 25px"><marquee>All Administrators</marquee></caption>
<tr>
<th>Name</th><th>Email</th><th>Phone</th><th>Address</th>
<th>Pin</th><th>City</th><th>Country</th><th>User Name</th>
<th>Pass</th>
</tr>

<%
ArrayList<JobProvider> ad=(ArrayList<JobProvider>)session.getAttribute("alljp");
for(JobProvider a:ad)
{
	out.println("<tr>");
	out.println("<td>"+a.getJp_name()+"</td>");
	out.println("<td>"+a.getJp_email()+"</td>");
	out.println("<td>"+a.getJp_phone()+"</td>");
	out.println("<td>"+a.getJp_address()+"</td>");
	out.println("<td>"+a.getJp_pin()+"</td>");
	out.println("<td>"+a.getJp_city()+"</td>");
	out.println("<td>"+a.getJp_country()+"</td>");
	out.println("<td>"+a.getJp_uname()+"</td>");
	out.println("<td>"+a.getJp_pass()+"</td>");
	out.println("</tr>");
}
%>
</table>
</center>
</body>
</html>
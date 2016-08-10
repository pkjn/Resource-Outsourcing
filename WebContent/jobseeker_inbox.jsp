<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.util.*" %>
<%@ page import="com.demos.*" %>

<body>
<center>
<table>
<tr>
<th>Company Name</th><th>Email Address</th><th>Phone No</th><th>Address</th><th>Pin</th>
<th>City</th><th>Country</th><th>Last Date</th>
</tr>
<%
ArrayList<Jobs> js=(ArrayList<Jobs>)session.getAttribute("shortlist");

for(Jobs J:js)
{
	out.print("<tr>");
	out.println("<td>"+J.getJob_comp()+"</td>");
	out.println("<td>"+J.getJob_email()+"</td>");
	out.println("<td>"+J.getJob_phone()+"</td>");
	out.println("<td>"+J.getJob_address()+"</td>");
	out.println("<td>"+J.getJob_pin()+"</td>");
	out.println("<td>"+J.getJob_loc()+"</td>");
	out.println("<td>"+J.getJob_loc_country()+"</td>");
	out.println("<td>"+J.getJob_last_date()+"</td>");
	
	out.print("</tr>");
	out.println("<tr><td colspan=5><marquee><a style='color:green'>You Are selected in Above Companies Visit or email then immediately</a></marquee></td></tr>");
}
%>
</table>
</center>
</body>
</html>

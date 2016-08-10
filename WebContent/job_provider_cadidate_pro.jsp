<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
    <%@page import="java.util.*" %>
    <%@page import="com.demos.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>
<fieldset>
<legend>Candidate Description</legend>
<table border="2">
<tr>
<th>Last Job</th><th>Job Location</th><th>Experience(yr)</th><th>Experience(Month)</th>
</tr>

<tr>
<%
ArrayList<JobSeek_Professional>job=(ArrayList<JobSeek_Professional>)session.getAttribute("condidate_pro");

for(JobSeek_Professional J:job)
{
	out.print("<tr>");
	out.println("<td>"+J.getJs_job()+"</td>");
	out.println("<td>"+J.getJs_loc()+"</td>");
	out.println("<td>"+J.getJs_exp_year()+"</td>");
	out.println("<td>"+J.getJs_exp_month()+"</td>");
	
	out.print("</tr>");
}
%>
</tr>
</table>
</fieldset>
</table>
</body>
</html>
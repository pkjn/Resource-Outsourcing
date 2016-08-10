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
<th colspan="4">10th</th><th colspan="4">12th</th><th colspan="4">Graduation</th><th colspan="4">Post Graduation</th><th colspan="4">Other</th>
</tr>
<tr>
<td>Marks</td><td>Total</td><td>Average</td><td>University/Board</td>
<td>Marks</td><td>Total</td><td>Average</td><td>University/Board</td>
<td>Marks</td><td>Total</td><td>Average</td><td>University/Board</td>
<td>Marks</td><td>Total</td><td>Average</td><td>University/Board</td>
<td>Marks</td><td>Total</td><td>Average</td><td>University/Board</td>
</tr>
<tr>
<%
ArrayList<JobSeek_Education>job=(ArrayList<JobSeek_Education>)session.getAttribute("condidate_edu");

for(JobSeek_Education J:job)
{
	out.print("<tr>");
	out.println("<td>"+J.getJs10_marks()+"</td>");
	out.println("<td>"+J.getJs10_total()+"</td>");
	out.println("<td>"+J.getJs10_avg()+"</td>");
	out.println("<td>"+J.getJs10_uni()+"</td>");
	out.println("<td>"+J.getJs12_marks()+"</td>");
	out.println("<td>"+J.getJs12_total()+"</td>");
	out.println("<td>"+J.getJs12_avg()+"</td>");
	out.println("<td>"+J.getJs12_uni()+"</td>");
	out.println("<td>"+J.getJs13_marks()+"</td>");
	out.println("<td>"+J.getJs13_total()+"</td>");
	out.println("<td>"+J.getJs13_avg()+"</td>");
	out.println("<td>"+J.getJs13_uni()+"</td>");
	out.println("<td>"+J.getJs14_marks()+"</td>");
	out.println("<td>"+J.getJs14_total()+"</td>");
	out.println("<td>"+J.getJs14_avg()+"</td>");
	out.println("<td>"+J.getJs14_uni()+"</td>");
	out.println("<td>"+J.getJs15_marks()+"</td>");
	out.println("<td>"+J.getJs15_total()+"</td>");
	out.println("<td>"+J.getJs15_avg()+"</td>");
	out.println("<td>"+J.getJs15_uni()+"</td>");
	out.print("</tr>");
}
%>
</tr>
</table>
</fieldset>
</table>

</body>
</html>
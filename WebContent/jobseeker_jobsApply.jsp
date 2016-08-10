<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <%@page import="java.util.*" %>
    <%@page import="com.demos.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:form action="new_job" method="get" onsubmit="return confirm('Are Your Sure about Submit?');">
<table>
<tr>
<td>
<fieldset>
<legend>Job Description</legend>
<table border="2">
<tr>
<th>Job Id</th><th>Job Type</th><th>Skill</th><th>Experience</th><th>City</th><th>Country</th><th>Company</th>
<th>Job posted</th><th>Last Date</th><th>Apply</th>
</tr>
<tr>
<%
ArrayList<Jobs>job=(ArrayList<Jobs>)session.getAttribute("jobs");
for(Jobs J:job)
{
	
	out.print("<tr>");
	out.println("<td>"+J.getJob_id()+"</td>");
	out.println("<td>"+J.getJob_type()+"</td>");
	out.println("<td>"+J.getJob_skill()+"</td>");
	out.println("<td>"+J.getJob_year()+"</td>");
	out.println("<td>"+J.getJob_loc()+"</td>");
	out.println("<td>"+J.getJob_loc_country()+"</td>");
	out.println("<td>"+J.getJob_comp()+"</td>");
	out.println("<td>"+J.getJob_post_date()+"</td>");
	out.println("<td>"+J.getJob_last_date()+"</td>");
	out.println("<td><a href='jobseeker_jobsDetails.jsp?Job_id="+J.getJob_id()+"&Jp_id="+J.getJp_id()+"'>Apply</a></td>");
	out.print("</tr>");
}
%>
</tr>
</table>
</fieldset>
</table>
</s:form>
</body>
</html>

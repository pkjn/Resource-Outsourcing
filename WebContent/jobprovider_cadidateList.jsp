<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
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
<center>
<table>
<tr>
<td>
<fieldset>
<legend>Candidate Description</legend>
<table border="2">
<tr>
<th>Name</th><th>Email</th><th>Phone</th><th>Address</th>
<th>Pin</th><th>City</th><th>Country</th>
<th>Educational Information</th>
<th>Professional Information</th><th>Select</th>
</tr>
<tr>
<marquee>
<a style="Color:red;font-size: 15px">
<s:property value="#session.Errormsg"/>
</a></marquee>
<%
try{
	session.removeAttribute("Errormsg");
}catch(Exception ex){}
%>
<%
Integer i=(Integer)session.getAttribute("Job_id");
ArrayList<JobSeeker>job=(ArrayList<JobSeeker>)session.getAttribute("condidate");
try{

	for(JobSeeker J:job)
	{
		out.print("<tr>");
		out.println("<td>"+J.getJs_name()+"</td>");
		out.println("<td>"+J.getJs_email()+"</td>");
		out.println("<td>"+J.getJs_phone()+"</td>");
		out.println("<td>"+J.getJs_address()+"</td>");
		out.println("<td>"+J.getJs_pin()+"</td>");
		out.println("<td>"+J.getJs_city()+"</td>");
		out.println("<td>"+J.getJs_country()+"</td>");
		out.println("<td><a href='can_edu?Js_id="+J.getJs_id()+"' target='_blank'>Show</a></td>");
		out.println("<td><a href='can_pro?Js_id="+J.getJs_id()+"' target='_blank'>Show</a></td>");
		out.println("<td><a href='selected_can?Js_id="+J.getJs_id()+"&Job_id="+i.intValue()+"'>Select</a></td>");
		out.print("</tr>");
}
}
catch(NullPointerException ex)
{
}
%>
</tr>
</table>
</fieldset>
</table>
</center>

</body>
</html>


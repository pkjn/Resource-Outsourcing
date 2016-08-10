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
<s:form action="Job_apply" method="get" onsubmit="return confirm('Are Your Sure about Submit?');">
<s:set name="a"><%=request.getParameter("Job_id") %></s:set>
<s:hidden name="Job_id" value="%{#a}"></s:hidden>
<s:set name="a"><%=request.getParameter("Jp_id") %></s:set>
<s:hidden name="Jp_id" value="%{#a}"></s:hidden>
<table>
<tr>
<td>
<fieldset>
<legend>Job Description</legend>

<%
ArrayList<Jobs>job=(ArrayList<Jobs>)session.getAttribute("jobs");
int count=0;
for(Jobs J:job)
{
	
	if(J.getJob_id()==Integer.parseInt(request.getParameter("Job_id")))
	{
	%>
	
	<table>
<tr>
<s:set name="a"><%=J.getJob_type() %></s:set>
<s:textfield name="Job_type" label="Job Type" value="%{#a}" readonly="true" ></s:textfield>
</tr>
<tr>
<s:set name="a"><%=J.getJob_skill() %></s:set>
<s:textfield name="Job_skill" label="Skill" value="%{#a}" readonly="true"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=J.getJob_year() %></s:set>
<s:textfield name="Job_year" label="Expericence" value="%{#a}" readonly="true"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=J.getJob_loc_country() %></s:set>
<s:textfield name="Job_loc_country" value="%{#a}" label="Working Country" readonly="true"/>
</tr>
<tr>
<s:set name="a"><%=J.getJob_loc() %></s:set>
<s:textfield  name="Job_loc" value="%{#a}" label="Work Location" readonly="true"/>
</tr>
<tr>
<s:set name="a"><%=J.getJob_last_date() %></s:set>
<s:textfield name="Job_last_date" value="%{#a}" label="Last Date" readonly="true"> </s:textfield>
</tr>
<tr>
<s:set name="a"><%=J.getJob_seat()%></s:set>
<s:textfield name="Job_seat" value="%{#a}" label="No of Vacancy" readonly="true"></s:textfield>
</tr>
</table>
</fieldset>

</td>
</tr>
<tr>
<td>
<fieldset style="width: auto;">
<legend >&nbsp; Company Information &nbsp;</legend>
<br/>
<table>

<tr>
<s:set name="a"><%=J.getJob_comp() %></s:set>
<td><s:textfield name="Job_comp" value="%{#a}" label="Company Name" readonly="true"  requiredLabel="name"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=J.getJob_email() %></s:set>
<td><s:textfield name="Job_email" value="%{#a}" label="Email" readonly="true"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=J.getJob_phone() %></s:set>
<td><s:textfield name="Job_phone" value="%{#a}" label="Phone"   maxlength="10" readonly="true"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=J.getJob_address() %></s:set>
<td><s:textarea name="Job_address" value="%{#a}" label="Address" cols="24" rows="4" readonly="true"></s:textarea></td>
</tr>
<tr>
<s:set name="a"><%=J.getJob_pin() %></s:set>
<td><s:textfield name="Job_pin" value="%{#a}" label="Pin" maxlength="6" readonly="true"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=J.getJob_city() %></s:set>
<td><s:textfield label="City" value="%{#a}" name="Job_city" readonly="true"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=J.getJob_country()%></s:set>
<td><s:textfield name="Job_country" value="%{#a}" label="Country" readonly="true"></s:textfield>
</td>
</tr>
<tr>
<s:submit value="Apply Job" style="width:100px"></s:submit>
</tr>
</table>
</fieldset>
	
	<%
	}
}
%>
</tr>
</table>

</s:form>
</body>
</html>

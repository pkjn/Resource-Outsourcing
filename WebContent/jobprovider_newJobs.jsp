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
<center>
<table>
<tr>
<td>
<fieldset>
<legend>Job Description</legend>
<table>
<tr>
<s:doubleselect label="Job Type " 
name="Job_type" list="{'Software Programming','Hardware & Networking','Other'}" 
doubleName="Job_skill" 
doubleList="top == 'Software Programming' ? {'Java', 'PHP','.Net'} :top=='Hardware & Networking'?{'A+','N+','CCNA'}:{'BPO','KPO'}" />

</tr>
<tr>
<s:select label="Experience In Year" list="#{'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'more'}" name="Job_year"></s:select>
</tr>
<tr>
<s:select name="Job_loc_country" label="Country" list="{'India','United Kingdom','United States'}"></s:select>
</tr>
<tr>
<s:select list="{'Delhi','Mumbai','Kolkatta'}" name="Job_loc" label="Work Location"> </s:select>
</tr>
<tr>
<s:textfield name="Job_last_date" label="Last Date" maxlength="10" cssErrorStyle="Color:red" tooltip="mm/dd/yyyy"> </s:textfield>
</tr>
<tr>
<s:textfield name="Job_seat" label="No of Vacancy"></s:textfield>
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
<td><s:textfield name="Job_comp" label="Company Name"  requiredLabel="name"></s:textfield></td>
</tr>
<tr>
<td><s:textfield name="Job_email" label="Email"  ></s:textfield></td>
</tr>
<tr>
<td><s:textfield name="Job_phone" label="Phone"   maxlength="10" ></s:textfield></td>
</tr>
<tr>
<td><s:textarea name="Job_address" label="Address" cols="24" rows="4" ></s:textarea></td>
</tr>
<tr>
<td><s:textfield name="Job_pin" label="Pin" maxlength="6"   ></s:textfield></td>
</tr>
<tr>
<td><s:textfield type="text" label="City" name="Job_city" ></s:textfield></td>
</tr>
<tr>
<td><s:select name="Job_country" label="Country" list="{'India','United Kingdom','United States'}"></s:select>
</td>
</tr>


</table>
</fieldset>


</td>
</tr>
<tr>
<s:submit value="Submit" style="width:35%"></s:submit>
</tr>
</table>
</center>
</s:form>
</body>
</html>

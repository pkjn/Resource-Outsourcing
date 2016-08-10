<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:form action="Jobs_up1" method="get" onsubmit="return confirm('Are Your Sure about Submit?');">
<br/>
<br/>
<table>
<tr>
<td colspan="2">
<hr/>
</td>
</tr>
<tr>
<s:doubleselect label="Job Type" 
name="Job_type" list="{'Software Programming','Hardware & Networking','Other'}" 
doubleName="Job_skill" 
doubleList="top == 'Software Programming' ? {'Java', 'PHP','.Net'} :top=='Hardware & Networking'?{'A+','N+','CCNA'}:{'BPO','KPO'}" />

</tr><tr>
<s:select label="Experience In Year" list="#{'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'more'}" name="Job_year"></s:select>
</tr>
<tr>
<s:select list="{'Delhi','Mumbai','Kolkatta'}" name="Job_loc" label="Work Location"> </s:select>
</tr>
<tr>
<s:submit style="width:45%"></s:submit>
</tr>
<tr>
<td colspan="2">
<hr/>
</td>
</tr>
</table>
</s:form>

</body>

</html>
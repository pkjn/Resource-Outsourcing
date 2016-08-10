<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<script type="text/javascript">

</script>
<%@page import="com.demos.*" %>
<%@page import="java.util.*" %>
<style type="text/css">

fieldset {   

  -moz-border-radius:5px;  
  border-radius: 5px;  
  -webkit-border-radius: 5px; //edit :D
}
legend {
    width: auto;
    text-align: center;
    font-size: 16px;font-style: oblique;
}
</style>
</head>
<body>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
ArrayList<JobSeeker>job=(ArrayList<JobSeeker>)session.getAttribute("JobSeeker");
JobSeeker j=job.get(0);
%>
<s:form action="JobSeeker_update"  onsubmit="return confirm('Are Your Sure about Submit?');">
<s:actionerror/>
<center>
<table style="width: 50%">
<tr>
<td>
<fieldset style="width: auto;">
<legend >&nbsp; Personal Information &nbsp;</legend>
<br/>
<table>
<tr>
<s:set name="a"><%=j.getJs_name() %></s:set>
<td><s:textfield name="Js_name" label="Name" value="%{#a}" requiredLabel="name"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=j.getJs_email() %></s:set>
<td><s:textfield name="Js_email" label="Email" value="%{#a}"  ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=j.getJs_phone() %></s:set>
<td><s:textfield name="Js_phone" label="Phone" value="%{#a}"   maxlength="10" ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=j.getJs_address() %></s:set>
<td><s:textarea name="Js_address" label="Address" value="%{#a}" cols="24" rows="4" ></s:textarea></td>
</tr>
<tr>
<s:set name="a"><%=j.getJs_pin()%></s:set>
<td><s:textfield name="Js_pin" label="Pin" maxlength="6" value="%{#a}"   ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=j.getJs_city()%></s:set>
<td><s:textfield type="text" label="City" name="Js_city" value="%{#a}" ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=j.getJs_country() %></s:set>
<td><s:select name="Js_country" label="Country"  value="%{#a}" list="{'India','United Kingdom','United States'}"></s:select>
</td>
</tr>


</table>
</fieldset>

<fieldset>
<legend>&nbsp;Login Information&nbsp;</legend>
<table>
<tr>
<s:set name="a"><%=j.getJs_uname() %></s:set>
<td><s:textfield name="Js_uname" label="User Name"  value="%{#a}" ></s:textfield></td>
</tr>
<tr>
<td><s:password name="Js_pass" label="Password" ></s:password></td>
</tr>
<tr>
<td><s:password name="Js_repass" label="Retype Password" ></s:password></td>
</tr>
<tr>
<td align="right"><s:submit value="Register Me" style="width:100px"></s:submit></td>
</tr></table>
</fieldset>

</td>
</tr>

</table>
</center>
</s:form>
</body>
</html>
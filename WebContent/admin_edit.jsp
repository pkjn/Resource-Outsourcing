<%@page import="java.util.*" %>
<%@page import="com.demos.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<script type="text/javascript">

</script>
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
ArrayList<Admin>edu=(ArrayList<Admin>)session.getAttribute("Admin");
Admin m=edu.get(0);
System.out.println(edu.size());
%>
<s:form action="update_admin"  onsubmit="return confirm('Are Your Sure about Submit?');">
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
<s:set name="a"><%=m.getAd_name() %></s:set>
<td><s:textfield name="Ad_name" label="Name" value="%{#a}"  requiredLabel="name" required="required"></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=m.getAd_email() %></s:set>
<td><s:textfield name="Ad_email" label="Email" value="%{#a}" required="required" ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=m.getAd_phone() %></s:set>
<td><s:textfield name="Ad_phone" label="Phone" value="%{#a}"   maxlength="10" required="required" ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=m.getAd_address() %></s:set>
<td><s:textarea name="Ad_address" label="Address" value="%{#a}" cols="24" rows="4" required="required"></s:textarea></td>
</tr>
<tr>
<s:set name="a"><%=m.getAd_pin() %></s:set>
<td><s:textfield name="Ad_pin" label="Pin" maxlength="6" value="%{#a}" required="required" ></s:textfield></td>
</tr>
<tr>
<s:set name="a"><%=m.getAd_city() %></s:set>
<td><s:textfield type="text" label="City" name="Ad_city" value="%{#a}" required="required"></s:textfield></td>
</tr>
<tr>
<td><s:select name="Ad_country" label="Country" list="{'India','United Kingdom','United States'}" ></s:select>
</td>
</tr>


</table>
</fieldset>

<fieldset>
<legend>&nbsp;Login Information&nbsp;</legend>
<table>
<tr>
<s:set name="a"><%=m.getAd_uname() %></s:set>
<td><s:textfield name="Ad_uname" label="User Name" value="%{#a}" required="required" ></s:textfield></td>
</tr>
<tr>
<td><s:password name="Ad_pass" label="Password" required="required"></s:password></td>
</tr>
<tr>
<td><s:password name="Ad_repass" label="Retype Password" required="required"></s:password></td>
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
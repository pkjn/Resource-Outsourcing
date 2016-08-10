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

<s:form action="JobProvider"  onsubmit="return confirm('Are Your Sure about Submit?');">
<s:actionerror/>
<table>
<tr>
<td>
<fieldset style="width: auto;">
<legend >&nbsp; Personal Information &nbsp;</legend>
<br/>
<table>
<tr>
<td><s:textfield name="Jp_name" label="Name"  requiredLabel="name"></s:textfield></td>
</tr>
<tr>
<td><s:textfield name="Jp_email" label="Email"  ></s:textfield></td>
</tr>
<tr>
<td><s:textfield name="Jp_phone" label="Phone"   maxlength="10" ></s:textfield></td>
</tr>
<tr>
<td><s:textarea name="Jp_address" label="Address" cols="24" rows="4" ></s:textarea></td>
</tr>
<tr>
<td><s:textfield name="Jp_pin" label="Pin" maxlength="6"   ></s:textfield></td>
</tr>
<tr>
<td><s:textfield type="text" label="City" name="Jp_city" ></s:textfield></td>
</tr>
<tr>
<td><s:select name="Jp_country" label="Country" list="{'India','United Kingdom','United States'}"></s:select>
</td>
</tr>


</table>
</fieldset>

<fieldset>
<legend>&nbsp;Login Information&nbsp;</legend>
<table>
<tr>
<td><s:textfield name="Jp_uname" label="User Name"  ></s:textfield></td>
</tr>
<tr>
<td><s:password name="Jp_pass" label="Password" ></s:password></td>
</tr>
<tr>
<td><s:password name="Jp_repass" label="Retype Password" ></s:password></td>
</tr>
<tr>
<td align="right"><s:submit value="Register Me" style="width:100px"></s:submit></td>
</tr></table>
</fieldset>

</td>
</tr>

</table>
</s:form>
</body>
</html>
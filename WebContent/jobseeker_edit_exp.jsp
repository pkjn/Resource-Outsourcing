<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Academic And Professional</title>
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
<%@taglib uri="/struts-tags" prefix="s" %>
<s:form id="frm1" action="JobSeek_Professional_Update" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>
<fieldset>
<legend>&nbsp;Professional Information&nbsp;</legend>
<table>

<tr>
<s:select label="Job Function" list="{'Software Programming','Hardware & Networking','Other'}" name="Js_job"></s:select>
</tr>
<tr>
<s:select label="Experience In Year" list="#{'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'more'}" name="Js_exp_year"></s:select>
</tr>
<tr>
<s:select label="Experience In Month" list="#{'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'11','12':'12'}" name="Js_exp_month"></s:select>
</tr>
<tr>
<s:select list="{'Delhi','Mumbai','Kolkatta'}" name="Js_loc" label="Current Work Location"> </s:select>
</tr>
<tr>
<s:file name="upload" label="Upload Resume Here"></s:file>
</tr>
<tr>

<s:submit value="Submit" style="width:35%"></s:submit>
</table>
</fieldset>

</td>
</tr>
</table>
</s:form>
</body>
</html>
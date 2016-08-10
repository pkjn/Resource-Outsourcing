<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Academic And Professional</title>
<script type="text/javascript">
function ten() {
	 var x = parseInt(document.getElementById("frm1").elements["Js10_marks"].value);
	 var y = parseInt(document.getElementById("frm1").elements["Js10_total"].value);
	 if(x<y && x!=null && y!=null)
	 { var z=(x*100/y);
	 document.getElementById("frm1").elements["Js10_avg"].value =z.toFixed(2);
	 }
 	else
	 {
	 alert('Please put correct value');
	 }
	
}
function t12() {
	 var x = parseInt(document.getElementById("frm1").elements["Js12_marks"].value);
	 var y = parseInt(document.getElementById("frm1").elements["Js12_total"].value);
	 if(x<y && x!=null && y!=null)
	 { var z=(x*100/y);
	 document.getElementById("frm1").elements["Js12_avg"].value =z.toFixed(2);
	 }
	else
	 {
	 alert('Please put correct value');
	 }
	
}
function t13() {
	 var x = parseInt(document.getElementById("frm1").elements["Js13_marks"].value);
	 var y = parseInt(document.getElementById("frm1").elements["Js13_total"].value);
	 if(x<y && x!=null && y!=null)
	 { var z=(x*100/y);
	 document.getElementById("frm1").elements["Js13_avg"].value =z.toFixed(2);
	 }
	else
	 {
	 alert('Please put correct value');
	 }
	
}
function t14() {
	 var x = parseInt(document.getElementById("frm1").elements["Js14_marks"].value);
	 var y = parseInt(document.getElementById("frm1").elements["Js14_total"].value);
	 if(x<y && x!=null && y!=null)
	 { var z=(x*100/y);
	 document.getElementById("frm1").elements["Js14_avg"].value =z.toFixed(2);
	 }
	else
	 {
	 alert('Please put correct value');
	 }
	
}
function t15() {
	 var x = parseInt(document.getElementById("frm1").elements["Js15_marks"].value);
	 var y = parseInt(document.getElementById("frm1").elements["Js15_total"].value);
	 if(x<y && x!=null && y!=null)
	 { var z=(x*100/y);
	 document.getElementById("frm1").elements["Js15_avg"].value =z.toFixed(2);
	 }
	else
	 {
	 alert('Please put correct value');
	 }
	
}
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
<s:form id="frm1" action="JobSeek_Education">
<table>
<tr>
<td>
<fieldset>
<legend>&nbsp;Academic Information&nbsp;</legend>
<table>
<tr>
<s:label label="Marks of 10th"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_10"></s:select>
</tr>
<tr>
<s:textfield label="Optain Marks" name="Js10_marks" required="required"></s:textfield>
</tr>
<tr>
<s:textfield label="Total Marks" name="Js10_total" onblur="ten()"  required="required"></s:textfield>
</tr>
<tr>
<s:textfield label="Percentage" name="Js10_avg" maxlength="6"></s:textfield>
</tr>
<tr>
<s:textfield label="Board Or University" name="Js10_uni"  required="required"></s:textfield>
</tr>
<tr>
<s:label label="Marks of 12th"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_12"></s:select>
</tr>
<tr>
<s:textfield label="Optain Marks" name="Js12_marks"  required="required"></s:textfield>
</tr>
<tr>
<s:textfield label="Total Marks" name="Js12_total" onblur="t12()"  required="required"></s:textfield>
</tr>
<tr>
<s:textfield label="Percentage" name="Js12_avg" maxlength="6"></s:textfield>
</tr>
<tr>
<s:textfield label="Board Or University" name="Js12_uni"  required="required"></s:textfield>
</tr>
<tr>
<s:label label="Marks of Graduation"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_13"></s:select>
</tr>
<tr>
<s:textfield label="Optain Marks" name="Js13_marks"  required="required"></s:textfield>
</tr>
<tr>
<s:textfield label="Total Marks" name="Js13_total" onblur="t13()"  required="required"></s:textfield>
</tr>
<tr>
<s:textfield label="Percentage" name="Js13_avg" maxlength="6"></s:textfield>
</tr>
<tr>
<s:textfield label="Board Or University" name="Js13_uni"  required="required"></s:textfield>
</tr>
<tr>
<s:label label="Marks of Post Graduation"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_14"></s:select>
</tr>
<tr>
<s:textfield label="Optain Marks" name="Js14_marks"></s:textfield>
</tr>
<tr>
<s:textfield label="Total Marks" name="Js14_total" onblur="t14()"></s:textfield>
</tr>
<tr>
<s:textfield label="Percentage" name="Js14_avg" maxlength="6"></s:textfield>
</tr>
<tr>
<s:textfield label="Board Or University" name="Js14_uni"></s:textfield>
</tr>
<tr>
<s:label label="Other Diploma"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_15"></s:select>
</tr>
<tr>
<s:textfield label="Optain Marks" name="Js15_marks"></s:textfield>
</tr>
<tr>
<s:textfield label="Total Marks" name="Js15_total" onblur="t15()"></s:textfield>
</tr>
<tr>
<s:textfield label="Percentage" name="Js15_avg" maxlength="6"></s:textfield>
</tr>
<tr>
<s:textfield label="Board Or University" name="Js15_uni"></s:textfield>
</tr>
<s:submit value="Submit" style="width:35%"></s:submit>
</table>
</fieldset>

</td>
</tr>
</table>
</s:form>
</body>
</html>
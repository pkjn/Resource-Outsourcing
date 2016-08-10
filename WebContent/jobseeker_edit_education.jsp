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
<%@page import="java.util.*" %>
<%@page import="com.demos.*" %>
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
<%
ArrayList<JobSeek_Education>edu=(ArrayList<JobSeek_Education>)session.getAttribute("edu");
JobSeek_Education m=edu.get(0);
System.out.println(edu.size());
%>
<body>
<%@taglib uri="/struts-tags" prefix="s" %>
<s:form id="frm1" action="JobSeek_Education_Update">
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
<s:set name="a"><%=m.getJs10_marks()%></s:set>
<s:textfield label="Optain Marks" name="Js10_marks" value="%{#a}" required="required"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs10_total()%></s:set>
<s:textfield label="Total Marks" name="Js10_total" value="%{#a}" onblur="ten()"  required="required"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs10_avg()%></s:set>

<s:textfield label="Percentage" name="Js10_avg" value="%{#a}" maxlength="6"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs10_uni()%></s:set>
<s:textfield label="Board Or University" name="Js10_uni" value="%{#a}"  required="required"></s:textfield>
</tr>
<tr>
<s:label label="Marks of 12th"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_12"></s:select>
</tr>
<tr>
<s:set name="a"><%=m.getJs12_marks()%></s:set>
<s:textfield label="Optain Marks" name="Js12_marks" value="%{#a}" required="required"></s:textfield>
</tr>
<tr><s:set name="a"><%=m.getJs12_total()%></s:set>
<s:textfield label="Total Marks" name="Js12_total" value="%{#a}"  onblur="t12()"  required="required"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs12_avg()%></s:set>
<s:textfield label="Percentage" name="Js12_avg" value="%{#a}"  maxlength="6"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs12_uni()%></s:set>
<s:textfield label="Board Or University" value="%{#a}"  name="Js12_uni"  required="required"></s:textfield>
</tr>
<tr>
<s:label label="Marks of Graduation"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_13"></s:select>
</tr>
<tr>
<s:set name="a"><%=m.getJs13_marks()%></s:set>
<s:textfield label="Optain Marks" name="Js13_marks" value="%{#a}"   required="required"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs13_total()%></s:set>
<s:textfield label="Total Marks" name="Js13_total" value="%{#a}"  onblur="t13()"  required="required"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs13_avg()%></s:set>
<s:textfield label="Percentage" name="Js13_avg" value="%{#a}"  maxlength="6"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs13_uni()%></s:set>
<s:textfield label="Board Or University" name="Js13_uni" value="%{#a}"   required="required"></s:textfield>
</tr>
<tr>
<s:label label="Marks of Post Graduation"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_14"></s:select>
</tr>
<tr>
<s:set name="a"><%=m.getJs14_marks()%></s:set>
<s:textfield label="Optain Marks" value="%{#a}"  name="Js14_marks"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs14_total()%></s:set>
<s:textfield label="Total Marks" name="Js14_total" value="%{#a}"  onblur="t14()"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs14_avg()%></s:set>
<s:textfield label="Percentage" name="Js14_avg" value="%{#a}"  maxlength="6"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs14_uni()%></s:set>
<s:textfield label="Board Or University" value="%{#a}"  name="Js14_uni"></s:textfield>
</tr>
<tr>
<s:label label="Other Diploma"></s:label>
</tr>
<tr>
<s:select label="Marks Type" list="{'Marks'}" name="Js_15"></s:select>
</tr>
<tr>
<s:set name="a"><%=m.getJs15_marks()%></s:set>
<s:textfield label="Optain Marks" value="%{#a}"  name="Js15_marks"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs15_total()%></s:set>
<s:textfield label="Total Marks" value="%{#a}"  name="Js15_total" onblur="t15()"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs15_avg()%></s:set>
<s:textfield label="Percentage" value="%{#a}"  name="Js15_avg" maxlength="6"></s:textfield>
</tr>
<tr>
<s:set name="a"><%=m.getJs15_uni()%></s:set>
<s:textfield label="Board Or University" value="%{#a}"  name="Js15_uni"></s:textfield>
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
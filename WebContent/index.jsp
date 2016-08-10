<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br/>
<s:actionerror/>
<s:div>
<s:form action="request">
<s:radio list="{'Admin','JobProvider','JobSeeker'}" name="type" required="required"></s:radio>
<br/>
<s:textfield label="Enter User Name" name="tuser"  required="required" ></s:textfield>
<s:password label="Enter Password" name="tpass"  required="required"></s:password>
<s:submit value="login" cssStyle="width:100px"></s:submit>
</s:form>
</s:div>

</body>
</html>
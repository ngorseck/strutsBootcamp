<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>login</title>
	</head>
	<body>
		<s:form action="loginAction">
			  <div>
			    <label>Email address</label>
			    <s:textfield key="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
			  </div>
			  <div>
			    <label>Password</label>
			    <s:password key="password" id="exampleInputPassword1" placeholder="Password"/>
			  </div>
			  <div>
				<s:submit value="Login" />
			  </div>
		</s:form>
	</body>
</html>
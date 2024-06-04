<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Admin</title>
	</head>
	<body>
		<jsp:include page="../../../welcome.jsp"></jsp:include>
		<table class="table">
            <tr>
                <td>Full name</td>
                <td>Email</td>
                <td>Mot de passe</td>
                <td>Action</td>
                <td>Action</td>
            </tr>
            <s:iterator value="%{usersList}" var="user">
	            <tr>
	                <td><s:property value="#user.fullName"/></td>
	                <td><s:property value="#user.email"/></td>
	                <td><s:property value="#user.password"/></td>
	                <td>
	                    <s:url var="edit" action="adminEditAction" method="edit">
	                        <s:param name="email">
	                            <s:property value="#user.email"/>
	                        </s:param>
	                    </s:url>
	                    <s:a href="%{#edit}">Editer</s:a>
	                </td>
	                <td>
	                    <s:url var="delete" action="adminDeleteAction" method="delete">
	                        <s:param name="email">
	                            <s:property value="#user.email"/>
	                        </s:param>
	                    </s:url>
	                    <s:a href="%{#delete}">Supprimer</s:a>
	                </td>
	            </tr>
            </s:iterator>
        </table>
	</body>
</html>
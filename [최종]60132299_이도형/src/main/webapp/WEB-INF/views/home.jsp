<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>학사관리시스템</h1>
	1. 로그인<br/>
	<form action="loginController/login.do" method="post">
		<table>
			<tr align ="left">
				<td>ID</td>
				<td><input type="text" name="userID"></td>
			</tr>
			<tr align ="left">
				<td>Password</td>
				<td><input type="password" name= "userPassword"></td>
			</tr>
			<tr align="right">
				<td></td>
				<td><input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
	2.<a href="./register">회원가입</a>
</body>
</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="userController/register.do" method="post">
		<table>
			<tr align ="left">
				<td>ID</td>
				<td><input type="text" name="userID"></td>
			</tr>
			<tr align ="left">
				<td>이름</td>
				<td><input type="text" name= "name"></td>
			</tr>
			<tr align ="left">
				<td>Password</td>
				<td><input type="password" name= "userPassword"></td>
			</tr>
			<tr align ="left">
				<td>분류</td>
				<td>
					<input type = "radio" name = "type" value="학생" >학생
					<input type = "radio" name = "type" value="교수" >교수
					<input type = "radio" name = "type" value="관리자" >관리자
				</td>
			</tr>
			<tr align="right">
				<td></td>
				<td><input type="submit" value="회원가입"></td>
			</tr>
		</table>
		
		<input type="hidden" name="msg" value="${msg}"/>
	</form>
	<script language="JavaScript">
      var error = "${msg}";

      if (error) {
         alert("${msg}");
         if(error =="회원 가입되었습니다."){
				location.href = '${pageContext.request.contextPath}/loginController/login.do';
		 	} 
      }
   </script>
</body>
</html>

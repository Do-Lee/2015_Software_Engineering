<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>강좌 개설</title>
</head>
<body>
	<h1>강좌 개설 화면</h1>
	<form action="${pageContext.request.contextPath}/lectureController/register.do" method="post">
		<table>
			<tr align ="left">
				<td>강좌번호</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr align ="left">
				<td>과목명</td>
				<td><input type="text" name= "name"></td>
			</tr>
			<tr align ="left">
				<td>연도</td>
				<td><input type="text" name= "year"></td>
			</tr>
			<tr align ="left">
				<td>학년</td>
				<td>
					<select name = "grade">
				 		<option value = 1>1</option>
				 		<option value = 2>2</option>
				 		<option value = 3>3</option>
				 		<option value = 4>4</option>
					</select>
				 </td>
			</tr>
			<tr align ="left">
				<td>정원</td>
				<td><input type="text" name= "maxNum"></td>
			</tr>
			<tr align ="left">
				<td>학점</td>
				<td>
					<select name = "credit">
				 		<option value = 1>1</option>
				 		<option value = 2>2</option>
				 		<option value = 3>3</option>
				 		<option value = 4>4</option>
					</select>
				</td>
			</tr>
			<tr align="right">
				<td></td>
				<td><input type="submit" value="개설"></td>
			</tr>
		</table>
		
		
	</form>
		<a href="${pageContext.request.contextPath}/loginController/logout">로그아웃</a>
</body>
</html>

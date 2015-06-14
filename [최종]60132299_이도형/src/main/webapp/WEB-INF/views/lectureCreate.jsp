<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>강의개설</title>
	</head>
	
	<body>
		<h1>강좌개설 화면</h1>
		<b>${userSession.getName()} 교수</b><br/>
    	<c:set var="userName" value="${userSession.getName()}"/>
    	<table>
    		<thead>
    			<tr>
    				<th>선택</th>
              		<th>과목이름</th>
              		<th>학점</th>
               		<th></th>
            	</tr>
         	</thead>
         	<tbody>
         		<form action="${pageContext.request.contextPath}/LectureController/createLecture" method="post">
          			<c:forEach items="${subjectArray}" var="item">
                  		<tr>
                    		<td><input type="radio" name="radio" value="${item.num}"></td>
                    		<td><c:out value ="${item.name}"/></td>
                    		<td><c:out value ="${item.grade}"/></td>
                     		<td><input type="submit" value="개설"></td>
          		 		</tr>
           			</c:forEach>
           		</form>
         </tbody>   
      </table>
      <a href="${pageContext.request.contextPath}/loginController/logout">로그아웃</a>
	</body>
</html>
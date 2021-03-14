<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${isDeleted == true }">Record deleted. </c:if>
<c:if test="${isDeleted == false }">Record could not be deleted. </c:if>

<br>
	<a href="home.do" class="btn btn-default"> Return to Home Page </a>
	<br>

</body>
</html>
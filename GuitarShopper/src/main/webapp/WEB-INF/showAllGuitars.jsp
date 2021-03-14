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
		<h1>Guitars You Are Consdidering</h1>
			<div class="container">
			<c:if test="${empty guitars}">No records to display.</c:if>
			<c:forEach var="guitar" items="${guitars}">
			<c:if test="${not empty guitar}">
		<table>
			<tr>
				<td>ID:</td>
				<td>${guitar.id}</td>
			</tr>
			<c:if test="${guitar.manufacturer != null}">
			<tr>
				<td>Manufacturer:</td>
				<td>${guitar.manufacturer}</td>
			</tr> </c:if>
			<c:if test="${guitar.model != null}">
			<tr>
				<td>Model:</td>
				<td>${guitar.model}</td>
			</tr> </c:if>
			<c:if test="${guitar.price != null}">
			<tr>
				<td>Price:</td>
				<td> <fmt:formatNumber type="CURRENCY">${guitar.price }</fmt:formatNumber>   </td>
			</tr> </c:if>
			<c:if test="${guitar.store != null}">
			<tr>
				<td>Store:</td>
				<td>${guitar.rating}</td>
			</tr></c:if>
			<c:if test="${guitar.string != null}">
			<tr>
				<td>String type:</td>
				<td>${guitar.string}</td>
			</tr> </c:if>
			<c:if test="${guitar.style != null}">
			<tr>
				<td>Style:</td>
				<td>${guitar.style}</td>
			</tr> </c:if>
			<c:if test="${guitar.notes != null}">
			<tr>
				<td>Style:</td>
				<td> <p>  ${guitar.notes} </p> </td>
			</tr> </c:if>  
			<c:if test="${guitar.tone != null}">
			<tr>
				<td>Tone rating:</td>
				<td>${guitar.tone}</td>
			</tr> </c:if>
			<c:if test="${guitar.intonation != null}">
			<tr>
				<td>Intonation rating:</td>
				<td>${guitar.intonation}</td>
			</tr> </c:if>
			<c:if test="${guitar.projection != null}">
			<tr>
				<td>Projection rating:</td>
				<td>${guitar.projection}</td>
			</tr> </c:if>
		
		</table>
		<form action="updateguitar.do" method="GET">
			<button type="submit" name="id" value="${guitar.id}"> Update Guitar Record Details</button>
		</form>
		
		<form action="deleteGuitarResult.do" method="POST">
			<button type="submit" name="id" value="${guitar.id}">Delete Guitar Record</button>
		</form>
		</c:if>
		</c:forEach>
		<br>
  			<br>
				<a href="returntomain.do" class="btn btn-default"> Return to Home Page </a>
  	  		<br>
		</div>


</body>
</html>
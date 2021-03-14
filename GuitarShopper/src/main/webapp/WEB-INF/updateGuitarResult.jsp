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
<c:if test="${guitar == null}">Update was not sucessful.</c:if>
			<c:if test="${guitar != null}">
	<table>
		<tr>
			<td>ID:</td>
			<td>${guitar.id}</td>
		</tr>
		<c:if test="${guitar.manufacturer != null}">
			<tr>
				<td>Manufacturer:</td>
				<td>${guitar.manufacturer}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.model != null}">
			<tr>
				<td>Model:</td>
				<td>${guitar.model}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.price != null}">
			<tr>
				<td>Price:</td>
				<td><fmt:formatNumber type="CURRENCY">${guitar.price }</fmt:formatNumber>
				</td>
			</tr>
		</c:if>
		<c:if test="${guitar.store != null}">
			<tr>
				<td>Store:</td>
				<td>${guitar.store}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.string != null}">
			<tr>
				<td>String type:</td>
				<td>${guitar.string}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.style != null}">
			<tr>
				<td>Style:</td>
				<td>${guitar.style}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.notes != null}">
			<tr>
				<td>Style:</td>
				<td>
					<p>${guitar.notes}</p>
				</td>
			</tr>
		</c:if>
		<c:if test="${guitar.tone != null}">
			<tr>
				<td>Tone rating:</td>
				<td>${guitar.tone}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.intonation != null}">
			<tr>
				<td>Intonation rating:</td>
				<td>${guitar.intonation}</td>
			</tr>
		</c:if>
		<c:if test="${guitar.projection != null}">
			<tr>
				<td>Projection rating:</td>
				<td>${guitar.projection}</td>
			</tr>
		</c:if>

	</table>

	<form action="deleteguitar.do" method="POST">
		<button type="submit" name="id" value="${guitar.id}">Delete
			Record</button>
	</form>
	</c:if>
	<br>
	<a href="home.do" class="btn btn-default"> Return to Home Page </a>
	<br>
</body>
</html>
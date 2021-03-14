<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>New Guitar</title>
</head>
<body>
		<h2>Your record has been added</h2>
		
			<div class="container">
			<c:if test="${not empty guitar}">
		<table>
			
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
				<td>${guitar.store}</td>
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
				<td>Notes from playing:</td>
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
		<br>
		<form action="updateform.do" method="GET">
			<button type="submit" name="id" value="${guitar.id}"> Update Record </button>
		</form>
		<br>
		<form action="deleteguitar.do" method="POST">
			<button type="submit" name="id" value="${guitar.id}">Delete Record</button>
		</form>
		</c:if>
		
		<br>
  			<br>
				<a href="home.do" class="btn btn-default"> Return to Home Page </a>
  	  		<br>
		</div>
</body>
</html>
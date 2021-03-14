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
	<form:form action="updateguitar.do" method="POST" modelAttribute="guitar">
		<table>
			<tr>
				<td>Manufacturer:</td>
				<td><form:input path="manufacturer" value="${guitar.manufacturer }"/></td>
			</tr>
			<tr>
				<td>Model:</td>
				<td><form:input path="model" value="${guitar.model }"/></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td>
						<form:input path="price" type="number" step="0.01" min="0" value="${guitar.price }"/>
					</td>
			</tr>
			<tr>
				<td>Store:</td>
				<td><form:input path="store" value="${guitar.store }"/></td>
			</tr>
			<tr>
				<td>String type:</td>
				<td><form:select path="string" value="${guitar.string }">
						<form:option value="Steel">Steel</form:option>
						<form:option value="Nylon">Nylon</form:option>
				</form:select></td>
			</tr>
	<tr>
				<td>Style:</td>
				<td><form:select path="style" value="${guitar.style }">
						<form:option value="Classical">Classical</form:option>
						<form:option value="Flemenco">Flamenco</form:option>
						<form:option value="Accoustic">Accoustic</form:option>
						<form:option value="Accoustic-electric">Accoustic-electric</form:option>
						<form:option value="Jazz">Jazz</form:option>
				</form:select></td>
			</tr>
			<tr>
				<td>Notes from playing:</td>
				<td><form:input path="notes" value="${guitar.notes }"/></td>

			</tr>
			<tr>
				<td>Intonation rating:</td>
				<td><form:input path="intonation" type="number" min="1" max="10" value="${guitar.intonation }"/></td>

			</tr>
			<tr>
				<td>Tone rating:</td>
				<td><form:input path="tone" type="number" min="1" max="10" value="${guitar.tone }"/></td>

			</tr>
			<tr>
				<td>Projection rating:</td>
				<td><form:input path="projection" type="number" min="1" max="10" value="${guitar.projection }"/></td>

			</tr>
			<tr>
				<td colspan="2"><button  type="submit" name="id" value="${guitar.id}">Submit Update</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
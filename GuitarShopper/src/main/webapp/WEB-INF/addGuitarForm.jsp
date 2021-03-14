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
<h2>Enter guitar details:</h2>

	<form:form action="addguitar.do" method="POST" modelAttribute="guitar">
		<table>
			<tr>
				<td>Manufacturer:</td>
				<td><form:input path="manufacturer" /></td>
			</tr>
			<tr>
				<td>Model:</td>
				<td><form:input path="model" /></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td>
						<form:input path="price" type="number" step="0.01" min="0" />
					</td>
			</tr>
			<tr>
				<td>Store:</td>
				<td><form:input path="store" /></td>
			</tr>
			<tr>
				<td>String type:</td>
				<td><form:select path="string">
						<form:option value="Steel">Steel</form:option>
						<form:option value="Nylon">Nylon</form:option>
				</form:select></td>
			</tr>
	<tr>
				<td>Style:</td>
				<td><form:select path="style">
						<form:option value="Classical">Classical</form:option>
						<form:option value="Flemenco">Flamenco</form:option>
						<form:option value="Accoustic">Accoustic</form:option>
						<form:option value="Accoustic-electric">Accoustic-electric</form:option>
						<form:option value="Jazz">Jazz</form:option>
				</form:select></td>
			</tr>
			<tr>
				<td>Notes from playing:</td>
				<td><form:input path="notes" /></td>

			</tr>
			<tr>
				<td>Intonation rating:</td>
				<td><form:input path="intonation" type="number" min="1" max="10"/></td>

			</tr>
			<tr>
				<td>Tone rating:</td>
				<td><form:input path="tone" type="number" min="1" max="10"/></td>

			</tr>
			<tr>
				<td>Projection rating:</td>
				<td><form:input path="projection" type="number" min="1" max="10"/></td>

			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save Changes" /></td>
			</tr>
		</table>
	</form:form>


</body>
</html>
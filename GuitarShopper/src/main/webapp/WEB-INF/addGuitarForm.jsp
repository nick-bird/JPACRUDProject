<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enter details</title>
</head>
<body>


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
              <td><form:input path="price" type="number" step="0.01" min="0" /></td>
          </tr>
          <tr>
              <td>Store:</td>
              <td><form:input path="store"/></td>
          </tr>
          <tr>
              <td colspan="2">
                  <input type="submit" value="Save Changes" />
              </td>
          </tr>
      </table>
  </form:form>


<%-- <label for="quantity">Quantity (between 1 and 5):</label>
  <input type="number" id="quantity" name="quantity" min="1" max="5">

<fmt:formatNumber value="18.99" type="currency"/>

<fmt:formatNumber type="currency" value="${cartItem.price }"/>
 --%>


</body>
</html>
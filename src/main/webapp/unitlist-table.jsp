<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> </head>
</head>
<body> <div class = "container"> <h1>Unit List</h1>
<p>${MSG}</p>

<table class = "table table-bordered">
<tr> <th>id</th> <th>Unit</th> <th>Cost</th> <th>Action</th>  </tr>
<c:forEach items="${unitratelist}" var="user"> 
<tr> <td>${user.id}</td>
 <td>${user.unit}</td>
<td>${user.cost}</td>


<td>  
<a href = "${pageContext.request.contextPath}/unitControl?action=EDIT&id=${user.id}">Edit</a> </td> </tr>
</c:forEach>


</table>
<button><a href="adminHome.jsp" class = "table table-bordered">Back</a></button> 
 </div>
</body>
</html>
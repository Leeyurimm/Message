<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< Updated upstream
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
>>>>>>> Stashed changes
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메세지 출력</title>
<style>
table {
	margin: auto;
}

#button {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
}
</style>
</head>
<body>
<<<<<<< Updated upstream
	
	
	<table border=1>
	<c:forEach var="item" items="${result}">
	<tr>
		<td>${item.seq}
		<td>${item.name}
		<td>${item.message}
	</tr> 
	</c:forEach>
	</table>
=======
	<table border="1">
		<table border="1">
			<c:forEach var="item" items="${result}">
				<tr>
					<td>${item.seq}</td>
					<td><input type="text" name="message" readonly value="${item.message}"></td>
					<td><input type="text" name="name" readonly value="${item.name }"></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="3"><button id="button" type="button">Index</button></td>
			</tr>
		</table>
	</table>
	<script>
	document.getElementById("button").onclick = function(){
		location.href="index.jsp";
		
	}
	</script>
>>>>>>> Stashed changes

</body>
</html>
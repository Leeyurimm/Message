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
<title>Insert title here</title>

		
		<style>
			
			
			table{
				margin: auto;
			}
			
			
		
		</style>

</head>
<body>

	
	
	<table border=1>
	<c:forEach var="item" items="${result}">
	<tr>
		<td>${item.seq}
		<td>${item.name}
		<td>${item.message}
	</tr> 
	
	</c:forEach>
	
		<tr>
			<td colspan=3 align=center><button id="">Back!!</button>
		</tr>
	</table>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보 입력</title>
<style type="text/css">
	table{
		margin: auto;
	}

</style>
<script>
	window.onload = function(){
		document.getElementById("input").onclick =function(){
			location.href ="input.jsp";
		}
		document.getElementById("output").onclick =function(){
			location.href ="output.jsp";
		}
	}

</script>

</head>
<body>
		<table border="1">
			<tr>
			<th colspan="2">정보입력</th>
			</tr>
			<tr>
			<td><input type="button" id ="input" value="Input"></td>
			<td><input type="button" id ="output"value="Output"></td>
			</tr>		
		</table>
</body>
</html>
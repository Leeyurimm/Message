<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메세지 입력</title>
<style>
	table{
		margin: auto;
	}
	#button{
		width: 100%;
		height: 100%;
		box-sizing: border-box;
	}

</style>
</head>
<body>
<form action="input.do" method="post">
	<table border="1">
		<tr>
		<td><input type="text" placeholder="메세지를 입력해주세요" name="message"></td>
		<td><input type="text" placeholder="이름을 입력해주세요" name="name"></td>
		</tr>
	<tr>
		<td colspan="2"><button id="button">입력 완료</button></td>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bye</title>
</head>
<body>
	<%
		session.invalidate();
		response.sendRedirect("/logcheck.do");
	%>
</body>
</html>
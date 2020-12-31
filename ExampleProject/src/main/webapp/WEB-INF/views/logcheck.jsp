<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login check</title>
</head>
<body>
	<%
		HttpSession ss = request.getSession(false);
	if (ss == null) {// response.sendRedirect("/");
		
		response.setHeader("Cache-Control","no-store"); 
		response.setHeader("Pragma","no-cache"); 
		response.setDateHeader("Expires",0); 
		if (request.getProtocol().equals("HTTP/1.1"))
		        response.setHeader("Cache-Control", "no-cache");
		%> 
		
	<script>
		location.href = "/";
	</script>
	<%
		}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setDateHeader("Expires", 0L);
%><html>
<head>
<title>Home</title>
</head>
<body>
	<!-- ne = not equals eq = equals -->
	<c:if test="${msg ne null }">
		<Script>
			alert('${msg}');
		</Script>
	</c:if>
	
	<form method="post" action="/t_include.do">
		아이디 : <input type="text" name="id" id="Sid"><br> 
		비밀번호 : <input type="password" name="pw"><br>
		 <input type="submit" value="로그인">
		</form>
</body>
</html>
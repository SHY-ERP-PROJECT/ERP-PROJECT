<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<html>
<head>
<title>MHJ factory 로그인</title>
<style>
	.home{display: flex;
  justify-content: center;
  align-items: center;
  min-height: 50vh;
  font-weight:900;
	}
	.dds{fustify-content:center;}
</style>
</head>
<body>
	<!-- ne = not equals eq = equals -->
	<c:if test="${msg ne null }">
		<Script>
			alert('${msg}');
		</Script>
	</c:if>
	<div class="home">
	<form method="post" action="/t_include.do">
		ID&nbsp;&nbsp; : <input type="text" name="id"><br> 
		PW : <input type="password" name="pw">
		 <input class="dds"type="submit" value="로그인">
		</form>
		</div>
</body>
</html>
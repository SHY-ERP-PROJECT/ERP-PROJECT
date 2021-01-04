<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("sessionId");
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
header {
  height: 55px;
  color: white;
  background: black;
  display: flex;
  justify-content: space-between;
  align-items: center;
	}
.jin {
	color: white;
	text-decoration:none;
	}
</style>
<header>
	<h1>반갑습니다. <%= id %>님</h1>
	
	<a class="jin" href='/logout.do'>로그아웃</a>
</header>
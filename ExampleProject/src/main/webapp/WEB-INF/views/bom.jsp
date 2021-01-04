<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bom</title>
<style>
	.include{float:left; padding-right:70;}
	.bomlist{padding-top:40;}<!--본문 클래스-->
</style>
</head>
<body>
	<jsp:include page="T_include.jsp" flush="true"/>
	<div class="include"><jsp:include page="l_include.jsp" flush="true"/></div>
	<div class="bomlist">
	<h1>BOM 조회</h1><br>
	<button onclick="location.href='bom_insert.do'" >BOM 등록</button>
	<form method="get" action="/bom.do">
		<input type="text" name="PART_NO" placeholder="제품번호를 적어주세요"/>
		<input type="submit" value="검색" />
		</form>
		<table border="1">
		<c:forEach var="row" items="${list}">
		<tr>
			<th>모델번호</th>
			<th>${row.M_NO1}</th>
			<th>${row.M_NO2}</th>
			<th>${row.M_NO3}</th>
			<th>${row.M_NO4}</th>
			<th>${row.M_NO5}</th>
			<th>${row.M_NO6}</th>
			<th>제작기간</th>
		</tr>
		<tr>
			<td>${row.PART_NO}</td>
			<td>${row.EA1}</td>
			<td>${row.EA2}</td>
			<td>${row.EA3}</td>
			<td>${row.EA4}</td>
			<td>${row.EA5}</td>
			<td>${row.EA6}</td>
			<td>${row.L_TIME}day</td>
		</tr>
		</c:forEach>
		</table>
		</div>
</body>
</html>
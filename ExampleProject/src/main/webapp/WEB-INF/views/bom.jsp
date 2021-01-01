<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bom</title>
<style>
	.include{float:left; padding-right:40;}
	.bomlist{padding-top:40;}
</style>
</head>
<body>
	<jsp:include page="T_include.jsp" flush="true"/>
	<div class="include"><jsp:include page="l_include.jsp" flush="true"/></div>
	<div class="bomlist">
		<table border="1">
		<c:forEach var="row" items="${list}">
			<c:set var="i" value="${i}"/>
		<tr>
			<td>제품명</td>
			<th>제품번호</th>
			<td>${row.M_NO1}</td>
			<td>${row.M_NO2}</td>
			<td>${row.M_NO3}</td>
			<td>${row.M_NO4}</td>
			<td>${row.M_NO5}</td>
			<td>${row.M_NO6}</td>
			<th>만드는시간</th></tr>
			<tr>
			<td>${row.PART_NO}</td>
			<td>${row.PART_NAME}</td>
			<td>${row.EA1}</td>
			<td>${row.EA2}</td>
			<td>${row.EA3}</td>
			<td>${row.EA4}</td>
			<td>${row.EA5}</td>
			<td>${row.EA6}</td>
			<td>${row.L_TIME}</td>
		</tr>
		</c:forEach>
		</table>
		</div>
</body>
</html>
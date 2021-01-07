<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bom</title>
<style>
	.include{position:absolute; padding-right:70;}
	.bomlist{padding-top:20px; margin-left:250px;}
	.tab{width:35px;} .tabd{width:70px;} .dds{width:410px;}
</style>
</head>
<body>
	<jsp:include page="T_include.jsp" flush="true"/>
	<div class="include"><jsp:include page="l_include.jsp" flush="true"/></div>
	<div class="bomlist">
	<h1>BOM 조회</h1><br>
	<button onclick="location.href='bom_insert.do'" >BOM 등록</button>
	<form method="get" action="/bom.do">
		<input type="text" name="PART_NO" placeholder="모델번호를 적어주세요"/>
		<input type="submit" value="검색" />
		</form>
		<table class="dds"border="1">
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
			<td class="tabd">${row.PART_NO}</td>
			<td class="tab">${row.EA1}<c:if test="$${row.EA1} != null}"><h2>EA</h2></c:if></td>
			<td class="tab">${row.EA2}<c:if test="$${row.EA2} != null}">EA</c:if></td>
			<td class="tab">${row.EA3}<c:if test="$${row.EA3} != null}">EA</c:if></td>
			<td class="tab">${row.EA4}<c:if test="$${row.EA4} != null}">EA</c:if></td>
			<td class="tab">${row.EA5}<c:if test="$${row.EA5} != null}">EA</c:if></td>
			<td class="tab">${row.EA6}<c:if test="$${row.EA6} != null}">EA</c:if></td>
			<td class="tabd">${row.L_TIME}day</td>
		</tr>
		</c:forEach>
		</table>
		</div>
</body>
</html>
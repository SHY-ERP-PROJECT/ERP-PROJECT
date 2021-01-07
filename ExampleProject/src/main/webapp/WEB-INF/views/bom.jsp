<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bom</title>
<link rel="stylesheet" href="resources/css/ERPcss.css">
<style>
	.include{position:absolute; padding-right:70;}
	.bomlist{padding-top:20px; margin-left:250px;}
<<<<<<< HEAD
	.tab{width:35px;} .tabd{width:70px;} .dds{width:410px;}
=======
	.fir{float:left; margin-right:30px;}
>>>>>>> ef1ff425d750f9d1e710c69492b3dc4d70146e2f
</style>
<script>
function nullchecker(){
	if(bomist.PART_NO.value==""){
		alert("제품번호를 입력해주세요!");
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<jsp:include page="T_include.jsp" flush="true"/>
	<div class="include"><jsp:include page="l_include.jsp"/></div>
	<div class="bomlist">
	<h1>BOM 조회</h1><br>
<<<<<<< HEAD
	<button onclick="location.href='bom_insert.do'" >BOM 등록</button>
	<form method="get" action="/bom.do">
		<input type="text" name="PART_NO" placeholder="모델번호를 적어주세요"/>
		<input type="submit" value="검색" />
		</form>
		<table class="dds"border="1">
=======
	<div class="first">
	<button onclick="location.href='bom_insert.do'" >BOM 등록</button></div>
	<form name="bomist" method="get" action="/bom.do" onsubmit="nullchecker()">
		<input type="text" name="PART_NO" placeholder="모델번호를 적어주세요"/>
		<input type="submit" value="검색" />
		</form>
		<div class="tablediv">
		<table class="table" border="1">
>>>>>>> ef1ff425d750f9d1e710c69492b3dc4d70146e2f
		<c:forEach var="row" items="${list}">
		<tr>
			<th class="MNAME">제품모델번호</th>
			<th class="MNAME">${row.M_NO1}</th>
			<th class="MNAME">${row.M_NO2}</th>
			<th class="MNAME">${row.M_NO3}</th>
			<th class="MNAME">${row.M_NO4}</th>
			<th class="MNAME">${row.M_NO5}</th>
			<th class="MNAME">${row.M_NO6}</th>
			<th class="DATE">제작기간</th>
		</tr>
		<tr>
<<<<<<< HEAD
			<td class="tabd">${row.PART_NO}</td>
			<td class="tab">${row.EA1}<c:if test="$${row.EA1} != null}"><h2>EA</h2></c:if></td>
			<td class="tab">${row.EA2}<c:if test="$${row.EA2} != null}">EA</c:if></td>
			<td class="tab">${row.EA3}<c:if test="$${row.EA3} != null}">EA</c:if></td>
			<td class="tab">${row.EA4}<c:if test="$${row.EA4} != null}">EA</c:if></td>
			<td class="tab">${row.EA5}<c:if test="$${row.EA5} != null}">EA</c:if></td>
			<td class="tab">${row.EA6}<c:if test="$${row.EA6} != null}">EA</c:if></td>
			<td class="tabd">${row.L_TIME}day</td>
=======
			<td>${row.PART_NO}</td>
			<td>${row.EA1}EA</td>
			<td>${row.EA2}EA</td>
			<td>${row.EA3}EA</td>
			<td>${row.EA4}EA</td>
			<td>${row.EA5}EA</td>
			<td>${row.EA6}EA</td>
			<td>${row.L_TIME}day</td>
>>>>>>> ef1ff425d750f9d1e710c69492b3dc4d70146e2f
		</tr>
		</c:forEach>
		</table>
		</div>
		</div>
</body>
</html>
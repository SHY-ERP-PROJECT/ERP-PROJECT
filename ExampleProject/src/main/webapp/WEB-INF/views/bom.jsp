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
	.fir{float:left; margin-right:30px;}
	.dds th{background-color : #BBBBBB;}
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
	<button class="fir" onclick="location.href='bom_insert.do'" >BOM 등록</button>
	<form name="bomist" method="get" action="/bom.do" onsubmit="nullchecker()">
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
			<td class="tabd">${row.PART_NO}EA</td>
			<td class="tab">${row.EA1}EA</td>
			<td class="tab">${row.EA2}EA</td>
			<td class="tab">${row.EA3}EA</td>
			<td class="tab">${row.EA4}EA</td>
			<td class="tab">${row.EA5}EA</td>
			<td class="tab">${row.EA6}EA</td>
			<td class="tabd">${row.L_TIME}day</td>
		</tr>
		</c:forEach>
		</table>
		</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOM_insert</title>
<style>
	.include{float:left; padding-right:70;}
	.bomi{padding-top:40;}
</style>
<script>
function nullchecker(){
	if(bomist.PART_NO.value==""){
		alert("제품번호를 입력해주세요!");
		return false;
	}
    if(bomist.PART_NAME.value==""){
		alert("제품명을 입력해주세요!");
		return false;
	}
    if(bomist.L_TIME.value==""){
		alert("L_TIME을 입력해주세요!");
		return false;
	}
	return true;
}</script>
</head>
<body>
	<jsp:include page="T_include.jsp" flush="true"/>
	<div class="include"><jsp:include page="l_include.jsp" flush="true"/></div>
	<div class="bomi">
	 <form name="bomist" method="GET" action="/bom_insert.do" onsubmit="nullchecker()">
		<h1>BOM 등록</h1>
	<table border="1">
	<tr>
		<th>모델번호</th>
		<th>부자재1</th>
		<th>부자재2</th>
		<th>부자재3</th>
		<th>부자재4</th>
		<th>부자재5</th>
		<th>부자재6</th>
		<th>L_TIME</th>
		</tr>
		<td><input type="text" name="PART_NO"></td>
		<td><input type="text" name="M_NO1"></td>
		<td><input type="text" name="M_NO2"></td>
		<td><input type="text" name="M_NO3"></td>
		<td><input type="text" name="M_NO4"></td>
		<td><input type="text" name="M_NO5"></td>
		<td><input type="text" name="M_NO6"></td>
		<td><input type="number" name="L_TIME"></td>
		<tr>
		<th>모델이름</th>
		<th>부자재1갯수</th>
		<th>부자재2갯수</th>
		<th>부자재3갯수</th>
		<th>부자재4갯수</th>
		<th>부자재5갯수</th>
		<th>부자재6갯수</th>
	</tr>
	<tr>
		</tr>
		<tr>
		<td><input type="text" name="PART_NAME"></td>
		<td><input type="number" name="EA1"></td>
		<td><input type="number" name="EA2"></td>
		<td><input type="number" name="EA3"></td>
		<td><input type="number" name="EA4"></td>
		<td><input type="number" name="EA5"></td>
		<td><input type="number" name="EA6"></td>
	</tr>
	</table>
	<button>등록하기</button>
	</form>
	<button onclick="location.href='bom.do'">등록하기</button>
	</div>
</body>
</html>
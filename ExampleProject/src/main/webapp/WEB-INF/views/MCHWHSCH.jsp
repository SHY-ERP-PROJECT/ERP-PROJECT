<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품검색결과</title>
</head>
<body>
	<form name="mwhsch" method="get" ><%-- action="MCHWHCOR.do/${mwh.LOT_NO}"> --%>
		<table border="1">
			<tr>
			<th>제품모델번호</th>
			<th>제품명</th>
			<th>제품 수량</th>
			</tr>
			<c:forEach var="nameCount" items="${nameCount}">
				<tr><td><input type="text" value="${nameCount.PART_NO}" readonly="readonly" /></td>
			<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == nameCount.PART_NO}">
				<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
			</c:forEach>
				<td><input type="text" value="${nameCount.count}" readonly="readonly" /></td></tr>
			</c:forEach>
		</table>
		<br>
	
	
	<table border="1">
	<tr>
		<th align = "center">작업번호</th>
		<th align = "center">제품모벨번호</th>
		<th align = "center">제품명</th>
		<th align = "center">생산수량</th>
		<th align = "center">불량수량</th>
		<th align = "center">실 생산수량</th>
		<th align = "center">입고</th>
		<th align = "center">비고</th>
	</tr>
	<c:forEach var="mwh" items="${list}">
	<tr>
		<td><input type="text" name="LOT_NO" value="${mwh.LOT_NO}" readonly="readonly"></td>
		<td><input type="text" name="PART_NO" value="${mwh.PART_NO}" readonly="readonly"/></td>
		<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == mwh.PART_NO}">
			<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
		</c:forEach>
		<td><input type="text" name="QUAN" value="${mwh.QUAN}" readonly="readonly"/></td>
		<td><input type="text" name="FAIL" value="${mwh.FAIL}" readonly="readonly"/></td>
		<td><input type="text" name="R_QUAN" value="${mwh.R_QUAN}" readonly="readonly"/></td>
		<%-- <td name="LOT_NO">${mwh.LOT_NO}</td>
		<td name="PART_NO">${mwh.PART_NO}</td>
		<td name="PART_NAME">${mwh.PART_NAME}</td>
		<td name="QUAN">${mwh.QUAN}</td>
		<td name="PF">${mwh.PF}</td> --%>
		<td>
		<c:if test="${(mwh.IO == 'O') || (mwh.IO == 'o')}" >
		<p>입고</p>
		</c:if>
		<c:if test="${(mwh.IO == 'X') || (mwh.IO == 'x') }" >
		<p>출고</p>
		</c:if></td>
		<td align = "center">
			<a href="MCHWHCOR.do?LOT_NO=${mwh.LOT_NO}">수정</a>
		<!-- <button type="submit" >수정</button> -->
		</td>
	</tr>
	</c:forEach>
	</table>
	</form>
	<button type="button" onclick="location.href='/mchwh.do'">등록화면으로</button>
	<button type="button" onclick="location.href='/mchwhsea.do'">검색화면으로</button>
</body>
</html>
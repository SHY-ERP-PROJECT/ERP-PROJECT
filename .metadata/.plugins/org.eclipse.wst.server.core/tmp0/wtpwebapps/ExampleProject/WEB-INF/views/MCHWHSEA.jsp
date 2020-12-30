<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품창고검색</title>
</head>
<body>
	<jsp:useBean id="PRlist" class="java.util.ArrayList"/>
	<jsp:useBean id="PRmap" class="java.util.HashMap"/>
	
	<form name="mhsea" method="get" action="MCHWHSCH.do?PART_NO=${PART_NO}">
		<table border="1">
			<tr>
			<!-- 작업번호	제품모델번호	제품명 -->
			<th>제품모델번호</th>
			<!-- <th>제품모델번호</th>
			<th>제품명</th> -->
			</tr>
			<!-- 검색 -->
			<tr>
			<td><input name="PART_NO" type="text" size=10 /></td>
			<!-- <td><input id="modelno" type="text" size=10 /></td>
			<td><input id="domelname" type="text" size=20 /></td> -->
			
		</table>
		<button type="submit">검색</button>
		<button type="button" onclick="location.href='/mchwh.do'">등록화면으로</button>
		<br><br>
		<table border="1">
			<tr>
			<th>제품모델번호</th>
			<th>제품모델명</th>
			<th>제품 수량</th>
			</tr>
			<c:forEach var="nameCount" items="${nameCount}">
			<tr>
			<td><input type="text" value="${nameCount.PART_NO}" readonly="readonly" /></td>
			<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == nameCount.PART_NO}">
			<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
			</c:forEach>
			<td><input type="text" value="${nameCount.count}" readonly="readonly" /></td>
			</tr>
			</c:forEach>
		</table>
		<br>
		<table border="1">
			<tr>
				<th>작업번호</th>
				<th >제품모벨번호</th>
				<th >제품명</th>
				<th >생산수량</th>
				<th >불량수량</th>
				<th >실 생산수량</th>
				<th >입고</th>
				<th >비고</th>
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
				<td>
				<c:if test="${(mwh.IO == 'O') || (mwh.IO == 'o')}" >
				<p>입고</p>
				</c:if>
				<c:if test="${(mwh.IO == 'X') || (mwh.IO == 'x') }" >
				<p>출고</p>
				</c:if></td>
				<td><!-- 비고 -->
					<c:if test="${(mwh.IO == 'O') || (mwh.IO == 'o')}" >
				<button type="button" onclick="location.href='/mchwhout.do?LOT_NO=${mwh.LOT_NO}'">출고</button>
				</c:if>
				</td>
			</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>
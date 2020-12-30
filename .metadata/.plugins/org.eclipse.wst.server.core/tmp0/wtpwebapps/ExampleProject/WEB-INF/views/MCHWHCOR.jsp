<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품창고수정</title>
</head>
<body>
	<jsp:useBean id="PRlist" class="java.util.ArrayList"/>
	<jsp:useBean id="PRmap" class="java.util.HashMap"/>
	
	<form name="mhcor" method="get" action="MCHWHCOR.do?"><%-- ${mwh.LOT_NO}"> --%>
		
		<table border="1">
			<tr>
			<!-- 작업번호	제품모델번호	제품명	수량	불량갯수	입/출고 -->
			<th>작업번호</th>
			<th>제품모델번호</th>
			<th>제품명</th>
			<th>생산 수량</th>
			<th>불량 수량</th>
			<th>실 생산수량</th>
			<th>입고</th>
			</tr>
			<!-- 수정 -->
			<c:set var="mwh" value="${list}"/><!-- 수정할 자료가져오기 -->
			<tr>
			<td><input name="LOT_NO" type="text" size=10 value="${mwh.LOT_NO}" readonly="readonly"/></td>
			<td><input name="PART_NO" type="text" size=10 value="${mwh.PART_NO}" readonly="readonly"/></td>
			<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == mwh.PART_NO}">
			<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
			</c:forEach>
			<td><input name="QUAN" type="text" size=10 value="${mwh.QUAN}" readonly="readonly"/>EA</td>
			<td><input name="FAIL" type="text" size=10 value="${mwh.FAIL}"/>EA</td>
			<td><input name="R_QUAN" type="text" size=10 value="${mwh.R_QUAN}" readonly="readonly"/>EA</td>
			<td><select name="IO"  size=1>
				<c:if test="${(mwh.IO == null)}" >
				<option value=" " selected="selected"/>
				</c:if>
				<c:if test="${(mwh.IO == 'O') || (mwh.IO == 'o')}" >
				<option value="O" selected="selected">입고</option>
				</c:if>
				<option value="O">입고</option>
				<c:if test="${(mwh.IO == 'X') || (mwh.IO == 'x') }" >
				<option value="X" selected="selected">출고</option>
				</c:if>
				<option value="X">출고</option>
				</td>
			</tr>
		</table>
		<button type="submit" >수정</button>
		<br>
		<br>
		<button type="button" onclick="location.href='/mchwh.do'">등록화면으로</button>
		<button type="button" onclick="location.href='/mchwhsea.do'">검색화면으로</button>
	</form>
</body>
</html>
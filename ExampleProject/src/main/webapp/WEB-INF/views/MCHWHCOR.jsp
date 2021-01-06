<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); 
String id = (String)session.getAttribute("sessionId");%>
<!DOCTYPE html>
<html>
<script language="javascript">
function check() {
	var f = document.mwh;
	var q = f.QUAN.value;
	if(f.FAIL.value==""){
		alert("불량갯수를 입력하시오.");
		f.FAIL.focus();
		return false;
	}

	if(f.FAIL.value >= q){
		alert("생산수량보다 클 수 없습니다.");
		f.FAIL.vlaue = 0;
		f.FAIL.focus();
		return false;
	}
	return true;
}//check()

</script>
<head>
<meta charset="UTF-8">
<title>상품창고수정</title>
<link rel="stylesheet" href="resources/css/ERPcss.css">
</head>
<body>
	<jsp:include page="T_include.jsp" flush="true"/>
	<div class="sidebar"><jsp:include page="l_include.jsp"/></div>
	
	<div class="bodyall">
	<jsp:useBean id="PRlist" class="java.util.ArrayList"/>
	<jsp:useBean id="PRmap" class="java.util.HashMap"/>
	<c:set var="mwh" value="${list}"/><!-- 수정할 자료가져오기 -->
	
	<form name="mhcor" method="get" action="MCHWHCOR.do?" onsubmit="return check()"><%-- ${mwh.LOT_NO}"> --%>
		<h1>작업번호 ${mwh.LOT_NO}인 ${mwh.PART_NO}의 불량 수량을 수정하십시오.</h1>
		<div class="first">
		<button type="button" onclick="location.href='/mchwh.do'">등록화면으로</button>
		<button type="button" onclick="location.href='/mchwhsea.do'">검색화면으로</button>
	
		</div>
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
			<th>수정</th>
			</tr>
			<!-- 수정 -->
			<tr>
			<td><input name="LOT_NO" type="text" size=10 value="${mwh.LOT_NO}" readonly="readonly"/></td>
			<td><input name="PART_NO" type="text" size=10 value="${mwh.PART_NO}" readonly="readonly"/></td>
			<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == mwh.PART_NO}">
			<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
			</c:forEach>
			<td class="QUAN"><input name="QUAN" style="background-color:transparent;border:0;width:50px;" type="number" value="${mwh.QUAN}" readonly="readonly"/>EA</td>
			<td><input name="FAIL" size=5 type="number" min="0" value="${mwh.FAIL}" placeholder="불량품 수량" style="background-color:transparent;border:0;width:50px;" />EA</td>
			<td><input name="R_QUAN" size=5 type="number" value="${mwh.R_QUAN}" readonly="readonly" style="background-color:transparent;border:0;width:50px;" />EA</td>
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
			<td>
				<button type="submit" >수정</button>
			</td>
			</tr>
		</table>
		<hr>
		
	</form>
	</div>
</body>
</html>
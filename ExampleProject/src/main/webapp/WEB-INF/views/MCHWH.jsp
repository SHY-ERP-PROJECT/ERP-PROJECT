<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<script language="javascript">
function check() {
	var f = document.mwh; 
	if(f.PF.value==""){
		alert("불량갯수를 입력하시오.");
		f.PF.focus();
		return false;
	}
}//check()

</script>
      
<head>
<meta charset="UTF-8">
<title>상품창고등록</title>
</head>
<body>
	<jsp:useBean id="PRlist" class="java.util.ArrayList"/>
	<jsp:useBean id="PRmap" class="java.util.HashMap"/>
	
	<form name="mwh" method="get" onsubmit="return check()">
	<br>
		<input name="LOTNO" type="text" placeholder="작업번호를 입력하시오.">
		<button type="submit?lotno">검색</button>
		<br>
		<br>
		<c:if test="${mwhIn != null}">
		<table border="1">
			<tr>
			<!-- 작업번호	제품모델번호	제품명	수량	불량갯수	입/출고 -->
			<th>작업번호</th>
			<th>제품모델번호</th>
			<th>제품명</th>
			<th>수량</th>
			<th>불량 수량</th>
			<th>입고</th>
			</tr>
			<%-- <c:forEach var="mwhIn" items="${mwhIn}"> --%>
			<c:if test="${mwhIn != null}">
			<tr>
			<td><input name="LOT_NO" type="text" size=10 value="${mwhIn.LOT_NO}" readonly="readonly"/></td>
			<td><input name="PART_NO" type="text" size=10 value="${mwhIn.PART_NO}" readonly="readonly"/></td>
			<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == mwhIn.PART_NO}">
			<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
			</c:forEach>
			<td><input name="QUAN" type="text" size=10 value="${mwhIn.QUAN}" readonly="readonly"/>EA</td>
			<td><input name="FAIL" type="text" size=10 placeholder="불량품 수량"/>EA</td>
			<td><select name="IO" size=1>
				<option value="" selected="selected"/>
				<option value="O">입고</option>
				<!-- <option value="X">출고</option> --></td>
			</tr>
			</c:if>
			<%-- </c:forEach> --%>
		</table>
		
		<br>
		<button type="submit" >입력</button>
		</c:if>
		<button type="button" onclick="location.href='/mchwhsea.do'">검색화면으로</button>
		<br>
		<br>
		<table border="1">
			<tr>
			<!-- 작업번호	제품모델번호	제품명	수량	불량갯수	입/출고 -->
			<th>작업번호</th>
			<th>제품모델번호</th>
			<th>제품명</th>
			<th>수량</th>
			<th>비고</th>
			</tr>
			<c:forEach var="mwh" items="${lotList}">
			<tr>
			<td><input name="LOT_NO" type="text" size=10 value="${mwh.LOT_NO}" readonly="readonly"/></td>
			<td><input name="PART_NO" type="text" size=10 value="${mwh.PART_NO}" readonly="readonly"/></td>
			<c:forEach var="name" items="${partName}">
			<c:if test="${name.PART_NO == mwh.PART_NO}">
			<td><input name="PART_NAME" type="text" size=20 value="${name.PART_NAME}" readonly="readonly"/></td>
			</c:if>
			</c:forEach>
			<td><input name="QUAN" type="text" size=10 value="${mwh.QUAN}" readonly="readonly"/>EA</td>
			<td>
			<button type="button" onclick="location.href='MCHWH.do?LOTNO=${mwh.LOT_NO}'">등록</button>
			</td>
			</tr>
			</c:forEach>
		</table>
		<br>
	</form>
</body>
</html>
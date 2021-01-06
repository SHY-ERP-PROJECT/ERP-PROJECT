<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="resources/css/ERPcss.css">
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("sessionId");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생산계획 조회창</title>
<script>
function nullchecker(){
	if(p_search.LOT_NO.value==""){
		alert("검색어를 입력해주세요!");
		return false;
    }
    return true;
}
</script>
</head>
<body>
	<jsp:include page="T_include.jsp"/>
	<div class="sidebar"><jsp:include page="l_include.jsp"/></div>
	<div class="bodyall">
	<h1>생산계획 조회</h1>
	<div class="first">
		<button type="button" onclick="location.href='transferToP_view.do'" >생산계획등록</button>
	</div>
		<form name="p_search" method="get" action="${contextPath}/p_view.do" onsubmit="return nullchecker()">
		<input type="text" name="LOT_NO" placeholder="작업번호를 적어주세요"/>
		<input type="submit" class="btn btn-primary" value="검색" />
		</form>
	<div class="tablediv">
		<table class="table" border="1">
			<tr>
			<th></th>
			<th><a href="p_view.do?ORDER=LOT_NO">작업번호</a></th>
			<th><a href="p_view.do?ORDER=PART_NO">제품모델번호</a></th>
			<th><a href="p_view.do?ORDER=PART_NAME">제품명</a></th>
			<th>수량</th>
			<th><a href="p_view.do?ORDER=S_DATE">작업예정일</a></th>
			<th><a href="p_view.do?ORDER=F_DATE">완료예정일</a></th>
			<th>수정</th>
			<th>삭제</th>
			<th>출고</th>
		</tr>
		<tbody>
		<c:forEach var="row" items="${list}">
			<c:set var="i" value="${i+1}"/>
		<tr>
			<td class="i">${i}</td>
			<td width="50px">${row.LOT_NO}</td>
			<td class="NAME">${row.PART_NO}</td>
			<td class="NAME">${row.PART_NAME}</td>
			<td class="QUAN">${row.QUAN}${row.UNIT}</td>
			<td class="DATE">${row.S_DATE}</td>
			<td class="DATE">${row.F_DATE}</td>
			<td><div class="button"><button type="button" onclick="location.href='transferToPU.do?LOT_NO=${row.LOT_NO}'">수정</button></div></td>
			<td><div class="button"><button type="button" onclick="location.href='p_delete.do?LOT_NO=${row.LOT_NO}'">삭제</button></div></td>
			<td><div class="button"><button type="button" onclick="location.href='MCHWH.do?LOT_NO=${row.LOT_NO}'">출고</button></div></td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
		</div>
		<div class="paging">
			<c:forEach begin="1" end="${pageNum}" var="num">
   				<span>
     				<li><a href="p_view.do?num=${num}">${num}</a></li>
  				</span>
 			</c:forEach>
		</div>
	</div>
</body>
</html>
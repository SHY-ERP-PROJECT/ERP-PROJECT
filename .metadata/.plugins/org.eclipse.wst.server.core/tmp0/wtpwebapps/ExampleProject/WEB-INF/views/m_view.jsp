<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin : 20px;
	}
 	li {
 		display : inline-block;
 		background : royalblue;
 		width : 25px;
 		height : 25px;
 		margin-top : 10px;
 		text-align: center;
 	}
 	.i{
 		width : 20px;
 	}
 	.NAME{
 		width :240px;
 	}
 	.QUAN{
 		width :100px;
 	}
 	.button{
 		text-align : center;
 	}
	.first{float:left; margin-right : 30px; margin-bottom : 10px
	}
	.third{
		position : absolute; 
		left:400px;
	 }
</style>
<script>
function nullcheckers(){
	if(m_search.M_NO.value==""){
	   	 alert("검색어를 입력해주세요!");
	     return false;
	}     
	return true;
}
</script>
</head>
<body>
		<h1>자재창고 조회</h1>
		<div class="first">
		<button type="button" onclick="location.href='/transferToM_input.do'">새자재추가</button>
		</div>
		<div class="second">
		<form name="m_search" method="get" action="${contextPath}/m_view.do" onsubmit="return nullcheckers()">
		<input type="text" name="M_NO" placeholder="M_NO를 적어주세요"/>
		<input type="submit" value="검색" />
		</form>
		</div>
		<table class ="table" border="1">
		<tr>
			<th></th>
			<th><a href="m_view.do?ORDER=M_NO">자재번호</a></th>
			<th><a href="m_view.do?ORDER=M_NAME">자재명</a></th>
			<th>수량</th>
			<th>추가수량</th>
			<th>등록</th>
		</tr>
			<c:forEach var="row" items="${list}">
			<c:set var="i" value="${i+1}"/>
		<form name="m_update" method="get" action="${contextPath}/m_update.do?M_NO=${row.M_NO}" onsubmit="return nullcheckeri(PLUS_QUAN)">
				<tr>
					<th class="i">${i}</th>
					<td><input type="text" name="M_NO" value="${row.M_NO}" style="background-color:transparent;border:0" readonly/></td>
					<td class="NAME">${row.M_NAME}</td>
					<td class="QUAN">${row.M_QUAN}EA</td>
					<td><input type="number" name="PLUS_QUAN" style="background-color:transparent;border:0;width:50px;" min="0" placeholder="0"/>EA</td>
					<td><div class="button"><button type="submit">추가</button></div></td>
				</tr>
			</form>
			</c:forEach>
		</table>
				<div class="third">
			<c:forEach begin="1" end="${pageNum}" var="num">
   				<span>
     				<li><a style="color:white" href="m_view.do?num=${num}">${num}</a></li>
  				</span>
 			</c:forEach>
		</div>

</body>
</html>
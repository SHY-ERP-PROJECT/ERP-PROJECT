<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<html>
<head>
<title>4M factory 로그인</title>
<link rel="stylesheet" href="resources/css/ERPcss.css">
<style>
   .home{display: flex;
  justify-content: center;
  align-items: center;
  min-height: 50vh;
  font-weight:900;
   }
   
</style>
</head>
<body>
   <!-- ne = not equals eq = equals -->
   <c:if test="${msg ne null }">
      <Script>
         alert('${msg}');
      </Script>
   </c:if>
   <div class="home">
   <form method="post" action="/t_include.do">
   <h2>WELCOME TO KRJ FACTORY</h2>
      ID&nbsp;&nbsp; : <input type="text" name="id"><br> 
      PW  : <input type="password" name="pw"><br>
       <input class="bottom_buttons" type="submit" value="LOGIN">
      </form>
      </div>
</body>
</html>
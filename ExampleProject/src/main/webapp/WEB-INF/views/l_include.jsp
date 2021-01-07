<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    height:800px;
    background-color: #f1f1f1;
}
li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}
li a:hover:not(li) {
    background-color: #555;
    color: white;
}</style>
</head>
<body>
<ul>
      <li><a href="/p_view.do">생산계획</a></li>
      <li><a href="/mchwh.do">제품창고</a></li>
      <li><a href="/bom.do">BOM</a></li>
      <li><a href="/m_view.do">자재창고</a></li>
    </ul>
</body>
</html>
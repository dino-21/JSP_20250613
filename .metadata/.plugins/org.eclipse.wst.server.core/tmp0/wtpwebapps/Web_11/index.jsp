<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
response.sendRedirect("http://localhost:8081/Web_11/BoardServlet?command=board_list");
%>
</body>
</html>
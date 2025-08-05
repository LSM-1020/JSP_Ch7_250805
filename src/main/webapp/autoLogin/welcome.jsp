<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String sid = (String) session.getAttribute("user");
	
		if (sid == null) {//로그인 하지 않은상태에서 welcom페이지 방문시 로그인페이지로 강제이동
			response.sendRedirect("login.jsp"); 
		}
	%>
	<h2><%=sid %>님 환영합니다</h2>
	<a href = "logout.jsp">로그아웃</a>
</body>
</html>
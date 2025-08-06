<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 사용 연습</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
		
		for(Cookie cookie : cookies) {
			out.println(cookie.getName() + "<br>");
			out.println(cookie.getValue() + "<br>");
			out.println(cookie.getMaxAge() + "<br>");
		
		}	
		
		}
		
	
	%>
</body>
</html>
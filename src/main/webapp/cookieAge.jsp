<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 유효시간 설정</title>
</head>
<body>
	<%
		Cookie[] cookies= request.getCookies();
		for(Cookie cookie: cookies) {
			cookie.setMaxAge(60*60*24*7); //초단위
			response.addCookie(cookie);
		}
		for(Cookie cookie: cookies) { //쿠키 삭제는 유효시간을 0으로 설정하면 삭제됨
			cookie.setMaxAge(0); //쿠키 삭제
			response.addCookie(cookie);//변경된 쿠키 다시 서버로 보내기
		}
		
	%>
</body>
</html>
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
		//쿠키배열에서 각 쿠키에 저장된값 가져오기, 서버로 보낸 쿠키를 다시 클라이언트로 가져와야함, request
		Cookie[] cookies = request.getCookies(); //쿠키의 반환타입은 쿠키의 배열로
	
		for(Cookie cookie :cookies) {
			String cValue = cookie.getValue(); //쿠키의 값 가져오기
			if(cValue.equals("tiger")) {
				out.println(cValue +"님 환영합니다 <br>");	
			}
			
		}
	
	%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<%	
		Cookie[] cookies = request.getCookies(); //기존에 존재하는 쿠키 가져오기
		//처음사이트 방문시 or 유효시간 경과후 방문때는 cookies = null
		String savedId = ""; //자동으로 불러올 ID
		String savedPw = ""; //자동으로 불러올 PW
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("saveId")) {//쿠키 중 이름이 saveId인 쿠키를 추출
					savedId = cookie.getValue(); //쿠키의 saveId이름으로 저장된 실제 아이디값인 (tiger) 가져오기
				}
				if(cookie.getName().equals("savePw")) {//쿠키 중 이름이 saveId인 쿠키를 추출
					savedPw = cookie.getValue(); //쿠키의 savePw이름으로 저장된 실제 비밀번호값인 (12345) 가져오기
				}
			}
		}

	%>
 <h2>회원 로그인</h2>
 <hr>
 <form action = "loginOk.jsp" method = "post">
 	아이디 : <input type = "text" name = "loginId" value = "<%=savedId%>"><br><br>
 	비밀번호 : <input type = "text" name = "loginPw" value = "<%=savedPw%>"><br><br>
 	<input type = "checkbox" name ="rememberId" <%= (savedId.isEmpty() ? "" :"checked") %>> 자동로그인 <%--savedId값이 비어있으면 체크안된상태, 값이 있으면 체크 --%>
 	<input type = "submit" value = "로그인">
 </form>
</body>
</html>
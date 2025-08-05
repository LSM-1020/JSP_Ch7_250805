<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String cid = "";
		String cpw = "";
		
		if(cookies != null) {
			for(Cookie cookie:cookies){
				if(cookie.getName().equals("saveId")){ //쿠키의 saveId값 가져오기
					cid = cookie.getValue();
				}
				if(cookie.getName().equals("savePw")){ //쿠키의 saveId값 가져오기
					cpw = cookie.getValue();
				}
			}
		}
		//로그인 성공 처리
		if(cid.equals("tiger") && cpw.equals("12345")) {
			session.setAttribute("user", cid);
			out.println(cid+"님 자동로그인 완료");
		} else {
			response.sendRedirect("login.jsp");
		}
		
	%>
</body>
</html>
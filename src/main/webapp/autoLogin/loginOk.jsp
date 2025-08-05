<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid  = request.getParameter("loginId");
		String mpw  = request.getParameter("loginPw");
		String rememberId  = request.getParameter("rememberId");
		// System.out.println(rememberId); 참이면 on 거짓이면 null
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
			if(rememberId != null) { //참이면 체크박스에 체크가 된 상태로 넘어옴
				Cookie cookie = new Cookie("saveId",mid); //쿠키에 savId -> tiger값 생성
				Cookie cookie2 = new Cookie("savePw",mpw);//쿠키에 savPw -> 12345값 생성
				cookie.setMaxAge(60*60*24*7); //7일동안 유지
				cookie2.setMaxAge(60*60*24*7); //7일동안 유지
				response.addCookie(cookie);//쿠키 클라이언트에게 다시 보내기
				response.addCookie(cookie2);//쿠키 클라이언트에게 다시 보내기
			} else { //체크박스에 체크를 안한 상태로 넘어오면-> 쿠키 삭제하기->자동로그인 풀림
				Cookie cookie = new Cookie("saveId",mid); //쿠키에 savId 생성
				Cookie cookie2 = new Cookie("savePd",mpw); //쿠키에 savPw 생성
				cookie.setMaxAge(0);//쿠키 삭제
				cookie2.setMaxAge(0);//쿠키 삭제
				response.addCookie(cookie);//쿠키 클라이언트에게 다시 보내기
				response.addCookie(cookie2);//쿠키 클라이언트에게 다시 보내기
			}
			
			
			session.setAttribute("user", mid);
			response.sendRedirect("welcome.jsp"); //로그인 성공시 wellcome페이지로 '강제이동'
		} else {
			response.sendRedirect("login.jsp"); //로그인 실패시 login페이지로 '강제이동'
		}
			
	%>
</body>
</html>
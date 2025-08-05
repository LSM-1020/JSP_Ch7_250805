<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%!
		String mid;
		String mpw;	
	%>
	<%
		request.setCharacterEncoding("utf-8");
		mid = request.getParameter("loginId");
		mpw = request.getParameter("loginPw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
			session.setAttribute("sid", mid); //세션에 id값 저장->로그인 성공
			Cookie cookie = new Cookie("cid", mid); //cookie는 기본생성자가 없어서 매개변수 입력해야함, 객체 만들면서 변수 대입
			response.addCookie(cookie); //쿠키는 서버에서 클라이언트로 보내야함, 응답, response
			response.sendRedirect("wellcome.jsp");//성공하면 wellcome페이지로
			
		} else {
			response.sendRedirect("login.jsp");//실패하면 다시 로그인 페이지로
		}
	%>
</body>
</html>
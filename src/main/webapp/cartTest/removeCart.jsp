<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록 삭제</title>
</head>
<body>
	<%
		//처음부터 쿠키에 저장되어있기 때문에 장바구니를 비우기 위해서는 session.removeAttribute("cart"); 가 아닌 cookie를 지워야함
		Cookie cookie = new Cookie("cart","");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	%>
	<a href = "viewCart.jsp">장바구니 목록 보기</a><br><br>
	<a href = "productList.jsp">상품추가 페이지로 가기</a><br><br>
</body>
</html>
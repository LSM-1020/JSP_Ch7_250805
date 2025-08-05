<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
</head>
<body>
	<h2>내 장바구니 목록</h2>
	<%
		Cookie[] cookies = request.getCookies();
		String savedCart = "";
		
		if(cookies != null) { //기존쿠키 존재할때만 -> 기존의 쿠키에 저장된 상품 목록
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("cart")) {
				savedCart = cookie.getValue(); //기존 장바구니에 있던 상품목록
			}
		}
	}
		if(savedCart == null) {
			out.println("장바구니가 비어있습니다");
		} else {
			//out.println(savedCart); //상품 목록 출력
			String[] carts = savedCart.split("/"); // ()문자를 기준으로 문자열 분리-> {"노트북""아이패드""스마트폰"} 문자열 배열형태로 반환
			for(String cart : carts) {
				out.println("*" + cart);
			}
		}	 
	%>
	<a href = "removeCart.jsp">장바구니 비우기</a>
</body>
</html>
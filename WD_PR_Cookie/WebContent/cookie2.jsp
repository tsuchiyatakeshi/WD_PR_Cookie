<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String[] names = { "name", "address" };
Cookie[] cookies = new Cookie[2];
if(request.getParameter("rec") != null) {
	for(int i = 0; i < names.length; i++) {
		cookies[i] = new Cookie(names[i],request.getParameter(names[i]));
		cookies[i].setMaxAge(60 * 60 * 24 * 180);
		cookies[i].setVersion(1);
		response.addCookie(cookies[i]);
	}
	out.println("クッキーに情報が保存されました");
} else {
	for(int i = 0; i < names.length; i++) {
		cookies[i] = new Cookie(names[i], "");
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
	}
	out.println("クッキーから情報を破棄しました");
}
%>
        
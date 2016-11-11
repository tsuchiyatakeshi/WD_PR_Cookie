<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean flag = false;
int count = 1;
Cookie cook = null;
Cookie[] cookies = request.getCookies();
if(cookies != null) {
	for(Cookie current : cookies) {
		if(current.getName().equals("cnt") == true) {
			count = Integer.parseInt(current.getValue()) + 1;
			cook = new Cookie("cnt", (new Integer(count)).toString());
			cook.setMaxAge(60 * 60 * 24 * 180);
			response.addCookie(cook);
			flag = true;
			break;
		}
	}
}
if(!flag) {
	cook = new Cookie("cnt", "1");
	cook.setMaxAge(60 * 60 * 24 * 180);
	response.addCookie(cook);
}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>counter</title>
</head>
<body>
あなたはこのサイトに<%=count %>回、アクセスしました。
</body>
</html>
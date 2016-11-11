<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] names  = { "name", "address" };
String[] values = { "", "" };
Cookie[] cookies = request.getCookies();

if(cookies != null)
{
	for(int i = 0; i < names.length; i++) 
	{
		for(Cookie cook : cookies) 
		{
			if(cook.getName().equals(names[i])) 
			{
				values[i] = cook.getValue();
				break;
			}
		}
	}
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cookie information</title>
</head>
<body>
<form method="POST" action="cookie2.jsp">
<div>
	<label>名前：<br />
		<input type="text" name="name" size="20"
			value="<%=values[0] %>" />
	</label>
</div>
<div>
	<label>E-Mail：<br />
		<input type="text" name="address" size="40"
			value="<%=values[1] %>" />
	</label>
</div>
<div>
	<label>
		<input type="checkbox" name="rec" value="true" checked />
		情報を記録する
	</label>
</div>
<div>
	<input type="submit" value="登録" />
</div>
</form>
</body>
</html>
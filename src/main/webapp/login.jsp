<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.dao.*"%>
<%@ page import="member.bean.*"%>
<%@ page import="member.controller.LoginServlet"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	String userName = "", password = "", rememberVal = "";
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("cookuser")) {
		userName = cookie.getValue();
			}
			if (cookie.getName().equals("cookpass")) {
		password = cookie.getValue();
			}
			if (cookie.getName().equals("cookrem")) {
		rememberVal = cookie.getValue();
			}
		}
	}
	%>
	<div class="center">
		<%
		String err = (String) request.getAttribute("error");
		if (err != null) {
		%>
		<div>
			<p style="color: red;">
				<span style="margin-left: 21px;"> <%out.print(err);%></span>
			</p>
		</div>
		<%
		}
		%>
		<div class="header">Please Sign In</div>
		<form id="login-form" method="post"
			action="<%=request.getContextPath()%>/login">
			<input id="email" maxlength="30" type="email" placeholder="E-mail"
				required value="<%=userName%>"> <input id="pass"
				maxlength="50" type="password" placeholder="Password" required
				value="<%=password%>"> <input id="checkbox" type="checkbox"
				class="check" name="remember" value="1"
				<%="1".equals(rememberVal.trim()) ? "checked=\"checked\"" : ""%>>
			<label>Remember me</label> <input id="login" type="submit" onclick=""
				value="Login"> <a href="/register.jsp">Click here to
				Register</a>

		</form>

	</div>
</body>
</html>
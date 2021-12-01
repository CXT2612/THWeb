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
	<div class="center">
		<div class="header">Please Sign In</div>
		<form id="login-form" method="POST" action="login">

			<input id="email" maxlength="30" type="email" placeholder="E-mail"
				required value=""> <input id="pass" maxlength="50"
				type="password" placeholder="Password" required value=""> <input
				id="checkbox" type="checkbox" class="check" name="remember">
			<label>Remember me</label> <input id="login" type="submit" onclick=""
				value="Login"> <a href="/Web/begin/register.jsp">Click
				here to Register</a>

		</form>
		<%
		String err = (String) request.getAttribute("error");
		if (err != null) {
		%>
		<div>
			<p style="color: red;">
				<span style="margin-left: 21px;"> <% out.print(err);%></span>
			</p>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>
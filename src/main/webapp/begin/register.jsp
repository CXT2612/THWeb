<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.dao.*"%>
<%@ page import="member.bean.*"%>
<%@ page import="member.controller.RegisterServlet"%>

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
		<div class="header">Register</div>
		<form id="register-form" method="post" action="<%= request.getContextPath() %>/register">
			<input id="name" maxlength="30" type="text" placeholder="User name"
				required value=""> <input id="email" type="email"
				placeholder="E-mail" required value=""> <input id="pass"
				maxlength="30" type="password" placeholder="Password" required
				value=""> <input id="repass" maxlength="30" type="password"
				placeholder="Re Password" required value=""> <input
				type="submit" value="Register" onclick=""> <a
				href="../begin/login.jsp">Click here to Login</a>
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
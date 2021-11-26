<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.memberBean"%>
<%@ page import="member.memberDAO"%>
<%@ page import="member.LoginServlet"%>

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
				type="password" placeholder="Password" required value="">
			<%
			String err = (String) request.getAttribute("error");
			if (err != null) {
			%>
			<div>
				<p style="color: red;">
					<span style="margin-left: 21px;">
						<%
						out.print(err);
						%>
					</span>
				</p>
			</div>
			<%
			}
			%>
			<input id="checkbox" type="checkbox" class="check" name="remember">
			<label>Remember me</label> 
			<input id="login" type="submit" onclick="Validator()"
				value="Login" > <a href="/Web/begin/register.jsp">Click
				here to Register</a>

		</form>
	</div>
	<script>
		// Mong  muốn của chúng ta
		Validator({
			form : '#login-form',
			errorSelector : [ '.form-message', '.warning-message' ],
			rules : [
					Validator.minLength('#pass', 8),
					Validator.minLength('#email', 5),
					Validator.maxLength('#pass', 30),
					Validator.maxLength('#email', 50),
					Validator.isEmail('#email'),
					Validator.isRequired('#email', 'Vui lòng nhập đúng email!'),
					Validator.isRequired('#pass',
							'Vui lòng nhập đúng password!'), ],
		// onSubmit:function(data){ console.log(data); }
		});
	</script>
</body>
</html>
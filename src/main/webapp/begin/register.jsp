<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.RegisterServlet"%>
<%@ page import="member.memberBean"%>
<%@ page import="member.memberDAO"%>
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
		<form id="register-form" method="post" action="register">
			<input id="name" maxlength="30" type="text" placeholder="User name"
				required value="${usename}"> <input id="email" type="email"
				placeholder="E-mail" required value="${email}"> <input
				id="pass" maxlength="30" type="password" placeholder="Password"
				required value="${pass}"> <input id="repass" maxlength="30"
				type="password" placeholder="Re Password" required value="${repass}">
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
			<input type="submit" value="Register" onclick="Validator()"> <a
				href="/Web/begin/login.jsp">Click here to Login</a>
		</form>
	</div>
	<script>
		// Mong  muốn của chúng ta
		Validator({
			form : '#register-form',
			errorSelector : [ '.form-message', '.warning-message' ],
			rules : [
					Validator.minLength('#pass', 8),
					Validator.minLength('#repass', 8),
					Validator.minLength('#user', 3),
					Validator.minLength('#email', 5),
					Validator.maxLength('#pass', 30),
					Validator.maxLength('#repass', 30),
					Validator.maxLength('#name', 30),
					Validator.isRequired('#name',
							'Vui lòng nhập tên tài khoản!'),
					Validator.isRequired('#pass', 'Vui lòng nhập mật khẩu!'),
					Validator.isRequired('#email',
							'Vui lòng nhập email của bạn!'),
					Validator.isRequired('#repass',
							'Vui lòng nhập lại mật khẩu xác nhận!'),
					Validator.isConfirmed('#repass', function() {
						return document.querySelector('#pass').value;
					}, 'Mật khẩu nhập lại không chính xác'),
					Validator.isEmail('#email'), ],
		// onSubmit:function(data){ console.log(data); }
		});
	</script>
</body>
</html>
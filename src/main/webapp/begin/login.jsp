<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="center">
		<div class="header">Please Sign In</div>		
		<form method="post">			
			<input id ="email" type="email" placeholder="E-mail">			
			<input id="pass" type="password" placeholder="Password">				
			<input type="checkbox" class="check" name="remember">
			<label>Remember me</label>			
			<input type="submit" value="Login">
			<a href="/register.jsp">Click here to Register</a>			
		</form>		
	</div>
</body>
</html>
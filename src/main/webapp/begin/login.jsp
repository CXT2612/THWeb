<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  

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
<<<<<<< HEAD
		<form id="login-form" method="post" action="<%=request.getContextPath()%>/login" method="post">			
=======
		<form id="login-form" method="post">			
>>>>>>> ae8a964fb53d132970acbe4fd7d88dafdb3e4727
			<input id ="email" type="email" placeholder="E-mail">			
			<input id="pass" type="password" placeholder="Password">				
			<input type="checkbox" class="check" name="remember">
			<label>Remember me</label>			
			<input id="login" type="submit" value="Login">
			<a href="/Web/begin/register.jsp">Click here to Register</a>			
		</form>		
	</div>
	<script>
            // Mong  muốn của chúng ta
           Validator
           ({
               form:'#login-form',
               errorSelector:['.form-message','.warning-message'],
               rules:
            	[  
            		Validator.minLength('#pass',8),     
                    Validator.minLength('#email',5),
                    Validator.maxLength('#pass',30),     
                    Validator.maxLength('#email',50),
                    Validator.isEmail('#email'),
            	   	Validator.isRequired('#email','Vui lòng nhập đúng email!'),
                   	Validator.isRequired('#pass','Vui lòng nhập đúng password!'),                                                   
               	]
               ,
              // onSubmit:function(data){ console.log(data); }
           });
     </script>
</body>
</html>
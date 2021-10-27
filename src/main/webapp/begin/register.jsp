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
		<div class="header">Register</div>
		<form id="register-form" method ="post">
			<input id ="name" type="text" placeholder="User name">			
			<input id ="email" type="email" placeholder="E-mail">			
			<input id="pass" type="password" placeholder="Password">	
			<input id="repass" type="password" placeholder="Re Password">						
			<input type="submit" value="Register">
			<a href="/Web/begin/login.jsp">Click here to Login</a>
		</form>
	</div>
	<script>
            // Mong  muốn của chúng ta
           Validator
           ({
               form:'#register-form',
               errorSelector:['.form-message','.warning-message'],
               rules:
            	[     
            		Validator.minLength('#pass',8),
            		Validator.minLength('#repass',8),
            		Validator.minLength('#user',3),
            		Validator.minLength('#email',5),
            		Validator.maxLength('#pass',30),
            		Validator.maxLength('#repass',30),
            		Validator.maxLength('#name',30),
                    Validator.isRequired('#name','Vui lòng nhập tên tài khoản!'),
                    Validator.isRequired('#pass','Vui lòng nhập mật khẩu!'),
                    Validator.isRequired('#email','Vui lòng nhập email của bạn!'),
                    Validator.isRequired('#repass','Vui lòng nhập lại mật khẩu xác nhận!'),       
                    Validator.isConfirmed
                    (	'#repass',
                    	function(){return document.querySelector('#pass').value;}, 
                    	'Mật khẩu nhập lại không chính xác'
                    ),
                    Validator.isEmail('#email'),                    
               	]
               ,
              // onSubmit:function(data){ console.log(data); }
           });
     </script>
</body>
</html>
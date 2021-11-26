<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>  
<%@ page import="member.*"%>
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
		<form id="login-form" method="post" action="login">			
			<input id ="email" maxlength="30" type="email" placeholder="E-mail" required value="${param.email}">			
			<input id="pass" maxlength="50" type="password" placeholder="Password" required value="${param.pass}">				
			<input id="checkbox" type="checkbox" class="check" name="remember">
			<% String err = (String) request.getAttribute("error");
                if (err != null) {%>
            <div>
                <p style="color:red;"><span style="margin-left:21px;"><%out.print(err); %></span></p>
            </div> 
            <% }%>
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
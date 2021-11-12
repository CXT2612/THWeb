<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>main</title>
<style type="text/css">
		header
		{
			border: 1px solid #D3D3D3;
		}
		section
		{
			float:right;
			width:80%;
			min-height:750px;
		}
		aside
		{
			float:left;
			min-height:750px;
			background: #E5E5E5;
			border: 1px solid #D3D3D3;
		}
		body
		{
			background: white;			
			overflow: hidden;
			font-family: 'Arial', sans-serif;
		}
		h1
		{
			margin-left:3%;
			font-weight: 400;
			border-bottom: 1px solid #E5E5E5;
			width: 94%;	
			margin-bottom: 20px			
		}
		.center
		{
			width: 94%;
			margin: 0px auto;
			position: relative;
		}
		.center .bheader
		{
			font-size: 13px;
			font-weight: 50;
			color: black;
			padding: 10px 0 10px 15px;
			background: #E5E5E5;
			border: 1px solid #D3D3D3;
			border-radius: 5px 5px 0px 0px;
		}
		.center form
		{
			position: static;
			background: white;
			width: 100%;
			padding: 10px 0 10px 15px;
			box-sizing: border-box;
			border: 1px solid #D3D3D3;
			border-radius: 0px 0px 5px 5px;
		}
		form input
		{
			height: 30px;
			width: 75%;
			padding: 0px 10px;			
			border-radius: 3px;
			border: 1px solid #D3D3D3;
			font-size: 13px;
			margin-bottom: 10px;
			margin-top: 10px;
		}					
		form input[type="submit"]
		{
			margin-top: 5px;
			margin-bottom: 5px;
			width: 10%;
			height: 30px;
			color: #4C4C4C;
			line-height: 30px;
			border-radius: 5px;		
			background: white;
			font-size: 13px;
		}	
		form textarea
		{
			padding: 0px 10px;			
			border-radius: 3px;
			border: 1px solid #D3D3D3;
			font-size: 13px;
			margin-bottom: 10px;
			margin-top: 10px;
			height: 60px;
			width: 75%;
		}			
		label
		{
			text-decoration: none;
			font-size: 13px;
			font-weight: 600;
			color: black;
			padding: 0px 0px 0px 0px;
			
		}	
		form a
		{
			text-decoration: none;
			font-size: 13px;
			color: #1E90FF;
			padding: 0 0 0 0px;
		}
</style>
</head>
<body>
	<header>
		<%@include file="../layout/header.jsp"%>
	</header>
<div class="row">
	<aside>
		<%@include file="../layout/menu.jsp"%>
	</aside>
	<section>
		<h1>Edit Profile</h1>
	<div class="center">
		<div class="bheader">Profile Form Elements</div>		
=======
<title>User Profile</title>
<link rel="stylesheet" type="text/css" href="style-profile.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<h1>Edit Profile</h1>
	<div class="center">
		<div class="header">Profile Form Elements</div>		
>>>>>>> 0c7b4a4a39e63fb082fc2a3c6cd1c62ad27df47e
		<form id="profile-form" method="post">		
			<label>First Name</label><br/>
			<input id ="fname" type="text" placeholder="Enter the first name"><br/>
			<label>Last Name</label><br/>	
			<input id ="lname" type="text" placeholder="Enter the last name"><br/>
			<label>Email</label><br/>
			<br/>
			<label>Phone</label><br/>
			<input id ="phone" type="text" placeholder="Enter your phone number"><br/>
			<label>Descriptions</label><br/>
			<textarea id="des"></textarea><br/>
			<input id="submit" type="submit" value="Submit Button">
			<input id="reset" type="submit" value="Reset Button">
						
		</form>		
	</div>
<<<<<<< HEAD
	</section>
</div>
=======
>>>>>>> 0c7b4a4a39e63fb082fc2a3c6cd1c62ad27df47e
	<script>
            // Mong  muốn của chúng ta
           Validator
           ({
               form:'#profile-form',
               errorSelector:['.form-message','.warning-message'],
               rules:
            	[     
            		Validator.minLength('#fname',3),
            		Validator.minLength('#lname',3),
            		Validator.minLength('#phone',9),            		
            		Validator.maxLength('#fname',30),
            		Validator.maxLength('#lname',30),
            		Validator.maxLength('#phone',13),
                    Validator.isRequired('#fname','Vui lòng nhập họ của bạn!'),
                    Validator.isRequired('#lname','Vui lòng nhập tên của bạn!'),
                    Validator.isRequired('#phone','Vui lòng nhập SĐT của bạn!'),
                    Validator.isRequired('#des','Vui lòng nhập mô tả dưới 200 ký tự!'),                                               
               	]
               ,
              // onSubmit:function(data){ console.log(data); }
           });
     </script>
</body>
</html>
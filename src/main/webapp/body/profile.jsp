<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="stylesheet" type="text/css" href="style-profile.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<h1>Edit Profile</h1>
	<div class="center">
		<div class="header">Profile Form Elements</div>		
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
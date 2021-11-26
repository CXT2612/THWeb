<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ page import="member.ProfileServlet"%>
<%@ page import="member.memberBean"%>
<%@ page import="member.memberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<style type="text/css">
header {
	border: 1px solid #D3D3D3;
}

section {
	float: right;
	width: 80%;
	min-height: 750px;
}

aside {
	float: left;
	min-height: 750px;
	background: #E5E5E5;
	border: 1px solid #D3D3D3;
}

body {
	background: white;
	overflow: hidden;
	font-family: 'Arial', sans-serif;
}

h1 {
	margin-left: 1%;
	font-weight: 400;
	border-bottom: 1px solid #E5E5E5;
	width: 94%;
	margin-bottom: 20px
}

.center {
	width: 99%;
	margin: 0px auto;
	position: relative;
}

.center .bheader {
	font-size: 13px;
	font-weight: 50;
	color: black;
	padding: 10px 0 10px 15px;
	background: #E5E5E5;
	border: 1px solid #D3D3D3;
	border-radius: 5px 5px 0px 0px;
}

.center form {
	position: static;
	background: white;
	width: 100%;
	padding: 10px 0 10px 15px;
	box-sizing: border-box;
	border: 1px solid #D3D3D3;
	border-radius: 0px 0px 5px 5px;
}

form input {
	height: 30px;
	width: 75%;
	padding: 0px 10px;
	border-radius: 3px;
	border: 1px solid #D3D3D3;
	font-size: 13px;
	margin-bottom: 5px;
	margin-top: 5px;
}

form input[type="submit"] {
	margin-top: 5px;
	margin-bottom: 5px;
	width: 12%;
	height: 30px;
	color: #4C4C4C;
	line-height: 30px;
	border-radius: 5px;
	background: white;
	font-size: 13px;
}

form textarea {
	padding: 0px 10px;
	border-radius: 3px;
	border: 1px solid #D3D3D3;
	font-size: 13px;
	margin-bottom: 5px;
	margin-top: 5px;
	height: 60px;
	width: 75%;
}

label {
	text-decoration: none;
	font-size: 13px;
	font-weight: 600;
	color: black;
	padding: 0px 0px 0px 0px;
}

form a {
	text-decoration: none;
	font-size: 13px;
	color: #1E90FF;
	padding: 0 0 0 0px;
}

h5 {
	font-size: normal;
	font-weight: normal;
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
				<form id="profile-form" method="post" action="profile">
					<jsp:useBean id="userinfo" class="member.memberDAO"></jsp:useBean>
					<label>First Name</label><br /> 
					<input id="fname" type="text"
						placeholder="Enter the first name"
						value='<jsp:getProperty property="fname" name="userinfo"/>'
						required><br /> 
					<label>Last Name</label><br /> 
					<input id="lname" type="text" placeholder="Enter the last name"
						value='<jsp:getProperty property="lname" name="userinfo"/>'
						required><br /> 
					<label>Email</label><br />
					<h5><jsp:getProperty property="email" name="userinfo" /></h5>
					<label>Phone</label><br /> <input id="phone" type="text"
						placeholder="Enter your phone number" value="" required><br />
					<label>Descriptions</label><br />
					<textarea id="des"
						value='<jsp:getProperty property="des" name="userinfo"/>'></textarea>
					<br /> <input id="submit" type="submit" value="Submit Button"
						onclick=""> <input id="reset" type="submit"
						value="Reset Button" onclick="reset()">
				</form>
			</div>
		</section>
	</div>
	<script>
		// Mong  muốn của chúng ta
		Validator({
			form : '#profile-form',
			errorSelector : [ '.form-message', '.warning-message' ],
			rules : [
					Validator.minLength('#fname', 3),
					Validator.minLength('#lname', 3),
					Validator.minLength('#phone', 9),
					Validator.maxLength('#fname', 30),
					Validator.maxLength('#lname', 30),
					Validator.maxLength('#phone', 13),
					Validator.isRequired('#fname', 'Vui lòng nhập họ của bạn!'),
					Validator
							.isRequired('#lname', 'Vui lòng nhập tên của bạn!'),
					Validator
							.isRequired('#phone', 'Vui lòng nhập SĐT của bạn!'),
					Validator.isRequired('#des',
							'Vui lòng nhập mô tả dưới 200 ký tự!'), ],
		// onSubmit:function(data){ console.log(data); }
		});
	</script>
	<script>
        function reset(){
            location.reload();
        }
    </script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="WebApplication5.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
	<link href="csss/LoginFormStyle.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>




<body>
    <form id="form1" runat="server">
        <div class="formlogin">
			<div class="formlogin2">Member Login</div>


			<div class="formlogin1">
				<div class="formlogin3">
				<div class="input-group mb-3">
					 <div class="input-group-prepend">
						<span class="input-group-text">U</span>
					</div>
					<asp:TextBox ID="Usertxt" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
				</div>
				</div>
			</div>


			<div class="formlogin1">
				<div class="formlogin3">
				<div class="input-group mb-3">
					 <div class="input-group-prepend">
						<span class="input-group-text">P</span>
					</div>
					<asp:TextBox ID="Passtxt" runat="server" type="password" CssClass="form-control" placeholder="Password"></asp:TextBox>
				</div>
				</div>
			</div>


			<div>
				<asp:Button ID="Button1" runat="server" Text="LOGIN" class="btn btn-dark button1" OnClick="Button1_Click"/>
				<br />
				<p><b><a href="RegisterForm.aspx" target="_blank">Create Your Account</a></b> : <b><a href="HomePage.aspx" target="_blank">Back</a></b></p>
			</div>
        </div>
    </form>
</body>





</html>

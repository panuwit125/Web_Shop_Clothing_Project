<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="WebApplication5.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="csss/RegisterFormStyle.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="formregis">
			<div class="formregis2">Register</div>

			<div class="row">
					<div class="formregis4">
						<div class="formregis3">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">F</span>
								</div>
							<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="First name"></asp:TextBox><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Last name"></asp:TextBox>
							</div>
						</div>
					</div>
			</div>


			<%--<div class="row">
				<div class="formregis4">
					<div class="formregis3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">E</span>
							</div>
							<asp:TextBox ID="TextBox3" runat="server" type="email" CssClass="form-control" placeholder="Email"></asp:TextBox>
						</div>
					</div>
				</div>
			</div>--%>

			<%--<div class="row">
				<div class="formregis4">
					<div class="formregis3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">T</span>
							</div>
							<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Phone"></asp:TextBox>
						</div>
					</div>
				</div>
			</div>--%>
			
			<div class="row">
				<div class="formregis4">
					<div class="formregis3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">U</span>
							</div>
							<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="formregis4">
					<div class="formregis3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">P</span>
							</div>
							<asp:TextBox ID="TextBox2" runat="server"  type="password" CssClass="form-control" placeholder="Password" ></asp:TextBox>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="formregis4">
					<div class="formregis3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">P</span>
							</div>
							<asp:TextBox ID="TextBox7" runat="server" type="password" CssClass="form-control" placeholder="Confirm Password"></asp:TextBox>
						</div>
					</div>
				</div>
			</div>
		<div>
			<asp:Button ID="Button1" runat="server" Text="REGISTER" class="btn btn-dark button1" Onclick="TextBox2_TextChanged"/>
			<br />
				<p><b><a href="HomePage.aspx" target="_blank">Back to homepage</a></b></p>
		</div>
    </form>
</body>
</html>
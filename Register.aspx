<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication5.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
	<link href="csss/RegisterStyle.css" rel="stylesheet" />
	<link href="css/bootstrap.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>



<body style="height:1500px">

	<form id="form2" runat="server">


	<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
		<a class="navbar-brand" href="#">Logo</a>
		<div class="navbar-nav1">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="#">Register</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Login</a>
				</li>
			</ul>
		</div>
	</nav>


	<div class="header">
		<div class="form">
			<pz>/ POWERFULLY /</pz> 
			<br />
			<pz1>
			VERSATILE</pz1>
			<br />
			<pz2>Looks that flex as much as you do.</pz2>
			<br />
			<asp:Button ID="Button1" runat="server" Text="SHOP THE CONNECTION" CssClass="btn-primary bt1" />
		</div>
	</div>

	<div class="under">
		<u1>FALL SALE</u1>
		<br />
		<u2>Get 20% off full price apparel, footwear and accessories with promo code FALLSALE through 10/24. Exclusions apply.</u2><br />
		<asp:Button ID="Button2" runat="server" Text="SHOP MEN" CssClass="bu" /><br /><asp:Button ID="Button3" runat="server" Text="SHOP WOMEN" CssClass="bu" />
	</div>



    </form>
</body>





</html>

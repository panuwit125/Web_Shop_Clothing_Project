<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication5.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="header">
		<div class="form">
			<pz>/ LAZABAS /</pz> 
			<br />
			<pz1>
			VERSATILE</pz1>
			<br />
			<pz2>Looks that flex as much as you do.</pz2>
			<br />
			<asp:Button ID="Button1" runat="server" Text="SHOP THE CONNECTION" CssClass=" btn-primary bt1" OnClick="Button1_Click"  />
		</div>
	</div>
	<div class="container" style="padding-top:20px">
		<div class="thumbnail">
		<div class="row" >
			<div class="flashform">
				<fs>Most Popular</fs>
			</div>
		</div>

		<div class="row">
		  <div class="col-sm-3 col-md-3">
			<div class="thumbnail">
			  <img src="image/imgProduct/Untitled-1.jpg" alt="...">
			  <div class="caption">
				<h3>Thumbnail label</h3>
				<p>...</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
			<div class="col-sm-3 col-md-3">
			<div class="thumbnail">
			  <img src="image/imgProduct/Untitled-1.jpg" alt="...">
			  <div class="caption">
				<h3>Thumbnail label</h3>
				<p>...</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
			<div class="col-sm-3 col-md-3">
			<div class="thumbnail">
			  <img src="image/imgProduct/Untitled-1.jpg" alt="...">
			  <div class="caption">
				<h3>Thumbnail label</h3>
				<p>...</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
			<div class="col-sm-3 col-md-3">
			<div class="thumbnail">
			  <img src="image/imgProduct/Untitled-1.jpg" alt="...">
			  <div class="caption">
				<h3>Thumbnail label</h3>
				<p>...</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		</div>
		</div>
	</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" class="bodyproduct">
	<div class="container">
	<div class="row" style="padding-top:10%">
		<asp:Repeater ID="RptrProduct" runat="server">
			<ItemTemplate>
			  <div class="col-sm-3 col-md-3">
				  <a style="text-decoration:none;" href="ProductView.aspx?PId=<%#Eval("PId") %>">
					<div class="thumbnail">
						<img src="image/imgProduct/<%#Eval("PId") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
					  <div class="caption">
						<h3><%#Eval("PName") %></h3>
						<h3>Price : <%#Eval("Price") %></h3>
						<%--<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>--%>
					  </div>
					</div>
				  </a>
			  </div>
			</ItemTemplate>
		</asp:Repeater>
	</div>
	</div>
</asp:Content>

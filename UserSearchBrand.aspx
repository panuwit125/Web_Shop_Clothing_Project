<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin.Master" AutoEventWireup="true" CodeBehind="UserSearchBrand.aspx.cs" Inherits="WebApplication5.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
	<div class="row" style="padding-top:10%">
		<asp:Repeater ID="RptrSearch" runat="server">
			<ItemTemplate>
			  <div class="col-sm-3 col-md-3">
				  <a style="text-decoration:none;" href="UserProductView.aspx?PId=<%#Eval("PId") %>">
					<div class="thumbnail">
						<img src="image/imgProduct/<%#Eval("PId") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
					  <div class="caption">
						<h3><%#Eval("PName") %></h3>
						<h3>Price : <%#Eval("Price") %></h3>
					  </div>
					</div>
				  </a>
			  </div>
			</ItemTemplate>
		</asp:Repeater>
	</div>
	</div>
</asp:Content>

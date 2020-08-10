<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="WebApplication5.AdminUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container"style="padding:5%;">
		<h1>User</h1>
		<br />
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">User</div>


			<asp:Repeater ID="rptrUser" runat="server">
				<HeaderTemplate>
					<table class="table">
					<thead>
						<tr>
							<th>#Username</th>
							<th>#Money</th>
						</tr>
					</thead>
					<tbody>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
					<th>ID : <%#Eval("Username") %></th>
					<th>Coin : <%#Eval("Money") %></th>
				</tr>
				</ItemTemplate>
				<FooterTemplate>
							</tbody>
				  </table>
				</FooterTemplate>
			</asp:Repeater>
		</div>
	</div>
</asp:Content>

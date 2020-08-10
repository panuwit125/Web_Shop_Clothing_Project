<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication5.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container"style="padding:5%;">
		<h1>Product by <asp:Label ID="nameuser" runat="server" Text="Label"></asp:Label></h1>
		<br />
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">ตระกร้าสินค้า</div>


			<asp:Repeater ID="rptrmar" runat="server">
				<HeaderTemplate>
					<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>ProductName</th>
							<th>Price</th>
							<th>Edit</th>
						</tr>
					</thead>
					<tbody>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
					<th ><asp:Label ID="Idcheck" runat="server" Text='<%# Eval("ID") %>' Visible = "false" /></th>
					<th><%#Eval("PName") %></th>
					<th><%#Eval("ae") %></th>
					<th>
						<asp:Button ID="dele" runat="server" Text="Delete" Onclick="deleClick"/>
					</th>
				</tr>
				</ItemTemplate>
				<FooterTemplate>
							</tbody>
				  </table>
				</FooterTemplate>
			</asp:Repeater>
		</div>

				<div class="panel panel-primary">
				<div class="panel-heading">ยอดรวมทั้งหมด</div>
				<div class="panel-body">รวม :<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </asp:Label>
				</div>
				<asp:Button ID="buysell" runat="server" Text="จ่ายเงิน" class="btn btn-danger" OnClick="Buysell_Click"/>
	</div>
	</div>
</asp:Content>

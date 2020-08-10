<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminStore.aspx.cs" Inherits="WebApplication5.AdminStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container" style="padding-top:5%;">
		<h1>Add Product</h1>
		<br />
        	Name<br />
			<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
			<br />
			Description<br />
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			<br />
			Price<br />
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
			<br />
			Amount<br />
			<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
			<br />
			Brand<br />
			<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="BID" DataValueField="BID">
			</asp:DropDownList>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyASPTutorialDBConnectionString %>" SelectCommand="SELECT * FROM [tblBrands]"></asp:SqlDataSource>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BID" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="BID" HeaderText="BID" ReadOnly="True" SortExpression="BID" />
					<asp:BoundField DataField="BName" HeaderText="BName" SortExpression="BName" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyASPTutorialDBConnectionString %>" SelectCommand="SELECT * FROM [tblBrands]"></asp:SqlDataSource>
			<br />
			Image<br />
			<asp:FileUpload ID="FileUpload1" runat="server" /><br />
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="เพิ่มสินค้า" />
	</div>
	<div class="container"style="padding:5%;">
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">Product</div>
			<asp:Repeater ID="rptrPro" runat="server">
				<HeaderTemplate>
					<table class="table">
					<thead>
						<tr>
							<th>#ID</th>
							<th>#PRODUCT</th>
							<th>#PRICE</th>
							<th>#BRAND</th>
						</tr>
					</thead>
					<tbody>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
					<th><%#Eval("PId") %></th>
					<th><%#Eval("PName") %></th>
					<th><%#Eval("Price") %></th>
					<th><%#Eval("BID") %></th>
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

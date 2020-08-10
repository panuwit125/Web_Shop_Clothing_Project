<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin.Master" AutoEventWireup="true" CodeBehind="UserProductView.aspx.cs" Inherits="WebApplication5.UserProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
		<div class="row" style="padding-top:8%">
					<div class="col-sm-5">
						<br />
						<asp:Repeater ID="RptrProductView" runat="server">
							<ItemTemplate>
						<div class="thumbnail" >
							<img src="image/imgProduct/<%#Eval("PId") %>/<%#Eval("Name") %><%#Eval("Extention") %>" style="width:100%" alt="<%#Eval("Name") %>"/>
						</div>
							</ItemTemplate>
						</asp:Repeater>
					</div>
					<div class="col-sm-7">
						<asp:Repeater ID="RptrProduct" runat="server">
							<ItemTemplate>
						<div class="m"><%#Eval("PName") %></div><br />
						<div class="m1"><%#Eval("PDescription") %></div>
						<br />
						<div class="m2">ราคา : <%#Eval("Price") %> บาท</div><br />
						<div class="row">
							<div class="col-sm-3">
								<asp:Button ID="Button1" runat="server" Text="ซื้อสินค้า" class="btn btn-primary btnpdv" OnClick="Button_Click1"/>
							</div>
							<div class="col-sm-3" >
								<asp:Button ID="Button2" runat="server" Text="หยิบใส่ตระกร้า" class="btn btn-primary btnpdv" OnClick="Button_Click2"/>
							</div>
						</div>
								</ItemTemplate>
						</asp:Repeater>
					</div>
		</div>
	</div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			margin-bottom: 0px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
			<br />
			Image<br />
			<asp:FileUpload ID="FileUpload1" runat="server" />
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>

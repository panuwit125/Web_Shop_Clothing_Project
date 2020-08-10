<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="css/StyleSheetLogin.css" rel="stylesheet" />
	<script src="js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/bootstrap.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 86%;
            height: 349px;
            margin:auto;
        }
        .auto-style2 {
            width: 112px;
        }
        .auto-style4 {
            width: 196px;
        }
        .auto-style7 {
            width: 113px;
        }
        .auto-style8 {
            margin-right: 0;
        }
        .auto-style9 {
            width: 46px;
        }
        .auto-style10 {
            width: 112px;
            height: 57px;
        }
        .auto-style11 {
            width: 196px;
            height: 57px;
        }
        .auto-style12 {
            width: 46px;
            height: 57px;
        }
        .auto-style13 {
            width: 113px;
            height: 57px;
        }
        .auto-style14 {
            height: 57px;
        }
    </style>
</head>
<body>
	<div >
    <form id="form1" runat="server" class="form">
        <div class="Login" >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10"><h>Register</h></td>
                    <td class="auto-style11">
                        </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"><h>Login</h></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style2"><p>Firstname</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbRF" runat="server" placeholder="Your firstname.."></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7"><p>Usename</p></td>
                    <td>
                        <asp:TextBox ID="tbLUser" runat="server" CssClass="auto-style8" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><p>Lastname</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbRL" runat="server" placeholder="Your lastname.."></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7"><p>Password</p></td>
                    <td>
                        <asp:TextBox ID="tbLPass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><p>Usename</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbRUser" runat="server" placeholder="Your user.."></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtLo" runat="server" Text="Login" OnClick="Button2_Click" class="btn-primary"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><p>Password</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbRPass" runat="server" placeholder="Your pass.."></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="BtRe" runat="server" Text="Register" OnClick="BtRe_Click" class="btn-primary"/>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
	</div>
</body>
</html>

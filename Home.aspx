<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication5.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheetHome.css" rel="stylesheet" />
	<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>--%>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 99px;
            text-align:center;
        }
        .auto-style3 {
            height: 99px;
            width: 500px;
        }
        .auto-style4 {
            height: 60px;
            width: 500px;
        }
        .auto-style5 {
            width: 500px;
        }
        .auto-style6 {
            width: 95%;
            margin : auto;
			height: 458px;
		}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
            <h1>
                <asp:Label ID="LabelUser" runat="server" Text="Label"></asp:Label>
                </h1>
            </div>
            <div class="Login" >

                <table class="auto-style6">
                    <tr>
                        <td class="auto-style3">
                            <p><asp:Label ID="LabelFN" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label ID="LabelLN" runat="server" Text="Label"></asp:Label>
							</p>
                        </td>
                        <td class="auto-style1">
                            <a><asp:Label ID="LabelMoney" runat="server" Text="Labeltotal"></asp:Label></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" Text="ฝากเงิน" OnClick="Button1_Click" />
                        </td>
                        <td rowspan="4">
                            <asp:GridView ID="GridView1" runat="server" Height="204px" Width="433px">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button2" runat="server" Text="ถอนเงิน" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button3" runat="server" Text="โอนเงิน" OnClick="Button3_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button4" runat="server" Text="อื่นๆ" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
							<asp:TextBox ID="TextBoxMoney" runat="server" Width="473px"></asp:TextBox>
						</td>
                        <td>
							<asp:TextBox ID="TextBoxUser" runat="server"></asp:TextBox>
						</td>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>

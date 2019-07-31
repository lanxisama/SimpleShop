<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Suc.aspx.cs" Inherits="Suc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 92px;
        }
        .auto-style3 {
            width: 271px;
        }
        .auto-style4 {
            width: 471px;
        }
        .auto-style5 {
            margin-left: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" ForeColor="#3399FF" Text="注册成功"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">账号</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td>只做了这个</td>
            </tr>
            <tr>
                <td class="auto-style3">密码</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">地址</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="登陆" Width="67px" />
        </p>
    </form>
</body>
</html>

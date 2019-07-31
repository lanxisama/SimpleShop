<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="ZHUCE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style4 {
            margin-left: 48px;
        }
        .auto-style5 {
            margin-left: 18px;
            margin-top: 13px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            margin-left: 10px;
        }
        .auto-style20 {
            width: 100%;
        }
        .auto-style22 {
            width: 241px;
        }
        .auto-style23 {
            width: 197px;
        }
        .auto-style24 {
            width: 157px;
        }
        .auto-style25 {
            width: 197px;
            height: 44px;
        }
        .auto-style26 {
            width: 241px;
            height: 44px;
        }
        .auto-style27 {
            width: 157px;
            height: 44px;
        }
        .auto-style28 {
            width: 197px;
            height: 27px;
        }
        .auto-style29 {
            width: 241px;
            height: 27px;
        }
        .auto-style30 {
            width: 157px;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style6">
            差一个表格</p>
        <table class="auto-style20">
            <tr>
                <td class="auto-style23">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="128px" AutoPostBack="True">
                            <asp:ListItem Value="heilongjiang">黑龙江省</asp:ListItem>
                            <asp:ListItem Value="liaoning">辽宁省</asp:ListItem>
                            <asp:ListItem Value="jilin">吉林省</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td class="auto-style22">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="121px" CssClass="auto-style7" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem Value="haerbin" Enabled="False">哈尔滨</asp:ListItem>
                            <asp:ListItem Value="qiqihaer" Enabled="False">齐齐哈尔</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">账号</td>
                <td class="auto-style22">
                        <asp:TextBox ID="zhanghu" runat="server">12345</asp:TextBox>
                    </td>
                <td class="auto-style24">
                        <asp:Label ID="Label2" runat="server" ForeColor="#FF0066"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">密码</td>
                <td class="auto-style22">
                        <asp:TextBox ID="mima1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                <td class="auto-style24">
                        <asp:Label ID="Label3" runat="server" ForeColor="#FF0066"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">确认密码</td>
                <td class="auto-style22">
                        <asp:TextBox ID="mima2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                <td class="auto-style24">
                        <asp:Label ID="Label4" runat="server" ForeColor="#FF0066"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style28">生日</td>
                <td class="auto-style29">
                        <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                            <asp:ListItem Value="yue">月</asp:ListItem>
                            <asp:ListItem Value="more..."></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                            <asp:ListItem Value="ri">日</asp:ListItem>
                            <asp:ListItem Value="more..."></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td class="auto-style30">
                        <asp:Label ID="Label5" runat="server" ForeColor="#FF0066"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">验证密码<asp:Label ID="text" runat="server" CssClass="auto-style4" Width="90px" BackColor="#FFFFCC"></asp:Label>
                    </td>
                <td class="auto-style26">
                        <asp:TextBox ID="yanzhengma" runat="server" OnTextChanged="yanzhengma_TextChanged"></asp:TextBox>
                    </td>
                <td class="auto-style27">
                        <asp:Label ID="Label6" runat="server" ForeColor="#FF0066"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style22">
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="33px" Text="注册" Width="89px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

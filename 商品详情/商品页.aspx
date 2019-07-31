<%@ Page Language="C#" AutoEventWireup="true" CodeFile="商品页.aspx.cs" Inherits="商品页" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 709px;
        }
        .auto-style3 {
            width: 380px;
            height: 229px;
        }
        .auto-style5 {
            height: 229px;
            width: 307px;
        }
        .auto-style4 {
            height: 229px;
        }
        .auto-style2 {
            width: 380px;
        }
        .auto-style6 {
            width: 307px;
        }
        .auto-style7 {
            width: 380px;
            height: 158px;
        }
        .auto-style8 {
            width: 307px;
            height: 158px;
        }
        .auto-style9 {
            height: 158px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" />
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Image ID="Image3" runat="server" Height="159px" ImageUrl="~/image/合成 1_00001.png" Width="184px" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton3_Click" PostBackUrl="~/商品详情/商品详情.aspx?ImageUrl=~/image/合成 1_00001.png&amp;name=我是商品&amp;price=500&amp;kucun=5">商品详情</asp:LinkButton>
                </td>
                <td class="auto-style5">
                    <asp:Image ID="Image4" runat="server" Height="159px" ImageUrl="~/image/合成 1_00001.png" Width="184px" />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton3_Click" PostBackUrl="~/商品详情/商品详情.aspx?ImageUrl=~/image/合成 1_00001.png&amp;name=我也是商品&amp;price=600&amp;kucun=5">商品详情</asp:LinkButton>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="购物车" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 27px" Text="查询" />
        <br />
    </form>
</body>
</html>

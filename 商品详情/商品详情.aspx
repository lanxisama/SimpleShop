<%@ Page Language="C#" AutoEventWireup="true" CodeFile="商品详情.aspx.cs" Inherits="商品详情_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

         body
            { 
                background-image: url(image/Sakura.png);
                background-repeat: repeat-x;
                background-repeat: repeat-y;
                margin-right: 0px; 
                margin-top: 0px;
            }
 
        .auto-style1 {
            float: left;
            text-align: center;
        }
        .auto-style2 {
            width: 99%;
            height: 321px;
        }
        .auto-style4 {
            width: 49px;
            height: 318px;
        }
        .auto-style7 {
            width: 178px;
            height: 80px;
        }
        .auto-style9 {
            width: 178px;
            height: 81px;
        }
        .auto-style10 {
            width: 187px;
            height: 80px;
        }
        .auto-style11 {
            width: 187px;
            height: 81px;
        }
        .auto-style12 {
            margin-left: 842px;
            margin-top: 65px;
        }
        .auto-style13 {
            width: 100%;
            height: 1323px;
            margin-top: 3px;
        }
        .auto-style14 {
            margin-left: 72px;
        }
        </style>
</head>
<body style="width: 1280px; height: 277px; margin-right: 913px">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="1380px" Width="1590px" BackColor="#1F1F11" BackImageUrl="~/image/Sakura.png">
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style4" rowspan="4">
                    <asp:Image ID="Image2" runat="server" Height="317px" Width="407px" />
                    <asp:Label ID="name" runat="server" Font-Size="X-Large" ForeColor="White" Width="125px"></asp:Label>
                </td>
                <td class="auto-style10">价格</td>
                <td class="auto-style7">
                    <asp:Label ID="danjia" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">颜色</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="R">红</asp:ListItem>
                        <asp:ListItem Value="G">绿</asp:ListItem>
                        <asp:ListItem Value="B">蓝</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">尺码</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="L"></asp:ListItem>
                        <asp:ListItem Value="XL"></asp:ListItem>
                        <asp:ListItem Value="XXL"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">库存</td>
                <td class="auto-style9">
                    <asp:Label ID="kucun" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Button ID="Buy" runat="server" BackColor="#CCFFFF" BorderColor="#66CCFF" BorderStyle="Double" CssClass="auto-style12" Font-Bold="True" Font-Names="Chaparral Pro Light" Font-Size="X-Large" Height="64px" OnClick="Button1_Click" Text="Buy now" Width="163px" />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click1" Text="返回" Width="83px" />
        <br />
        </asp:Panel>
        <p class="auto-style1">
            &nbsp;</p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style13">
            <tr>
                <td>

                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

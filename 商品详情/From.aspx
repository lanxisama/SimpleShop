<%@ Page Language="C#" AutoEventWireup="true" CodeFile="From.aspx.cs" Inherits="商品详情_From" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" OnClick="LinkButton1_Click" PostBackUrl="~/商品详情/To.aspx?name=商品3&amp;price=80">商品名称</asp:LinkButton>
        </div>
    </form>
</body>
</html>

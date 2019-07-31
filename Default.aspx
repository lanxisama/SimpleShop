<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
         
        .auto-style4 {
            width: 156px;
            height: 123px;
        }
        #form1 {
            position: relative;
            color: #007B7B;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="417px" Width="235px" BackColor="#FFF2FF" BackImageUrl="~/image/Sakura.png">
&nbsp;<br /> &nbsp;<asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="image/头像_00000.png" style="margin-left: 44px" Width="122px" />
            <br/>&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp; 樱抄<br/><br/>&nbsp;&nbsp;发帖数：1<br/><br/>&nbsp;&nbsp;年龄：1年<br /> 
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" BackColor="#FFF2FF" BorderStyle="Outset" Height="30px" OnClick="Button2_Click" style="margin-left: 22px; margin-top: 0px" Text="关注TA" Width="138px" />
            <asp:Label ID="Label0" runat="server" Height="141px" style="margin-left: 263px; margin-top: 0px;" Width="933px" BorderStyle="None">  <br />  在那一刻，我知道我……“喜欢”上了一个人。  不是爱，而是那种称为“喜欢”的感情。
<br />它干净简单，却意外动人。<br />  在很多年以后，我才发现它远比“爱”珍贵。<br />因为之后我会遇到很多次“爱”，但是“喜欢”的心情，我却再也没有拥有过了。</asp:Label>
        </asp:Panel>
        <br />
        <br />
        <br />
        你对这篇文章的态度是：<br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Same" Text="赞同" TextAlign="Left" ToolTip="赞同" />
        <p>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Same" Text="反对" TextAlign="Left" ToolTip="反对" />
        </p>
            <asp:Label ID="Label1" runat="server" Width="1275px" style="position: relative; top: 19px; left: 0px; height: 213px"></asp:Label>
    
        <p>
            <img alt="" class="auto-style4" src="image/合成%201_00001.png" />快速发帖<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="margin-left: 61px" Text="显示好评" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 81px" Text="显示全部" />
        </p>
         
        <p style="position: relative">
            <asp:TextBox ID="TextBox1" runat="server" Height="102px" OnTextChanged="TextBox1_TextChanged" style="margin-top: 4px; position: relative;" TextMode="MultiLine" Width="570px" BackColor="#FFF9FF" BorderStyle="Inset"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 77px; margin-top: 80px" Text="沙雕网友发言" ToolTip="你会打字吗？孤儿" BackColor="#F7F1F1" Height="43px" Width="126px" BorderStyle="Outset" ForeColor="#88113A" />
        </p>
    <p style="height: 182px; width: 573px; position: relative;">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
    </body>
 
</html>

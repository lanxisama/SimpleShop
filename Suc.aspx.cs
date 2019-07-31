using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
public partial class Suc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        Application.Lock();
        Label2.Text = Application["zhanghu"].ToString();
        System.Console.Write(Application["zhanghu"]);
        Application.UnLock(); */
        /*
        Label2.Text = Request.QueryString["name"];
        Label3.Text = Request.QueryString["mima"];
        */
        string[] tmessage;
        tmessage = (string[])Session["message"];
        /*
        Label2.Text = tmessage[0];  //错误原因tmessgae is null ??Session is null
        Label3.Text = tmessage[1];
        Label4.Text = tmessage[2];
            */
        Label2.Text = tmessage[0] + tmessage[1] + tmessage[2];
        Response.Write("<script>alert('跳转成功')</script>");

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        var response = base.Response;
        //string url = "localhost:3002/Default.aspx";
        Response.Write("<script>window.location='Default.aspx'</script>");//注册成功 显示信息
        Response.Write("<script>alert('登陆成功')</script>");
    }
}
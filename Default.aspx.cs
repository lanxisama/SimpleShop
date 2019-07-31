using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;
public partial class _Default : System.Web.UI.Page
{
    static string oldmessage = "";//旧消息
    static string goodMessage = "";
    static string badMessage = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

 
    protected void Button1_Click(object sender, EventArgs e)//沙雕网友发言
    {
        string message = "<br/>" + oldmessage;//获取消息
        string time = "";//获取时间
        string opin = "";//获取好评差评状态
        if (RadioButton1.Checked)
        {
            time = DateTime.Now.ToString();//得到当前时间
            opin = "  " + RadioButton1.Text;//得到评论状态

            RadioButton1.Checked = false;
            goodMessage = goodMessage+TextBox1.Text + "    " + time + "<hr>" + "<br/>";
        }
        else if (RadioButton2.Checked)
        {
            time = DateTime.Now.ToString();//得到当前时间
            opin ="  " + RadioButton2.Text;
            RadioButton2.Checked = false;
            badMessage = badMessage+TextBox1.Text + "    " + time + "<hr>" + "<br/>";
        }
        //time = DateTime.Now.ToString();//得到当前时间
        message = message + TextBox1.Text + opin + "    " + time + "<hr>" + "<br/>";

        //message = message + opin+"<br/>";//将消息组合
        //将Label中的文本替换为 新的消息+旧消息 
        Label1.Text = message;
        Label1.Height = Label1.Height;
        Response.Write("<script>alert('发送成功!')</script>");
        oldmessage = message;//将旧信息保存下来
        TextBox1.Text = "";
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('关注成功')</script>");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Label1.Text = goodMessage;

        Response.Write("<script>alert('文本内容更新成功')</script>");

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Label1.Text = oldmessage;
        Response.Write("<script>alert('文本内容更新成功')</script>");
    }
}
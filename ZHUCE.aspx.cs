using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class ZHUCE : System.Web.UI.Page
{
    /*
     * 账号密码要求
     * 长度大于8
     * 开头第一个必须是字母
     * 正则表达式如下
     */
    //"^[a-zA-Z]\w{7,10}$"
    private bool isOver = true;

    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        for (i = 0; i < 4; i++)
        {
            Random rd = new Random();
            i = rd.Next(1000, 9999);

        }
        text.Text = i.ToString();
        yanzhengma.Text = text.Text;
       /* DropDownList3.Items.Clear();
        DropDownList3.AutoPostBack = true;*/
        for (int year = 1990; year <= 2018; year++)
        {
            DropDownList3.Items.Add(year.ToString());
        }

        if (DropDownList4.SelectedValue == "yue")
        {
            DropDownList4.Items.Clear();
            DropDownList4.AutoPostBack = true;
            for (int yue = 1; yue <= 12; yue++)
            {
                DropDownList4.Items.Add(yue.ToString());
            }

        }


    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        if (DropDownList1.SelectedValue == "heilongjiang") //字符串用"" 单个字符用''
        {
            DropDownList2.Items.Clear();
            DropDownList1.AutoPostBack = true;

            DropDownList2.Items.Add("哈尔滨市");
            DropDownList2.Items.Add("其他城市...");


        }
        if (DropDownList1.SelectedValue == "liaoning")
        {
            DropDownList2.Items.Clear();
            DropDownList1.AutoPostBack = true;

            DropDownList2.Items.Add("沈阳市");
            DropDownList2.Items.Add("其他城市...");
        }
        if (DropDownList1.SelectedValue == "jilin")
        {
            DropDownList2.Items.Clear();
            DropDownList1.AutoPostBack = true;

            DropDownList2.Items.Add("吉林市");
            DropDownList2.Items.Add("其他城市...");
        }

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string pattern = @"^[a-zA-Z]\w{7,10}$";
        /*判断密码是否符要求*/
        foreach (Match match in Regex.Matches(mima1.Text, pattern))
            if (match.Value != mima1.Text)
            {
                Label3.Text = "不符合";
                isOver = false;
            }
        string a = text.Text;// 自动生成
        string b = yanzhengma.Text;//用户输入
                                   //判断所有需要填选是否填上
        if (zhanghu.Text == "")
        {
            Label2.Text = "未填";
            isOver = false;
        }

        if (mima1.Text == "")
        {
            Label3.Text = "未填";
            isOver = false;

        }

        if (mima2.Text == "")
        {
            Label4.Text = "未填";
            isOver = false;

        }
        if (mima1.Text != mima2.Text)
        {
            Label4.Text = "不一致";
            isOver = false;
        }
        if (yanzhengma.Text == "")
        {
            Label6.Text = "未填";
            isOver = false;
        }
        /*
        if (a != b)// 判断出错
        {
            Response.Write("<script>alert('验证码错误')</script>");
        }*/
        yanzhengma.Text = "";
        #region 页面跳转
        if (isOver)
        {
            //Application["zhanghu"] = zhanghu.Text; //只做了一个账户 其余方法相同

             

            string[] messages = new string[3];
            messages[0] = zhanghu.Text;     //账户
            messages[1] = mima1.Text;       //密码
            messages[2] = DropDownList3.Text; //年
            Session["message"] = messages;
          /*  string name = "Suc.aspx?name=" + zhanghu.Text+" "+mima1.Text+" " +DropDownList3.Text;
            Response.Redirect(name); */

            Response.Redirect("Suc.aspx");
           /*
            var response = base.Response;
            response.Redirect("localhost:3002/Suc.aspx", false);//注册成功 显示信息
            Response.Write("<script>alert('注册成功')</script>");*/
        }
        #endregion
    }

    protected void yanzhengma_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {/*
        if (DropDownList3.SelectedValue == "nian")
        {
            DropDownList3.Items.Clear();
            DropDownList3.AutoPostBack = true;
            for (int year = 1990; year <= 2018; year++)
            {
                DropDownList3.Items.Add(year.ToString());
            }

        }*/
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
  
        if (DropDownList5.SelectedValue == "ri")
        {
 
            for (int month = 1; month <= 12; month++)
            {
                if (DropDownList4.Text ==1.ToString())
                {
                    DropDownList5.Items.Clear();
                    DropDownList5.AutoPostBack = true;
                    for (int i = 1; i < 32; i++)
                    {
                        DropDownList5.Items.Add(i.ToString());
                    }
                }
                else if(DropDownList4.Text == 2.ToString())
                {
                    DropDownList5.Items.Clear();
                    DropDownList5.AutoPostBack = true;
                    for (int i = 1; i < 31; i++)
                    {
                        DropDownList5.Items.Add(i.ToString());
                        
                    }
                    DropDownList5.Items.Remove("30");
                  
                }
            }
        }

    }


    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

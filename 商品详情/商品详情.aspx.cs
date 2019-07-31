using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 商品详情_1 : System.Web.UI.Page
{
    static int n=0;//购物车中商品数量
    string key1 = "Heart";
    static string[,] message = new string[100, 5]; //商品名称 商品单价 库存剩余 商品图片 商品种类Key 数量加减 购物车行数

    protected void Page_Load(object sender, EventArgs e)
    {
        Image2.ImageUrl = Request.QueryString["ImageUrl"];
       /* Response.Write(Image2.ImageUrl);
        Response.Write(Request.QueryString["price"]);
        Response.Write(Request.QueryString["kucun"]);*/
        name.Text = Request.QueryString["name"];
        danjia.Text = Request.QueryString["price"];
        kucun.Text = Request.QueryString["kucun"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        //n++; //购物车行数
        message[n,0] =name.Text;//商品名称    
        message[n,1] = kucun.Text;//商品库存
        message[n,2] = danjia.Text; //商品单价
        message[n,3] = Image2.ImageUrl;//商品图片
       
        //商品类型的Key
        n+=1; //购物车行数

        Session["n"] = n;
        message[n, 4] = key1; //传商品类型
        Session["shop"] = message;
        Response.Write(n);
        Response.Redirect("购物车1.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("商品页.aspx");
    }


}
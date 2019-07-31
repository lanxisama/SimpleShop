using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//需求
//动态生成购物车每一行
public partial class 商品详情_购物车 : System.Web.UI.Page
{
    //static int num;
    protected void Page_Load(object sender, EventArgs e)
    {/*
        string[] tmessage;
        tmessage = (string[])Session["shop"];
        name.Text = tmessage[0];//name
        tol.Text = 1.ToString();//初始个数默认1
        val.Text = tmessage[2];// value
        Image1.ImageUrl = tmessage[3];//商品图片
        int num = Int32.Parse(tmessage[4]);
        Response.Write(num);
        Image[] img;        //商品图片
        LinkButton[] linkname;  //商品链接
        Label[] 数量;   //  所选商品数量
        Label[] jiage;    //  所选商品总价格
        Button[] sub;     //  -
        Label[] 选择数量;    //  根据加号减号 所选商品个数 上限为商品库存 这里默认都为5  下限都为0
        Button[] add;   //  +
        */

        /*Button add = new Button();
        ch = new CheckBox[n];

        Table t1 = new Table();
        TableRow row = new TableRow();//lie 商品图片 商品名称 商品量 商品价格 -num+
        TableCell[] cell = new TableCell[10];
        ch[i] = new CheckBox();
        cell[0] = new TableCell();
        cell[0].Controls.Add(ch[i]);
        cell[0].Width = 50;
        row.Cells.Add(cell[0]);
        */
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    /*
    protected void jian_Click(object sender, EventArgs e)
    {
        int num = Int32.Parse(shuliang.Text);
        if (num==0)
        {
            Response.Write("商品个数不能小于0");
        }
        else
        {
            num--;
            shuliang.Text = num.ToString();
        }
    }

    protected void jia_Click(object sender, EventArgs e)
    {

        int num = Int32.Parse(shuliang.Text);
 
        if (num >= 5)
        {
            Response.Write("商品个数不能大于库存");
        }
        else
        {
            num++;
            shuliang.Text = num.ToString();
        }
    }*/

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("商品页.aspx");
    }
}
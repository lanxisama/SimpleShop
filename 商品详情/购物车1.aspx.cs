using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 //购物车显示信息 :商品图片 商品名称 商品数量 商品价格 商品数量加减
public partial class 商品详情_购物车1 : System.Web.UI.Page
{
    int n = 0;
    Button[] add;
    Button[] sub;
    Image[] image;
    LinkButton[] name;
    Label[] tbprice;
    Label[] tbcount;
    string[,] str;
    Label sumprice = new Label();
    
    //CheckBox[] ch;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Response.Write("购物车为空<br>");
        }
        else
        {
            
            n = (int)Session["n"];
            str = (string[,])Session["shop"];
            
                if (n == 0)
            {
                Response.Write("购物车为空<br>");
            }
            else
            {  /*
                    message[n,0] =name.Text;//商品名称    
                    message[n,1] = kucun.Text;//商品库存
                    message[n,2] = danjia.Text; //商品单价
                    message[n,3] = Image2.ImageUrl;//商品图片
                */
                Response.Write("购物车商品个数： ");
                Response.Write(n);
                add = new Button[n]; //按钮组件数组
                sub = new Button[n];
 


                image = new Image[n]; //图片数组
                name = new LinkButton[n];   //商品名称数组
                tbprice = new Label[n]; //总价格
                tbcount = new Label[n]; //- tbcount+
                
                Table table = new Table();
                for (int i = 0; i < n; i++)
                {
                    Response.Write(n);
             
                    TableCell[] cell = new TableCell[6]; //小格

                    TableRow row = new TableRow(); //行
 
                    //图片
                    /*
                    image[i] = new Image();
                    image[i].ImageUrl = str[i, 3];
                    cell[0] = new TableCell();
                    cell[0].Controls.Add(image[i]);
                    cell[0].Width = 20;
                    row.Cells.Add(cell[0]);*/

                    //名称
                    name[i] = new LinkButton();
                    name[i].Text = str[i, 0];
                    cell[1] = new TableCell();
                    cell[1].Controls.Add(name[i]);
                    cell[1].Width = 100;
                    row.Cells.Add(cell[1]);
                    //价格
                    tbprice[i] = new Label();
                    tbprice[i].Text = str[i, 2];
                    cell[2] = new TableCell();
                    cell[2].Controls.Add(tbprice[i]);
                    cell[2].Width = 100;
                    row.Cells.Add(cell[2]);
 



                    sub[i] = new Button();
                    sub[i].Text = "-";
                    sub[i].Click += new EventHandler(sub_Click);
                    cell[3] = new TableCell();
                    cell[3].Controls.Add(sub[i]);
                    row.Cells.Add(cell[3]);


                    tbcount[i] = new Label();
                    tbcount[i].Text = 1.ToString();
                    cell[4] = new TableCell();
                    cell[4].Controls.Add(tbcount[i]);
                    cell[4].Width = 80;
                    row.Cells.Add(cell[4]);


                    add[i] = new Button();
                    add[i].Text = "+";
                    add[i].Click += new EventHandler(add_Click);
                    cell[5] = new TableCell();
                    cell[5].Controls.Add(add[i]);
                    row.Cells.Add(cell[5]);

                    table.Rows.Add(row);
                    Panel1.Controls.Add(table);

                }
                Button sum = new Button();
                sum.Text = "结算：";
                sum.Click += new EventHandler(sum_Click);
                Panel1.Controls.Add(sum);
                Panel1.Controls.Add(sumprice);
            }
        }

    }
    protected void sub_Click(object sender, EventArgs e)
    {
        int i;
        Button Bt = (Button)sender;
        for (i = 0; i < n; i++)
        {
            if (Bt == sub[i])
                break;
        }
        int a = int.Parse(tbcount[i].Text);
        if (a > 0)
            tbcount[i].Text = (--a).ToString();
    }
    protected void add_Click(object sender, EventArgs e)
    {
        int i;
        Button Bt = (Button)sender;
        for (i = 0; i < n; i++)
        {
            if (Bt == add[i])
                break;
        }
        int a = int.Parse(tbcount[i].Text);
        if (a < 5)
            tbcount[i].Text = (++a).ToString();
    }

    protected void sum_Click(object sender, EventArgs e)
    {
        float a = 0;
        for (int t = 0; t < n; t++)
        {
                float pr = float.Parse(tbprice[t].Text);
                int cout = int.Parse(tbcount[t].Text);
                a += pr * cout;

        }
        sumprice.Text = "应付" + a + "元";
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("商品页.aspx");
    }
}

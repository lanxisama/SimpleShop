using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class 商品详情_To : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Tname;
        int Tprice;
        Tname = Request.QueryString["name"];
        Tprice = int.Parse(Request.QueryString["price"]);
        Label1.Text = Tname +"   "+ Tprice.ToString();
        Label1.Width = 500;

    }
}
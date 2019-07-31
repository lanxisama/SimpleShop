using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class 商品页 : System.Web.UI.Page
{
    public static string conn = "server=localhost;port=3306;database=web;user=root;password=wgq000816;SslMode = none;";
    public MySqlConnection con = new MySqlConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        /*var response = base.Response;
        response.Redirect("http://localhost:3002/商品详情/商品详情.aspx", false); */
        Response.Redirect("商品详情.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("购物车1.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
     
        
 
         

        con.Open();
      string name = TextBox1.Text;
        string sql = "select * from shop where NAME like '%' @name '%'";
        //string sql = "select * from shop where NAME like @name";
        //MySqlCommand cmd = new MySqlCommand("select * from student where name = '我我我我'", con);
        MySqlCommand cmd = new MySqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        MySqlDataReader dr = cmd.ExecuteReader(); //查询数据库
        GridView1.DataSource = dr;
        GridView1.DataBind();

        dr.Close();
        con.Close();

    }
}
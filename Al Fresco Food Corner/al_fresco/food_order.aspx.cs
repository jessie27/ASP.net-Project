using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class food_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_order_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO ORDERS(menuName,address,e_mail) VALUES('" + TextBoxId.Text + "', '" + TextBoxPos.Text + "',  '" + TextBoxEmail.Text + "')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label_message.Text = "Order Accepted!!Thank You!!";
        Label_message.ForeColor = System.Drawing.Color.Green;
    }
    protected void Button_reset_Click(object sender, EventArgs e)
    {


        TextBoxId.Text = "";

        TextBoxPos.Text = "";
        TextBoxEmail.Text = "";
        


    }
    protected void TextBoxId_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("index.aspx");
    }

}
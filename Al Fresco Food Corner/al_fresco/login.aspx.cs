using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();


        SqlCommand cmd = new SqlCommand("SELECT * FROM REGISTRATION where userName = '" + TextBoxUserName.Text + "'and password = '" + TextBoxPassword.Text + "'", con);   
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["New"] = TextBoxUserName.Text;
            Session["New"] = TextBoxPassword.Text;
            Response.Redirect("food_order.aspx");

            con.Close();
        }
        else
        {
     
            Label1.Text="username and password is not matched";
            Label1.ForeColor = System.Drawing.Color.Red;
          
        }

    }
}
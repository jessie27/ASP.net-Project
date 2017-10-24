using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SalesLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonStuffLogin_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();


        SqlCommand cmd = new SqlCommand("SELECT * FROM SALES where stuffName = '" + TextBoxStuffName.Text + "'and stuffPassword = '" + TextBoxStuffPassword.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["New"] = TextBoxStuffName.Text;
            Session["New"] = TextBoxStuffPassword.Text;
            Response.Redirect("orderView.aspx");

            con.Close();
        }
        else
        {

            Label_Log.Text = "username and password is not matched";
            Label_Log.ForeColor = System.Drawing.Color.Red;

        }

    }
}
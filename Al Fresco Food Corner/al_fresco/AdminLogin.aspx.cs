using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_Login_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();


        SqlCommand cmd = new SqlCommand("SELECT * FROM ADMIN where admin_name = '" + TextBoxName.Text + "'and admin_password = '" + TextBoxAdminPassword.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["New"] = TextBoxName.Text;
            Session["New"] = TextBoxAdminPassword.Text;
            Response.Redirect("add_menu.aspx");

            con.Close();
        }
        else
        {

            Label_1.Text = "name and password is not matched";
            Label_1.ForeColor = System.Drawing.Color.Red;

        }

    }
}
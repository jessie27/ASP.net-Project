using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class add_menu_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from foodInformation");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;

        string temp = "";

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            temp += reader["foodId"].ToString();
            temp += "&nbsp &nbsp &nbsp &nbsp";
            temp += reader["foodName"].ToString();
            temp += "&nbsp &nbsp &nbsp &nbsp";
            temp += reader["foodDescription"].ToString();
           

            temp += "</br>";
        }

        con.Close();

        lbl_test.Text = temp;
    }

    protected void Button_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("index.aspx");
    }
}
    

    
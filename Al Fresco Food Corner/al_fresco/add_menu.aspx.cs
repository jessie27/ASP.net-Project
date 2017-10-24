using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_menu : System.Web.UI.Page
{
    public double id1 = 1;
    public double id2 = 1;
    public double id3 = 1;
    public double id4 = 1;
    public double id5 = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {

        }
        else
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from foodInformation", con);
        SqlDataReader read = cmd.ExecuteReader();
        int count = 0;


        while (read.Read())
        {
            count++;

        }




    }


    protected void Button_show_Click(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(TextBox_id.Text);
        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("select foodId,foodName,foodDescription from foodInformation where foodId='"+a+"'", con);
        SqlDataReader read = cmd.ExecuteReader();
        while (read.Read())
        {
            TextBox_id.Text = (read["foodId"].ToString());
            TextBox_heading.Text = (read["foodName"].ToString());
            TextBox_body.Text = (read["foodDescription"].ToString());
        }
        con.Close();
    }
    protected void Button_delete_Click(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(TextBox_id.Text);
        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from foodInformation where foodId='" + a + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox_id.Text="";
        TextBox_date.Text="";
        TextBox_heading.Text="";
        TextBox_body.Text="";
        Response.Redirect(Request.RawUrl);
        Label_message.Text = "deleted successfully!";
        Label_message.ForeColor = System.Drawing.Color.Green;
    }
    
    protected void Button_add_Click(object sender, EventArgs e)
    {
        string id = TextBox_id.Text;
        string heading = TextBox_heading.Text;
        string body = TextBox_body.Text;

        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO foodInformation(foodName,foodDescription) VALUES ('"+heading+"','"+body+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox_id.Text = "";
        TextBox_heading.Text = "";
        TextBox_body.Text = "";
        Response.Redirect(Request.RawUrl);
        Label_message.Text = "added successfully!";
        Label_message.ForeColor = System.Drawing.Color.Green;
    }
    protected void Button_edit_Click(object sender, EventArgs e)
    {
        string id = TextBox_id.Text;
        string heading = TextBox_heading.Text;
        string body = TextBox_body.Text;

        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("update foodInformation set foodName='"+heading+"',foodDescription='"+body+"' where foodId='"+id+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect(Request.RawUrl);
        Label_message.Text = "updated successfully!";
        Label_message.ForeColor = System.Drawing.Color.Green;
       
    }
    protected void Button_clear_Click(object sender, EventArgs e)
    {
        TextBox_id.Text = "";
        TextBox_heading.Text = "";
        TextBox_body.Text = "";
    }
    protected void Button_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("index.aspx");
    }

}
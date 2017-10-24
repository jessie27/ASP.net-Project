using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\sqlexpress;Integrated Security=True;Initial Catalog=websitedb");
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO REGISTRATION(userName,email,password,phone_num) VALUES('" + TextBoxName.Text + "', '" + TextBoxEmail.Text + "',  '" + TextBoxPass.Text + "','" + TextBoxPhone.Text + "')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Registration completed";
        Label1.ForeColor = System.Drawing.Color.Green;
    }
    protected void Button_reset_Click(object sender, EventArgs e)
    {

        
        TextBoxName.Text="";
        
        TextBoxEmail.Text="";
        TextBoxPass.Text="";
        TextBoxPhone.Text="";
        
      
    }
    protected void TextBoxId_TextChanged(object sender, EventArgs e)
    {

    }
}
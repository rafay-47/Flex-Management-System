using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Error"] = null;
    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
        conn.Open();
        // MessageBox.Show("Connection Open");
        SqlCommand cm;

        string user = username.Text;
        string pass = password.Text;
        string query = "select *from [User] where [User].Username = '" + user + "' and [User].Password = '" + pass + "' and [User].Role = 'Student'";
        cm = new SqlCommand(query, conn);
        //cm.ExecuteNonQuery();
        //cm.Dispose();
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            SqlCommand sqlCommand = new SqlCommand("update [User] set Username = '" + user + "' where Username = '" + user + "'", conn);
            sqlCommand.ExecuteNonQuery();
            Response.Redirect("~/StudentMenu.aspx?UserName=" + username.Text);
        }
        else
            error.Text = "Invalid Username or Password";
      
        conn.Close();
    }
}
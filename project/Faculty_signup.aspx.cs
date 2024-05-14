using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
        conn.Open();



        SqlCommand com = new SqlCommand("select u.[UserID] from [dbo].[User] u where u.Username = '" + username.Text + "'", conn);
        SqlDataReader rdr = com.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Already Exists')", true);
            return;
        }

        rdr.Close();




        SqlCommand comm = new SqlCommand("select top 1 u.[UserID] from [dbo].[User] u order by u.[UserID] desc", conn);
        SqlDataReader rdr1 = comm.ExecuteReader();

        int id = 0;
        while (rdr1.Read()) { id = (int)rdr1["UserID"]; }
        id += 1;

        rdr1.Close();



        string name = username.Text;
        string pass = password.Text;

        SqlCommand cm = new SqlCommand("insert into [user](UserID,Username,Password,Role) values (@UserID,@Username,@Password,@Role);", conn);
        cm.Parameters.AddWithValue("@UserID", id);
        cm.Parameters.AddWithValue("@Username", name);
        cm.Parameters.AddWithValue("@Password", pass);
        cm.Parameters.AddWithValue("@Role", "Faculty");


        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();
        Response.Redirect("~/Facult_login.aspx");
    }

   

    protected void conpassword_TextChanged(object sender, EventArgs e)
    {
        if (password.Text != conpassword.Text)
        {
            passerror.Text = "Password does not match";
            Response.Redirect(Request.RawUrl);
        }
    }
}
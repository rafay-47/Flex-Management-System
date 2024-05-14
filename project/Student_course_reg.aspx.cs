using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Student_course_reg : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");

    protected int get_sid()
    {
        conn.Open();
        string uname = "";
        int id = 0;
        string name = Request.QueryString["username"];
        // MessageBox.Show("Connection Open");
        SqlCommand sql = new SqlCommand("select [user].UserID,[user].Username from [dbo].[User] where [User].Username ='" + name + "'", conn);
        SqlDataReader dr = sql.ExecuteReader();
        if (dr.Read())
        {
            id = (int)dr["UserID"];
            uname = (string)dr["Username"];
        }
        username.Text = uname;
        dr.Close();
        conn.Close();
        return id;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            string error = Session["Error"] as string;
            if(error != null) { regerror.Text = error; }
            int id =get_sid();
            SqlCommand cm = new SqlCommand("select * from OfferedCourse where StudentID = " + id + "and Enrolled is NULL", conn);
            SqlCommand cm2 = new SqlCommand("select * from OfferedCourse where StudentID = " + id + "and Enrolled is not NULL", conn);
            conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter(cm);
            SqlDataAdapter adp2 = new SqlDataAdapter(cm2);

            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            adp.Fill(dt);
            adp2.Fill(dt2);

            // GridView1 = new GridView();
            GridView1.DataSource = dt;
            GridView2.DataSource = dt2;
            GridView1.DataBind();
            GridView2.DataBind();

            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");

        conn.Open();
        int id = get_sid();
        int count = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox checkbox1 = (CheckBox)row.Cells[4].FindControl("checkbox1");

                if (checkbox1 != null && checkbox1.Checked)
                {
                    SqlCommand com = new SqlCommand("select count(*) from OfferedCourse where Enrolled is not null and StudentID = " + id, conn);

                    SqlDataReader dr = com.ExecuteReader();
                    if (dr.Read())
                    {
                        dr.Close();
                        count = (int)com.ExecuteScalar();
                    }
                    dr.Close();

                    if (count < 6)
                    {
                        var cid = row.FindControl("Label1") as Label;
                        SqlCommand cm = new SqlCommand("update OfferedCourse set Enrolled = " + 1 + " where StudentID = " + id + " and CourseID = " + cid.Text, conn);
                        cm.ExecuteNonQuery();
                    }
                    else
                    {
                        Session["Error"] = "You have already registered 6 courses";
                    }
                }
            }
        }
        Response.Redirect(Request.RawUrl);
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class StudentMenu : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");
    
    protected int get_sid()
    {
       // conn.Open();
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
       // conn.Close();
        return id;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            conn.Open();
            string error = Session["Error"] as string;
            if (error != null) { regerror.Text = error; }
            int id = get_sid();
            SqlCommand cm = new SqlCommand("select * from Courses c join offeredcourse o on c.CourseID = o.CourseID  where o.StudentID = " + id + "and o.Enrolled is NULL", conn);
            SqlCommand cm2 = new SqlCommand("select * from Courses c join offeredcourse o on c.CourseID = o.CourseID  where o.StudentID = " + id + "and o.Enrolled is not NULL", conn);
          //  conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter(cm);
            SqlDataAdapter adp2 = new SqlDataAdapter(cm2);

            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            adp.Fill(dt);
            adp2.Fill(dt2);

            // GridView1 = new GridView();
            GridView1.DataSource = dt;
            GridView2.DataSource = dt2;
            GridView3.DataSource = dt2;
            GridView4.DataSource = dt2;
            GridView1.DataBind();
            GridView2.DataBind();
            GridView3.DataBind();
            GridView4.DataBind();
            checkPrereq();

            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 5)
        {
            conn.Open();
            string store = get_sid().ToString();
            conn.Close() ;
            Response.Redirect( "~/Default.aspx?param=" + store);


        }
            
        MultiView1.ActiveViewIndex = DropDownList2.SelectedIndex - 1;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string username = Request.QueryString["username"];
        Response.Redirect("~/Student_course_reg.aspx?username=" + username);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void checkPrereq()
    {
        int sid = get_sid();
        foreach (GridViewRow row in GridView1.Rows)
        {
            Label cid = row.FindControl("Label1") as Label;
            
            SqlCommand sql = new SqlCommand("select prerequisitecourseid from Courses where courseid =" + cid.Text, conn);
            SqlDataReader reader = sql.ExecuteReader();
            while (reader.Read())
            {
                if (reader["prerequisitecourseid"] != DBNull.Value)
                {
                    int id = (int)reader["prerequisitecourseid"];
                    SqlCommand cm = new SqlCommand("select grade from StudentGrades where studentid =" + sid + " and courseid = " + id, conn);
                    SqlDataReader dr = cm.ExecuteReader();
                    if (dr.Read())
                    {
                        string grade = (string)dr["grade"];
                        if (grade == null)
                        {
                            row.BackColor = System.Drawing.Color.OrangeRed;
                            CheckBox checkbox1 = (CheckBox)row.Cells[4].FindControl("checkbox1");
                            checkbox1.Enabled = false;
                        }
                    }
                    else
                    {
                        row.BackColor = System.Drawing.Color.OrangeRed;
                        CheckBox checkbox1 = (CheckBox)row.Cells[4].FindControl("checkbox1");
                        checkbox1.Enabled = false;
                    }
                }
            }
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       // SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");

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
                        conn.Close();
                        Session["Error"] = "You have already registered 6 courses";
                        Response.Redirect(Request.RawUrl);
                    }
                }
            }
        }
        conn.Close();
        Session["Error"] = null;
        Response.Redirect(Request.RawUrl);
    }


    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        int sid = get_sid();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink link = e.Row.FindControl("link1") as HyperLink;
            if (link != null)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                string courseCode = rowView["CourseCode"].ToString();
                string courseName = rowView["CourseName"].ToString();
              

                link.Text = courseCode + "-" + courseName;
                string store = courseCode + "-" + courseName + "_"+ sid.ToString();

                link.NavigateUrl = "~/StudentAttendance.aspx?param=" + store;
                
            }
        }
    }

    protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        int sid = get_sid();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink link = e.Row.FindControl("link1") as HyperLink;
            if (link != null)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                string courseCode = rowView["CourseCode"].ToString();
                string courseName = rowView["CourseName"].ToString();


                link.Text = courseCode + "-" + courseName;
                string store = courseCode + "-" + courseName + "_" + sid.ToString();

                link.NavigateUrl = "~/StudentMarks.aspx?param=" + store;

            }
        }
    }


}
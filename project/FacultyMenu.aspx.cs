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
public partial class FacultyMenu : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");
    string name;

    protected void set_teacher_name()
    {

    }
    protected int get_faculty_id(string name)
    {
        int fid = 0;
        SqlCommand cmd = new SqlCommand("select [user].UserID from [User] where [User].Username ='" + name + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read()) { fid = (int)dr["UserID"]; }

        return fid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            name = Request.QueryString["username"];
            username.Text = name;

            conn.Open();
            int fid = get_faculty_id(name);

            
            SqlCommand cm = new SqlCommand("select coursecode,coursename,sectionname from courses c join FacultyCourses fc on c.CourseID = fc.courseid " +
                                           "join section s on c.CourseID = s.OfferedCourseID where fc.facultyid =" + fid, conn);
            SqlCommand sql = new SqlCommand("select username,f.FeedbackFormData,f.rating from [user] u join Feedback f on u.UserID = f.StudentID where f.FacultyID =" + fid, conn);
            // SqlCommand cm2 = new SqlCommand("select * from Courses", conn);

            SqlDataAdapter adp = new SqlDataAdapter(cm);
            SqlDataAdapter adp2 = new SqlDataAdapter(sql);

            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            adp.Fill(dt);
            adp2.Fill(dt2);

            // GridView1 = new GridView();
            GridView1.DataSource = dt;
            GridView2.DataSource = dt;
            GridView3.DataSource = dt;
            GridView4.DataSource = dt;
            GridView5.DataSource = dt2;
            
            GridView1.DataBind();
            GridView2.DataBind();
            GridView3.DataBind();
            GridView4.DataBind();
            GridView5.DataBind();
           

            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink link = e.Row.FindControl("link") as HyperLink;
            Label fname = e.Row.FindControl("fname") as Label;
            Label section = e.Row.FindControl("section") as Label;
            if (link != null)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                string courseCode = rowView["CourseCode"].ToString();
                string courseName = rowView["CourseName"].ToString();
                string sectionName = section.Text;

                link.Text = courseCode + "-" + courseName;
                string store = courseCode + "-" + courseName + "-" + sectionName;
                
                link.NavigateUrl = "~/MarksDistribution.aspx?param=" + store;
                fname.Text = name;
            }
        }
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink link = e.Row.FindControl("link1") as HyperLink;
            Label fname = e.Row.FindControl("fname") as Label;
            Label section = e.Row.FindControl("section") as Label;
            if (link != null)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                string courseCode = rowView["CourseCode"].ToString();
                string courseName = rowView["CourseName"].ToString();
                string sectionName = section.Text;

                link.Text = courseCode + "-" + courseName;
                string store = courseCode + "-" + courseName + "-" + sectionName;

                link.NavigateUrl = "~/Attendance.aspx?param=" + store;
                fname.Text = name;
            }
        }
    }

    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink link = e.Row.FindControl("link1") as HyperLink;
            Label fname = e.Row.FindControl("fname") as Label;
            Label section = e.Row.FindControl("section") as Label;
            if (link != null)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                string courseCode = rowView["CourseCode"].ToString();
                string courseName = rowView["CourseName"].ToString();
                string sectionName = section.Text;

                link.Text = courseCode + "-" + courseName;
                string store = courseCode + "-" + courseName + "-" + sectionName;

                link.NavigateUrl = "~/ManageEvaluation.aspx?param=" + store;
                fname.Text = name;
            }
        }
    }
    protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink link = e.Row.FindControl("link1") as HyperLink;
            Label fname = e.Row.FindControl("fname") as Label;
            Label section = e.Row.FindControl("section") as Label;
            if (link != null)
            {
                DataRowView rowView = e.Row.DataItem as DataRowView;
                string courseCode = rowView["CourseCode"].ToString();
                string courseName = rowView["CourseName"].ToString();
                string sectionName = section.Text;

                link.Text = courseCode + "-" + courseName;
                string store = courseCode + "-" + courseName + "-" + sectionName;

                link.NavigateUrl = "~/GenerateGrades.aspx?param=" + store;
                fname.Text = name;
            }
        }
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 6)
        {
            conn.Open();
            name = Request.QueryString["username"];
            int fid = get_faculty_id(name);
            Response.Redirect("~/FacultyReports.aspx?param="+fid);
            


        }
        MultiView1.ActiveViewIndex = DropDownList2.SelectedIndex - 1 ;
    }


}
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
using System.Windows.Forms;
using System.Xml.Linq;


public partial class FacultyReports : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
        
    }
    protected void AttendanceSheet()
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select studentid,cast (count(case when Status='Present' then 1 end) as decimal) * 100 / count(*) as AP from Attendance\r\ngroup by StudentID", conn);
        // SqlCommand cm2 = new SqlCommand("select * from Courses", conn);

        SqlDataAdapter adp = new SqlDataAdapter(cm);

        DataTable dt = new DataTable();
        adp.Fill(dt);

        // GridView1 = new GridView();
        GridView1.DataSource = dt;

        GridView1.DataBind();


        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();
    }

    protected void StudentMarks()
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select distinct o.StudentID,e.EvaluationType,isnull(m.Score,'-') as marks from OfferedCourse o \r\nleft join marks m on o.StudentID = m.StudentID\r\njoin Evaluation e on e.EvaluationID = m.EvaluationID\r\n", conn);
        //SqlCommand cm2 = new SqlCommand("select * from Courses", conn);


        SqlDataAdapter adp = new SqlDataAdapter(cm);

        DataTable dt = new DataTable();
        adp.Fill(dt);

        // GridView1 = new GridView();
        GridView2.DataSource = dt;

        GridView2.DataBind();


        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();
    }

    protected void feedbacks()
    {
        string name = Request.QueryString["param"];
        int fid = int.Parse(name);
        conn.Open();
        SqlCommand cm = new SqlCommand("select * from Feedback where FacultyID = " + fid, conn);
        //SqlCommand cm2 = new SqlCommand("select * from Courses", conn);


        SqlDataAdapter adp = new SqlDataAdapter(cm);

        DataTable dt = new DataTable();
        adp.Fill(dt);

        // GridView1 = new GridView();
        GridView5.DataSource = dt;

        GridView5.DataBind();


        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = DropDownList2.SelectedIndex - 1;
        if (DropDownList2.SelectedIndex == 1)
            AttendanceSheet();
        else if (DropDownList2.SelectedIndex == 2)
            StudentMarks();
        else if (DropDownList2.SelectedIndex == 5)
            feedbacks();
            




    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select userid,username,s.SectionName,isnull(sum(score),0) as total_marks,grade from [user] u\r\njoin OfferedCourse o on u.UserID = o.StudentID\r\njoin Courses c on o.CourseID = c.CourseID\r\n" +
            "join section s on o.Sectionid = s.SectionID\r\nleft join marks m on o.StudentID = m.StudentID\r\nleft join StudentGrades g on m.StudentID = g.studentid \r\nwhere o.sectionid is not null and c.CourseName ='" + TextBox1.Text + "'\r\ngroup by u.UserID,Username,s.SectionName,grade", conn);
        //SqlCommand cm2 = new SqlCommand("select * from Courses", conn);


        SqlDataAdapter adp = new SqlDataAdapter(cm);

        DataTable dt = new DataTable();
        adp.Fill(dt);

        // GridView1 = new GridView();
        GridView3.DataSource = dt;

        GridView3.DataBind();


        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select grade,count(*) as GradesCount from StudentGrades sg\r\njoin Section s on sg.courseid = s.OfferedCourseID\r\nwhere sectionid ="+TextBox2.Text +"\r\ngroup by grade", conn);


        SqlDataAdapter adp = new SqlDataAdapter(cm);

        DataTable dt = new DataTable();
        adp.Fill(dt);

        // GridView1 = new GridView();
        GridView4.DataSource = dt;

        GridView4.DataBind();


        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();
    }
}
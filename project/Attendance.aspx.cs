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

public partial class Attendance : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    string section, ccode, date_str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            string name = Request.QueryString["param"];
            course.Text = "Course: " + name;
            int index = name.Length - 1;
            section = name[index].ToString();
            ccode = name.Substring(name.IndexOf(':') + 1, 5);

            conn.Open();
            SqlCommand cmd = new SqlCommand("select u.Username from [User] u join OfferedCourse o on o.StudentID = u.UserID join section s on s.OfferedCourseID = o.CourseID where SectionName ='" + section + "'", conn);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            adp.Fill(dt);

            // GridView1 = new GridView();
            GridView1.DataSource = dt;

            GridView1.DataBind();


            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar cal = (Calendar)sender;
        DateTime selectedDate = cal.SelectedDate;
        date.Text = selectedDate.ToString("yyyy-MM-dd");
        
    }

    protected string get_ccode()
    {
        Calendar1.Visible = false;
        string name = Request.QueryString["param"];
        course.Text = "Course: " + name;
        int index = name.Length - 1;
        section = name[index].ToString();
        ccode = name.Substring(name.IndexOf(':') + 1, 5);
        return ccode;
    }

    protected string get_section()
    {
        Calendar1.Visible = false;
        string name = Request.QueryString["param"];
        course.Text = "Course: " + name;
        int index = name.Length - 1;
        section = name[index].ToString();
        ccode = name.Substring(name.IndexOf(':') + 1, 5);
        return section;
    }
        protected int get_sectionID()
    {
        int sid = 0, cid = 0;


        SqlCommand com = new SqlCommand("select c.CourseID from Courses c where CourseCode ='" + get_ccode() + "'", conn);
        SqlDataReader read = com.ExecuteReader();
        if (read.Read()) { cid = (int)read["CourseID"]; }
        read.Close();

        SqlCommand sql = new SqlCommand("select s.SectionID from section s where s.OfferedCourseID =" + cid + " and s.SectionName ='" + get_section()+ "'", conn);
        SqlDataReader dr = sql.ExecuteReader();

        if (dr.Read()) { sid = (int)dr["SectionID"]; }
        dr.Close();

        return sid;
    }

    protected void save_Click(object sender, EventArgs e)
    {
        conn.Open();
        string status;
        int aid = 0;
        SqlCommand sql = new SqlCommand("select top 1 attendanceid from Attendance order by attendanceid desc", conn);
        SqlDataReader dr = sql.ExecuteReader();
        if (dr.Read()) { aid = (int)dr["AttendanceID"]; }
        
        dr.Close();

        int secid = get_sectionID();

        foreach(GridViewRow row in GridView1.Rows)
        {
            int sid = 0;
            Label sname = (Label)row.Cells[0].FindControl("sname");
            SqlCommand com = new SqlCommand("select userid from [user] where username ='" + sname.Text + "'", conn);
            SqlDataReader rd = com.ExecuteReader();
            if (rd.Read()) { sid = (int)rd["UserID"]; }

            aid++;


            DropDownList list = (DropDownList)row.Cells[1].FindControl("DropDownList1");

            if (list.SelectedIndex == 1)
                status = "Present";
            else
                status = "Absent";

            date_str = date.Text;

            SqlCommand cm = new SqlCommand("insert into Attendance(AttendanceID,StudentID,SectionID,Date,Status) values (@AttendanceID,@StudentID,@SectionID,@Date,@Status)", conn);
            cm.Parameters.AddWithValue("@AttendanceID", aid);
            cm.Parameters.AddWithValue("@StudentID", sid);
            cm.Parameters.AddWithValue("@SectionID", secid);
            cm.Parameters.AddWithValue("@Date", date_str);
            cm.Parameters.AddWithValue("@Status", status);

            cm.ExecuteNonQuery();
        }
        conn.Close();
    }
}


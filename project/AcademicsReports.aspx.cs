using DataSet1TableAdapters;
using Microsoft.Reporting.WebForms;
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
public partial class AcademicsReports : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
            
        

    }
    protected void OfferedCourses()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from courses order by semester", conn);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adapter.Fill(dt);

        ReportViewer1.LocalReport.DataSources.Clear();
        ReportDataSource ds = new ReportDataSource("DataSet1", dt);
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("OfferedCourses.rdlc");
        ReportViewer1.LocalReport.DataSources.Add(ds);
        ReportViewer1.LocalReport.Refresh();
        conn.Close();
    }

    protected void StudentSection()
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select sectionname,studentid,Username from OfferedCourse o\r\njoin section s on o.Sectionid = s.SectionID\r\njoin [User] u on o.StudentID = u.UserID\r\nwhere o.sectionid is not null", conn);
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
    protected void CourseAllocation()
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select CourseCode,CourseName,CreditHours,SectionName,Username from courses c\r\nleft join section s on c.CourseID = s.SectionID \r\njoin FacultyCourses f on c.CourseID = f.courseid\r\njoin [user] u on f.facultyid = u.UserID", conn);
        // SqlCommand cm2 = new SqlCommand("select * from Courses", conn);

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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = DropDownList2.SelectedIndex - 1;
        if (DropDownList2.SelectedIndex == 1)
            OfferedCourses();
        else if (DropDownList2.SelectedIndex == 2)
            StudentSection();
        else if (DropDownList2.SelectedIndex == 3)
            CourseAllocation();

       


    }
}
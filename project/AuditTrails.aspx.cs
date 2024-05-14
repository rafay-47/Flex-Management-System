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

public partial class AuditTrails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cm = new SqlCommand("select * from User_Audit_Trail", conn);
        SqlCommand cm2 = new SqlCommand("select * from Student_Course_reg_Audit_Trail", conn);
        SqlCommand cm3 = new SqlCommand("select distinct f.facultyid,s.sectionid,s1.OfferedCourseID from Sec_Attendance_Audit_Trail s\r\njoin Section s1 on s.sectionid = s1.SectionID\r\njoin FacultyCourses f on s1.OfferedCourseID = f.courseid", conn);
        SqlCommand cm4 = new SqlCommand("select * from Sec_MarksDistribution_Audit_Trail", conn);
       

        SqlDataAdapter adp = new SqlDataAdapter(cm);
        SqlDataAdapter adp2 = new SqlDataAdapter(cm2);
        SqlDataAdapter adp3 = new SqlDataAdapter(cm3);
        SqlDataAdapter adp4 = new SqlDataAdapter(cm4);

        DataTable dt = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();
        DataTable dt4 = new DataTable();
        adp.Fill(dt);
        adp2.Fill(dt2);
        adp3.Fill(dt3);
        adp4.Fill(dt4);

        // GridView1 = new GridView();
        GridView1.DataSource = dt;
        GridView2.DataSource = dt2;
        GridView3.DataSource = dt3;
        GridView4.DataSource = dt4;
        
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
        GridView4.DataBind();
        

        cm.ExecuteNonQuery();
        cm2.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        MultiView1.ActiveViewIndex = DropDownList2.SelectedIndex - 1;
     

    }
}
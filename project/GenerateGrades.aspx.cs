using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.ServiceModel.Security.Tokens;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


public partial class GenerateGrades : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string name = Request.QueryString["param"];
            course.Text = "Course: " + name;


            conn.Open();
            SqlCommand cm = new SqlCommand("SELECT distinct o.StudentID, COALESCE(marks.sum_score, 0) AS marks, s.grade\r\nFROM OfferedCourse o\r\nLEFT JOIN (\r\n    SELECT StudentID, SUM(score) AS sum_score\r\n    FROM marks\r\n    GROUP BY StudentID\r\n) AS marks ON o.StudentID = marks.StudentID\r\nLEFT JOIN StudentGrades s ON o.StudentID = s.studentid\r\nWHERE o.Enrolled IS NOT NULL;", conn);
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
    }

    protected int get_cid(string ccode)
    {
        conn.Open();
        int cid = 0;

        SqlCommand cm = new SqlCommand("select courseid from courses where coursecode ='" + ccode + "'", conn);
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read()) { cid = (int)dr["courseid"]; }

        conn.Close();
        return cid;
    }
    protected string get_grade(int marks)
    {
        if (marks >= 90)
            return "A+";
        else if (marks <= 89 && marks >= 86)
            return "A";
        else if (marks <= 85 && marks >= 82)
            return "A-";
        else if (marks <= 81 && marks >= 78)
            return "B+";
        else if (marks <= 77 && marks >= 74)
            return "B";
        else if (marks <= 73 && marks >= 70)
            return "B-";
        else if (marks <= 69 && marks >= 66)
            return "C+";
        else if (marks <= 65 && marks >= 62)
            return "C";
        else if (marks <= 61 && marks >= 58)
            return "C-";
        else if (marks <= 57 && marks >= 54)
            return "D+";
        else if (marks <= 53 && marks >= 50)
            return "D";
        else
            return "F";
    }
    protected void save_Click(object sender, EventArgs e)
    {
        string section, ccode;
        string name = Request.QueryString["param"];
       
        int index = name.Length - 1;
        section = name[index].ToString();
        ccode = name.Substring(name.IndexOf(':') + 1, 5);
        int cid = get_cid(ccode);

        conn.Open();
        foreach(GridViewRow row in GridView1.Rows)
        {
            Label marks = row.Cells[1].FindControl("Label5") as Label;
            Label sid = row.Cells[0].FindControl("Label1") as Label;
            
            string grade = get_grade(int.Parse(marks.Text));

            SqlCommand cmd = new SqlCommand("insert into StudentGrades(studentid,courseid,grade) values(@studentid,@courseid,@grade)", conn);
            cmd.Parameters.AddWithValue("@studentid", sid.Text);
            cmd.Parameters.AddWithValue("@courseid", cid);
            cmd.Parameters.AddWithValue("@grade", grade);

            cmd.ExecuteNonQuery();

            


        }
        Response.Redirect(Request.RawUrl);
        conn.Close();
    }
}
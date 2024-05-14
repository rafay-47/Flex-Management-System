using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class ManageEvaluation : System.Web.UI.Page
{
    string section, ccode;
    int assign_eid = 0, final_eid = 0, quiz_eid = 0, ses1_eid = 0, ses2_eid = 0;
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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

    protected string get_ccode()
    {
       
        string name = Request.QueryString["param"];
        course.Text = "Course: " + name;
        int index = name.Length - 1;
        section = name[index].ToString();
        ccode = name.Substring(name.IndexOf(':') + 1, 5);
        return ccode;
    }

    protected string get_section()
    {
        
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

        SqlCommand sql = new SqlCommand("select s.SectionID from section s where s.OfferedCourseID =" + cid + " and s.SectionName ='" + get_section() + "'", conn);
        SqlDataReader dr = sql.ExecuteReader();

        if (dr.Read()) { sid = (int)dr["SectionID"]; }
        dr.Close();

        return sid;
    }

    protected int get_eid_query(int sid,string type)
    {
        int eid = 0;

        SqlCommand cm = new SqlCommand("select e.EvaluationID from Evaluation e where e.SectionID = " + sid + " and e.EvaluationType='" + type + "'", conn);
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read()) { eid = (int)dr["EvaluationID"]; }

        return eid;
    }
    protected void get_evaluationID()
    {
        int sid = get_sectionID();

        assign_eid = get_eid_query(sid, "Assignment");
        final_eid = get_eid_query(sid, "Final");
        quiz_eid = get_eid_query(sid, "Quiz");
        ses1_eid = get_eid_query(sid, "Seesional-I");
        ses2_eid = get_eid_query(sid, "Seesional-II");
        
    }

    protected void insert_query(int mid, int sid, int eid, int score)
    {
        SqlCommand cm = new SqlCommand("insert into Marks(MarksID,StudentID,EvaluationID,Score) values(@MarksID,@StudentID,@EvaluationID,@Score)", conn);
        cm.Parameters.AddWithValue("@MarksID", mid);
        cm.Parameters.AddWithValue("@StudentID", sid);
        cm.Parameters.AddWithValue("@EvaluationID", eid);
        cm.Parameters.AddWithValue("@Score", score);

        cm.ExecuteNonQuery();
    }
    protected void save_Click(object sender, EventArgs e)
    {
        conn.Open();
        int mid = 0;
        SqlCommand sql = new SqlCommand("select top 1 MarksID from Marks order by MarksID desc", conn);
        SqlDataReader dr = sql.ExecuteReader();
        if(dr.Read()) { mid = (int)dr["MarksID"]; }

        int secid = get_sectionID();

        foreach(GridViewRow row in GridView1.Rows)
        {
            int sid = 0;
            Label sname = (Label)row.Cells[0].FindControl("sname");
            SqlCommand com = new SqlCommand("select userid from [user] where username ='" + sname.Text + "'", conn);
            SqlDataReader rd = com.ExecuteReader();
            if (rd.Read()) { sid = (int)rd["UserID"]; }
            rd.Close();
            

            TextBox box = row.Cells[1].FindControl("assign") as TextBox;
            TextBox box1 = (TextBox)row.Cells[2].FindControl("final");
            TextBox box2 = (TextBox)row.Cells[3].FindControl("quiz");
            TextBox box3 = (TextBox)row.Cells[4].FindControl("ses1");
            TextBox box4 = (TextBox)row.Cells[5].FindControl("ses2");


            



            int score = 0;
            if(int.TryParse(box.Text, out score))
                insert_query(++mid, sid, get_eid_query(secid,"Assignment"),score );
            if (int.TryParse(box1.Text, out score))
                insert_query(++mid, sid, get_eid_query(secid, "Final"), score);
            if (int.TryParse(box2.Text, out score))
                insert_query(++mid, sid, get_eid_query(secid, "Quiz"), score);
            if (int.TryParse(box3.Text, out score))
                insert_query(++mid, sid, get_eid_query(secid, "Seesional-I"), score);
            if (int.TryParse(box4.Text, out score))
                insert_query(++mid, sid, get_eid_query(secid, "Seesional-II"), score);

            
        }
        conn.Close();
    }
}
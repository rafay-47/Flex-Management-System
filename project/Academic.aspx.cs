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

public partial class Academic : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    protected void StudentDropDownList()
    {
        conn.Open();
       
        string query = "Select * from [user] where role = 'Student'";



        SqlCommand command = new SqlCommand(query, conn);

        SqlDataReader reader = command.ExecuteReader();
                
        DropDownList1.Items.Clear();

        while (reader.Read())
        {
            
            string value = reader["UserID"].ToString();

            ListItem listItem = new ListItem(value);
            DropDownList1.Items.Add(listItem);
        }


        conn.Close();
    }

    protected int get_no_allocated_courses(int fid)
    {
        int count = -1;
       
        SqlCommand cm = new SqlCommand("select count(*) as AllocatedCourses from FacultyCourses where facultyid = " + fid + "group by facultyid", conn);
        SqlDataReader dr = cm.ExecuteReader();

        if (dr.Read()) { count = (int)dr["AllocatedCourses"]; }
        dr.Close();
        
        return count;

    }
    protected void FacultyDropDownList()
    {
        conn.Open();

        string query = "Select * from [user] where role = 'Faculty'";



        SqlCommand command = new SqlCommand(query, conn);

        SqlDataReader reader = command.ExecuteReader();

        

        while (reader.Read())
        {
            
            string value = "";
            if (get_no_allocated_courses(int.Parse(reader["userid"].ToString())) < 3)
            {
                value = reader["Username"].ToString();

                ListItem listItem = new ListItem(value);
                DropDownList4.Items.Add(listItem);
            }

           
        }


        conn.Close();
    }
    protected void CoursesDropDownList()
    {
        conn.Open();

        string query = "select distinct c.coursename from courses c join OfferedCourse o on c.CourseID = o.CourseID";



        SqlCommand command = new SqlCommand(query, conn);

        SqlDataReader reader = command.ExecuteReader();


        while (reader.Read())
        {

            string value = reader["CourseName"].ToString();

            ListItem listItem = new ListItem(value);
            DropDownList3.Items.Add(listItem);
        }


        conn.Close();
    }

    protected int get_no_of_reg_std_query( int courseID)
    {
        int count = 0;

        SqlCommand com = new SqlCommand("SELECT COUNT(*) AS reg_std FROM OfferedCourse WHERE CourseID = @CourseID and Enrolled is not null and sectionid is null GROUP BY CourseID", conn);
        com.Parameters.AddWithValue("@CourseID", courseID);
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read())
        {
            count = (int)dr["reg_std"];
        }

        return count;
    }

    protected void get_no_of_reg_std()
    {
        conn.Open();
        int count = 0;
        foreach (GridViewRow rows in GridView2.Rows)
        {
            if (rows.RowType == DataControlRowType.DataRow)
            {
                var courseIDLabel = rows.FindControl("cid") as Label;
                if (courseIDLabel != null)
                {
                    int courseID;
                    if (int.TryParse(courseIDLabel.Text, out courseID))
                    {
                        count = get_no_of_reg_std_query(courseID);

                        Label lbl = rows.FindControl("reg") as Label;
                        lbl.Text = count.ToString();
                       

                        Button sectionButton = rows.FindControl("section") as Button;
                        if (sectionButton != null)
                        {
                            sectionButton.ForeColor = System.Drawing.Color.White;
                            if(count>=10)
                                sectionButton.BackColor = System.Drawing.Color.LightSeaGreen;
                            else
                                sectionButton.BackColor = System.Drawing.Color.OrangeRed;
                            // You can also set the background color using sectionButton.BackColor
                        }
                        count = 0;

                    }
                }


            }
        }
        conn.Close();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string name = Request.QueryString["username"];
            username.Text = name;
            
            // MessageBox.Show("Connection Open");
            StudentDropDownList();
            FacultyDropDownList();
            CoursesDropDownList();
            conn.Open();
            SqlCommand cm = new SqlCommand("select * from Courses", conn);
           // SqlCommand cm2 = new SqlCommand("select * from Courses", conn);

            SqlDataAdapter adp = new SqlDataAdapter(cm);

            DataTable dt = new DataTable();
            adp.Fill(dt);

            // GridView1 = new GridView();
            GridView1.DataSource = dt;
            GridView2.DataSource = dt;
            GridView1.DataBind();
            GridView2.DataBind();
            
            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
        conn.Open();
        // MessageBox.Show("Connection Open");
        SqlCommand cm;
        int id = 0;
        string ccode = courseid.Text;
        string cname = coursename.Text;
        int chours = int.Parse(credithours.Text);



        string q1 = "select top 1 c.CourseID from Courses c order by c.CourseID desc";
        cm = new SqlCommand(q1, conn);
        SqlDataReader rdr = cm.ExecuteReader();


        while (rdr.Read()) { id = (int)rdr["CourseID"]; }
        id += 1;

        rdr.Close();




        if (String.IsNullOrWhiteSpace(prereq.Text))
        {
            cm.Parameters.AddWithValue("@PrerequisiteCourseID", DBNull.Value);
        }
        else
        {
            //int store = 0;
            int pre_req = int.Parse(prereq.Text);
            SqlCommand cm2 = new SqlCommand("select c.CourseID from Courses c where c.CourseID = " + pre_req, conn);
            SqlDataReader rdr2 = cm2.ExecuteReader();

            //while (rdr2.Read()) { store = (int)rdr2["PrerequisiteCourseID"]; }


            if (rdr2.HasRows)
            {
                rdr2.Close();
                cm = new SqlCommand("Insert into Courses(CourseID,CourseCode,CourseName,CreditHours, PrerequisiteCourseID) values" +
           " (@CourseID, @CourseCode, @CourseName, @CreditHours, @PrerequisiteCourseID)", conn);

                cm.Parameters.AddWithValue("@CourseID", id);
                cm.Parameters.AddWithValue("@CourseCode", ccode);
                cm.Parameters.AddWithValue("@CourseName", cname);
                cm.Parameters.AddWithValue("@CreditHours", chours);
                cm.Parameters.AddWithValue("@PrerequisiteCourseID", pre_req);

            }
            else
            {
                rdr2.Close();
                prereq.Text = "Pre-Reqisite Not Found.";

            }


        }


        cm.ExecuteNonQuery();
        cm.Dispose();

        conn.Close();
    }




    protected void Button4_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
        string studentid = DropDownList1.SelectedValue;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {

                CheckBox checkbox1 = (CheckBox)row.Cells[4].FindControl("checkbox1");


                if (checkbox1 != null && checkbox1.Checked)
                {
                    var cid = row.FindControl("Label1") as Label;
                    var ccode = row.FindControl("Label5") as Label;
                    var cname = row.FindControl("Label2") as Label;
                    var chours = row.FindControl("Label3") as Label;
                    int sid = int.Parse(studentid);
                    conn.Open();

                    SqlCommand comm = new SqlCommand("select [user].userid from [user] where [user].userid = " + sid + " and [user].role ='Student'", conn);

                    SqlDataReader rdr2 = comm.ExecuteReader();

                    if (rdr2.HasRows)
                    {
                        rdr2.Close();

                        SqlCommand cmd = new SqlCommand("insert into OfferedCourse(StudentID,CourseId)" +
                                                        " values(@StudentID,@CourseId)", conn);
                        cmd.Parameters.AddWithValue("@StudentId", sid);
                        cmd.Parameters.AddWithValue("@CourseId", cid.Text);
                        cmd.ExecuteNonQuery();
                    }
                    

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Courses Offered!')", true);

                    conn.Close();

                }
            }
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 5)
        {
            Response.Redirect("~/AcademicsReports.aspx");
        }
        if (DropDownList2.SelectedIndex == 6)
        {
            Response.Redirect("~/AuditTrails.aspx");
        }
        MultiView1.ActiveViewIndex = DropDownList2.SelectedIndex - 1;
        get_no_of_reg_std();

    }
   
    protected int get_cid()
    {
        int cid = 0;
        string cname = DropDownList3.Text;
        conn.Open();
        SqlCommand cm = new SqlCommand("Select courseid from courses where coursename ='"+cname+"'", conn);
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read()) { cid = (int)dr["courseid"]; }
        dr.Close();
        conn.Close();
        return cid;
    }

    protected int get_fid()
    {
        int fid = 0;
        string fname = DropDownList4.Text;
        conn.Open();
        SqlCommand cm = new SqlCommand("Select userid from [user] where [user].role = 'Faculty' and username ='" + fname + "'", conn);
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read()) { fid = (int)dr["userid"]; }
        dr.Close();
        conn.Close();
        return fid;
    }

    protected void allocate_Click(object sender, EventArgs e)
    {
        int cid = get_cid(), fid = get_fid();



        conn.Open();
        int count = -1;
        count = get_no_allocated_courses(fid);
        
        if (count < 3)
        {
            SqlCommand sql = new SqlCommand("INSERT INTO FacultyCourses (facultyid, courseid) VALUES (@facultyid, @courseid)", conn);
            sql.Parameters.AddWithValue("@facultyid", fid);
            sql.Parameters.AddWithValue("@courseid", cid);
            

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Course Allocated')", true);
            sql.ExecuteNonQuery();
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Already Allocated 3 courses')", true);
        }

        conn.Close();

    }


    protected void assign_section(int sid, int cid)
    {

        SqlCommand sql = new SqlCommand("select studentid from OfferedCourse where courseid =" + cid, conn);
        SqlDataReader dr = sql.ExecuteReader();
        while (dr.Read())
        {
            int std = (int)dr["studentid"];
            SqlCommand sql2 = new SqlCommand("UPDATE OfferedCourse SET sectionid =" + sid + " WHERE StudentID =" + std + "and courseid =" + cid, conn); 
            sql2.ExecuteNonQuery();
        }


    }
    protected void make_section(object sender, EventArgs e)
    {
        conn.Open();

        Button button = (Button)sender;
        GridViewRow row = (GridViewRow)button.NamingContainer;
        var cid = row.FindControl("cid") as Label;

        int sid = 0;
        SqlCommand sql = new SqlCommand("select top 1 sectionid from section order by sectionid desc", conn);
        SqlDataReader dr = sql.ExecuteReader();
        if (dr.Read()) { sid = (int)dr["sectionid"]; }
        sid++;
        dr.Close();

        int sec_name = 0;
        char name;
        SqlCommand cm = new SqlCommand("select count(*) as no_of_sec from section where offeredcourseid = @CourseID group by sectionid ", conn);
        cm.Parameters.AddWithValue("@CourseID", cid.Text);
        SqlDataReader dr2 = cm.ExecuteReader();
        if (dr2.Read()) { sec_name = (int)dr2["no_of_sec"]; }

        dr2.Close();

        name =  (char)(sec_name += 65);

        if (get_no_of_reg_std_query(int.Parse(cid.Text)) >= 10)
        {

            SqlCommand com = new SqlCommand("insert into section(SectionID,OfferedCourseID,SectionName) values (@SectionID,@OfferedCourseID,@SectionName)", conn);
            com.Parameters.AddWithValue("@SectionID", sid);
            com.Parameters.AddWithValue("@OfferedCourseID", cid.Text);
            com.Parameters.AddWithValue("@SectionName", name);
            com.ExecuteNonQuery();


            assign_section(sid, int.Parse(cid.Text));


            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Section Made')", true);

        }
        else
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Students are less than 10, Section cannot be made')", true);

        conn.Close();



    }
}
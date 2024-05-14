using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class RegisterCourses : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();
            // MessageBox.Show("Connection Open");
            SqlCommand cm = new SqlCommand("select * from Courses", conn);

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

    
   


    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
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
                    int sid = int.Parse(studentid.Text);
                    conn.Open();

                    SqlCommand comm = new SqlCommand("select [user].userid from [user] where [user].userid = " + sid + " and [user].role ='Student'" , conn);

                    SqlDataReader rdr2 = comm.ExecuteReader();

                    if (rdr2.HasRows)
                    {
                        rdr2.Close();

                        SqlCommand cmd = new SqlCommand("insert into OfferedCourse(StudentID,CourseId,CourseCode,CourseName,CreditHours,Enrolled)" +
                                                        " values(@StudentID,@CourseId,@CourseCode,@CourseName,@CreditHours,@Enrolled)", conn);
                        cmd.Parameters.AddWithValue("@StudentId", sid);
                        cmd.Parameters.AddWithValue("@CourseId", cid.Text);
                        cmd.Parameters.AddWithValue("@CourseCode", ccode.Text);
                        cmd.Parameters.AddWithValue("@CourseName", cname.Text);
                        cmd.Parameters.AddWithValue("@CreditHours", chours.Text);
                        cmd.Parameters.AddWithValue("@Enrolled", DBNull.Value);

                        int i = cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        studentid.Text = "Invalid Student ID";
                        return;
                    }

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Courses Offered!')", true);

                    conn.Close();

                }
            }
        }
    }

  
}
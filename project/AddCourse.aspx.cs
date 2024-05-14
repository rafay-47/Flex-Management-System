using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class AddCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       /* SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True");
        conn.Open();
       // MessageBox.Show("Connection Open");
        SqlCommand cm;
        int id = 0;
        string ccode = courseid.Text;
        string cname = coursename.Text;
        int chours =int.Parse( credithours.Text);
        
        
        
        string q1 = "select top 1 c.CourseID from Courses c order by c.CourseID desc";
        cm = new SqlCommand(q1, conn);
        SqlDataReader rdr = cm.ExecuteReader();


        while(rdr.Read()) { id = (int)rdr["CourseID"]; }
        id += 1;

        rdr.Close();

        
       

        if (String.IsNullOrWhiteSpace(prereq.Text)) { 
            cm.Parameters.AddWithValue("@PrerequisiteCourseID", DBNull.Value);
        }
        else {
            //int store = 0;
            int pre_req = int.Parse(prereq.Text);
            SqlCommand cm2 = new SqlCommand("select c.CourseID from Courses c where c.CourseID = " + pre_req, conn);
            SqlDataReader rdr2 = cm2.ExecuteReader();

            //while (rdr2.Read()) { store = (int)rdr2["PrerequisiteCourseID"]; }


            if(rdr2.HasRows) {
                rdr2.Close();
                cm = new SqlCommand("Insert into Courses(CourseID,CourseCode,CourseName,CreditHours, PrerequisiteCourseID) values" +
           " (@CourseID, @CourseCode, @CourseName, @CreditHours, @PrerequisiteCourseID)", conn);

                cm.Parameters.AddWithValue("@CourseID", id);
                cm.Parameters.AddWithValue("@CourseCode", ccode);
                cm.Parameters.AddWithValue("@CourseName", cname);
                cm.Parameters.AddWithValue("@CreditHours", chours);
                cm.Parameters.AddWithValue("@PrerequisiteCourseID", pre_req);

            }
            else{
                rdr2.Close();
                prereq.Text = "Pre-Reqisite Not Found.";
                
            }
            

        }
        

        cm.ExecuteNonQuery();
        cm.Dispose();
        
        conn.Close();
       */
       


    }
}
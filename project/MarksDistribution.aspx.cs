using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MarksDistribution : System.Web.UI.Page
{
    string section, ccode;
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["param"];
        course.Text ="Course: " +  name ;
        int index = name.Length - 1;
        section = name[index].ToString();
        ccode = name.Substring(name.IndexOf(':') + 1, 5);
    }

    protected int get_sectionID()
    {
        int sid = 0, cid = 0;
        

        SqlCommand com = new SqlCommand("select c.CourseID from Courses c where CourseCode ='" + ccode + "'", conn);
        SqlDataReader read = com.ExecuteReader();
        if (read.Read()) { cid = (int)read["CourseID"]; }
        read.Close();

        SqlCommand sql = new SqlCommand("select s.SectionID from section s where s.OfferedCourseID =" + cid + " and s.SectionName ='" + section + "'", conn);
        SqlDataReader dr = sql.ExecuteReader();

        if (dr.Read()) { sid = (int)dr["SectionID"]; }
        dr.Close();
        
        return sid;
    }

    protected void SetEvaluation(string type,string weightage)
    {
        int sid = get_sectionID();
        int eid = 0;
        SqlCommand sql = new SqlCommand("select top 1 evaluationid from evaluation order by evaluationid desc", conn);
        SqlDataReader dr = sql.ExecuteReader();
        if (dr.Read()) { eid = (int)dr["EvaluationID"]; }
        eid++;
        dr.Close();



        SqlCommand cm = new SqlCommand("insert into [dbo].[Evaluation](EvaluationID,SectionID,EvaluationType,Weightage) values (@EvaluationID,@SectionID,@EvaluationType,@Weightage)", conn);
        cm.Parameters.AddWithValue("@EvaluationID", eid);
        cm.Parameters.AddWithValue("@SectionID", sid);
        cm.Parameters.AddWithValue("@EvaluationType", type);
        cm.Parameters.AddWithValue("@Weightage", weightage);

        cm.ExecuteNonQuery();
    }
    protected void save_Click(object sender, EventArgs e)
    {
        total_error.Text = "";
        Table myTable = (Table)FindControl("Table1");

        TableCell assignCell = myTable.Rows[0].Cells[1];
        TableCell finalCell = myTable.Rows[1].Cells[1];
        TableCell quizCell = myTable.Rows[2].Cells[1];
        TableCell ses1Cell = myTable.Rows[3].Cells[1];
        TableCell ses2Cell = myTable.Rows[4].Cells[1];

        TextBox assignBox = (TextBox)assignCell.FindControl("assignment_text");
        TextBox finalBox = (TextBox)assignCell.FindControl("final_text");
        TextBox quizBox = (TextBox)assignCell.FindControl("quiz_text");
        TextBox ses1Box = (TextBox)assignCell.FindControl("ses_1_text");
        TextBox ses2Box = (TextBox)assignCell.FindControl("ses_2_text");

        string assignData = assignBox.Text;
        string finalData = finalBox.Text;
        string quizData = quizBox.Text;
        string ses1Data = ses1Box.Text;
        string ses2Data = ses2Box.Text;

        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+Data+"')", true);
        int total = int.Parse(assignData) + int.Parse(finalData) + int.Parse(quizData) + int.Parse(ses1Data) + int.Parse(ses2Data);

        if(total != 100)
        {
            total_error.Text = "Total Marks Distribution should be equal to 100";
        }
        else
        {
            conn.Open();

            SetEvaluation("Assignment", assignData);
            SetEvaluation("Final", finalData);
            SetEvaluation("Quiz", quizData);
            SetEvaluation("Seesional-I", ses1Data);
            SetEvaluation("Seesional-II", ses2Data);
            
            

            conn.Close();

        }

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Table myTable = (Table)FindControl("Table1");

        TableCell assignCell = myTable.Rows[0].Cells[1];
        TableCell finalCell = myTable.Rows[1].Cells[1];
        TableCell quizCell = myTable.Rows[2].Cells[1];
        TableCell ses1Cell = myTable.Rows[3].Cells[1];
        TableCell ses2Cell = myTable.Rows[4].Cells[1];

        TextBox assignBox = (TextBox)assignCell.FindControl("assignment_text");
        TextBox finalBox = (TextBox)assignCell.FindControl("final_text");
        TextBox quizBox = (TextBox)assignCell.FindControl("quiz_text");
        TextBox ses1Box = (TextBox)assignCell.FindControl("ses_1_text");
        TextBox ses2Box = (TextBox)assignCell.FindControl("ses_2_text");

        assignBox.Text = "0";
        finalBox.Text = "0";
        quizBox.Text = "0";
        ses1Box.Text = "0";
        ses2Box.Text = "0";
    }

   
}
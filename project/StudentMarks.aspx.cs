using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentMarks : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ccode;
            int cid = 0, sid = 0; ;
            conn.Open();
            string name = Request.QueryString["param"];
            course.Text = "Course: " + name;
            int index = name.IndexOf('_');
            sid = int.Parse(name.Substring(index + 1));
            //section = name[index].ToString();
            ccode = name.Substring(name.IndexOf(':') + 1, 5);

            SqlCommand sql = new SqlCommand("select e.evaluationtype,m.score from Evaluation e join marks m on e.EvaluationID = m.EvaluationID where m.StudentID = " + sid, conn);
            SqlDataAdapter adp = new SqlDataAdapter(sql);

            DataTable dt = new DataTable();
            adp.Fill(dt);


            GridView1.DataSource = dt;

            GridView1.DataBind();


            sql.ExecuteNonQuery();
            sql.Dispose();
            conn.Close();

            conn.Close();
        }
    }
}
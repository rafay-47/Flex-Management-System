using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class StudentAttendance : System.Web.UI.Page
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
            sid = int.Parse(name.Substring(index+1));
            //section = name[index].ToString();
            ccode = name.Substring(name.IndexOf(':') + 1, 5);

            SqlCommand sql = new SqlCommand("select courseid from courses where coursecode = '"+ccode+"'",conn);
            SqlDataReader rdr = sql.ExecuteReader();
            if (rdr.Read()) { cid = (int)rdr["courseid"]; }
            rdr.Close();

            int secid = 0;
            SqlCommand cm = new SqlCommand("select sectionid from section where offeredcourseid ="+ cid,conn);
            SqlDataReader dr = cm.ExecuteReader();
            if (dr.Read()) { secid = (int)dr["sectionid"]; }

            dr.Close();

            SqlCommand com = new SqlCommand("select [date],[status] from attendance where studentid ="+ sid +" and SectionID ="+ secid, conn);
            SqlDataAdapter adp = new SqlDataAdapter(com);

            DataTable dt = new DataTable();
            adp.Fill(dt);

            
            GridView1.DataSource = dt;
            
            GridView1.DataBind();
            

            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();

            conn.Close();
        }

    }
}
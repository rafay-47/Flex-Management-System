using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RFPS7V6\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True;MultipleActiveResultSets=True");

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yy");
        Calendar1.Visible = false;
    }

    protected void checkboxlist1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int counter = 0;
        

            foreach (ListItem item in checkboxlist1.Items)
            {
                if (item.Selected)
                    counter++;

            }
            if (counter >= 1)
            {
                foreach (ListItem item in checkboxlist1.Items)
                {
                    if (!item.Selected)
                        item.Enabled = false;
                }
            }
            else
            {
                foreach (ListItem item in checkboxlist1.Items)
                {
                    if (!item.Selected)
                        item.Enabled = true;
                }
            }

        

    }

    protected void checkboxlist2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist2.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist2.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist2.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }



    protected void checkboxlist3_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist3.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist3.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist3.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist4.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist4.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist4.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist5.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist5.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist5.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }

    protected void checkboxlist6_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist6.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist6.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist6.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist7_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist7.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist7.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist7.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }

    }
    protected void checkboxlist8_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist8.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist8.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist8.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist9_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist9.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist9.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist9.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist10_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist10.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist10.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist10.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist11_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist11.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist11.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist11.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }

    protected void checkboxlist12_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist12.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist12.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist12.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }

    }
    protected void checkboxlist13_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist13.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist13.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist13.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist14_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist14.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist14.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist14.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist15_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist15.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist15.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist15.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist16_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist16.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist16.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist16.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }

    protected void checkboxlist17_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist17.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist17.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist17.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist18_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist18.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist18.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist18.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist19_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist19.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist19.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist19.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }
    protected void checkboxlist20_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (ListItem item in checkboxlist20.Items)
        {
            if (item.Selected)
                counter++;
        }
        if (counter >= 1)
        {
            foreach (ListItem item in checkboxlist20.Items)
            {
                if (!item.Selected)
                    item.Enabled = false;
            }
        }
        else
        {
            foreach (ListItem item in checkboxlist20.Items)
            {
                if (!item.Selected)
                    item.Enabled = true;
            }
        }
    }

    protected int get_total()
    {
        int sum = 0;
        sum += int.Parse(checkboxlist1.SelectedValue);
        sum += int.Parse(checkboxlist2.SelectedValue);
        sum += int.Parse(checkboxlist3.SelectedValue);
        sum += int.Parse(checkboxlist4.SelectedValue);
        sum += int.Parse(checkboxlist5.SelectedValue);
        sum += int.Parse(checkboxlist6.SelectedValue);
        sum += int.Parse(checkboxlist7.SelectedValue);
        sum += int.Parse(checkboxlist8.SelectedValue);
        sum += int.Parse(checkboxlist9.SelectedValue);
        sum += int.Parse(checkboxlist10.SelectedValue);
        sum += int.Parse(checkboxlist11.SelectedValue);
        sum += int.Parse(checkboxlist12.SelectedValue);
        sum += int.Parse(checkboxlist13.SelectedValue);
        sum += int.Parse(checkboxlist14.SelectedValue);
        sum += int.Parse(checkboxlist15.SelectedValue);
        sum += int.Parse(checkboxlist16.SelectedValue);
        sum += int.Parse(checkboxlist17.SelectedValue);
        sum += int.Parse(checkboxlist18.SelectedValue);
        sum += int.Parse(checkboxlist19.SelectedValue);
        sum += int.Parse(checkboxlist20.SelectedValue);
        return sum;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        int sid = int.Parse(Request.QueryString["param"]);

        string Fname = fname.Text;
        string Lname = lname.Text;

        string name = Fname + Lname;
        int tid = 0;

        int rating = (get_total() * 100) / 100;
        string textareaText = Request.Form["comments"];


        int feedid = 0;
        SqlCommand cm = new SqlCommand("Select top 1 FeedbackID from Feedback order by FeedbackID desc", conn);
        SqlDataReader rd = cm.ExecuteReader();
        if (rd.Read()) { feedid = (int)rd["FeedbackID"]; }
        feedid++;



        SqlCommand sql = new SqlCommand("select [user].userid from [user] where role = 'Faculty' and Username ='" + name+"'",conn);
        SqlDataReader dr = sql.ExecuteReader();
        if (dr.Read()) { tid = (int)dr["userid"]; }

        dr.Close();

        SqlCommand sql2 = new SqlCommand("insert into feedback(FeedbackID,StudentID,FacultyID,FeedbackFormData,rating) values(@FeedbackID,@StudentID,@FacultyID,@FeedbackFormData,@rating)", conn);
        sql2.Parameters.AddWithValue("@FeedbackID", feedid);
        sql2.Parameters.AddWithValue("@StudentID", sid);
        sql2.Parameters.AddWithValue("@FacultyID", tid);
        sql2.Parameters.AddWithValue("@FeedbackFormData", textareaText);
        sql2.Parameters.AddWithValue("@rating", rating);

        sql2.ExecuteNonQuery();
        conn.Close();
    }
}
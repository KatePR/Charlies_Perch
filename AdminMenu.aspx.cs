using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMenu : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void menuButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMenu.aspx");
    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AdminVeggieMenu.aspx");
    }

    protected void Button2_Click2(object sender, EventArgs e)
    {
        Response.Redirect("AdminMeatsPage.aspx");
    }

    protected void animateClick(object sender, EventArgs e)
    {

    }

    protected void animate_Click(object sender, EventArgs e)
    {

    }

   /* protected void Button3_Click(object sender, EventArgs e)
    {
        StringBuilder build = new StringBuilder();
        build.Append(tagLine.Text);
        
        string conString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        using (SqlConnection con = new SqlConnection(conString1))
        {

            con.Open();
            if (build != null && build.ToString() != "")
            {
                cmd = new SqlCommand("UPDATE TagLine SET text ='" + build.ToString() + "' WHERE id=0", con);
                cmd.ExecuteNonQuery();
            }
        }
    }*/
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
{
    int restarauntId;

    protected void Page_Load(object sender, EventArgs e)
    {
        restarauntId = Convert.ToInt32(DropDownList1.SelectedValue);
        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        SqlConnection conn = new SqlConnection(connString1);

        conn.Open();

        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Locations WHERE Rest_ID = '" + DropDownList1.SelectedValue + "'", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        foreach(DataRow row in dt.Rows)
        {
            Label3.Text = row["Rest_Welcome"].ToString().Trim();
            companyName.InnerText = row["Rest_Name"].ToString().Trim();
        }
    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void menuButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Vegetarian.aspx");
    }

    protected void Button2_Click2(object sender, EventArgs e)
    {
        Response.Redirect("Meats.aspx");
    }
}
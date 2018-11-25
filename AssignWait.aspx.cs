using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AssignWait : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }

    protected void menuButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMenu.aspx");
    }

    int restaurantId = 0;
    protected void WaiterWaitress_SelectedIndexChanged(object sender, EventArgs e)
    {
        restaurantId = Convert.ToInt32(WaiterWaitress.SelectedValue);
        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        SqlConnection conn = new SqlConnection(connString1);

        conn.Open();

        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Waits WHERE Rest_ID = '" + WaiterWaitress.SelectedValue + "'", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserName = UsernameTextbox.Text;
        string Password = PasswordTextbox.Text;

        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";

        SqlConnection conn = new SqlConnection(connString1);

        conn.Open();

        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Login WHERE username = '" +UsernameTextbox.Text+ "'and password = '" +PasswordTextbox.Text+ "'", conn);
        DataTable dt = new DataTable();
        Console.Write(sda.TableMappings.ToString());
        sda.Fill(dt);
       
        int RowCount;
        RowCount = dt.Rows.Count;

        for (int i = 0; i < RowCount; i++)

        {

            UserName = dt.Rows[i]["UserName"].ToString();
            Password = dt.Rows[i]["Password"].ToString();

            if (UserName == UsernameTextbox.Text && Password == PasswordTextbox.Text)

            {
                Session["UserName"] = UserName;

                if (dt.Rows[i]["Role"].ToString() == "Admin")
                    Response.Redirect("AdminPage.aspx");
                else if (dt.Rows[i]["Role"].ToString() == "Employee")
                    Response.Redirect("StaffPage.aspx");
            }
            else
            {
                lb1.Text = "Invalid User Name or Password! Please try again!";
            }
        }
    }

    protected void UsernameTextbox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void menuButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
}
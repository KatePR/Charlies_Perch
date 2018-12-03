using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string Name = Request.QueryString["Name"];

        SqlCommand cmd1 = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();

        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        DataTable dt = new DataTable();
        DataTable dt2 = new DataTable();
        using (SqlConnection conn = new SqlConnection(connString1))
        {
            using (cmd1 = new SqlCommand("SELECT * FROM Orders WHERE Cust_ID = '" + Name + "'", conn))
            {
                SqlDataAdapter ada = new SqlDataAdapter(cmd1);
                conn.Open();
                ada.Fill(dt);
                conn.Close();
            }
            StringBuilder myString = new StringBuilder();
            myString.Append("<table>");
            myString.Append("<tr><th>Order ID</th><th>Price</th><th>Status</th><th>Tip</th></tr>");
            foreach (DataRow row in dt.Rows)
            {
                myString.Append("<tr><td>" + row["Order_ID"].ToString().Trim() + "</td>");
                myString.Append("<td>" + row["Price"].ToString().Trim() + "</td>");
                myString.Append("<td>" + row["Status"].ToString().Trim() + "</td>");
                myString.Append("<td>" + row["Tip"].ToString().Trim() + "</td></tr>");
            }
            myString.Append("</table>");
            orders.Controls.Add(new LiteralControl(myString.ToString()));



            using (cmd2 = new SqlCommand("SELECT * FROM Assigned WHERE Cust_ID = '" + Name + "'", conn))
            {
                SqlDataAdapter ada = new SqlDataAdapter(cmd2);
                conn.Open();
                ada.Fill(dt2);
                conn.Close();
            }
            StringBuilder myString2 = new StringBuilder();
            myString2.Append("<table>");
            myString2.Append("<tr><th>Order ID</th><th>Waiter</th><th>Status</th></tr>");
            foreach (DataRow row in dt2.Rows)
            {
                myString2.Append("<tr><td>" + row["Id"].ToString().Trim() + "</td>");
                myString2.Append("<td>" + row["Name"].ToString().Trim() + "</td>");
                myString2.Append("<td>" + row["Status"].ToString().Trim() + "</td></tr>");
            }
            myString2.Append("</table>");
            orders.Controls.Add(new LiteralControl(myString2.ToString()));









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

    protected void cartButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Shopping.aspx");
    }
}
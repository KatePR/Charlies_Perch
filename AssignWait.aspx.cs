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
    int restarauntId;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            WaiterWaitress.Items.Clear();
            OrdersDDL.Items.Clear();

            restarauntId = Convert.ToInt32(DropDownList1.SelectedValue);
            string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
            SqlConnection conn = new SqlConnection(connString1);

            conn.Open();

            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Locations WHERE Rest_ID = '" + DropDownList1.SelectedValue + "'", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {
                companyName.InnerText = row["Rest_Name"].ToString().Trim();
            }


            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT * FROM Waits WHERE Rest_ID = '" + DropDownList1.SelectedValue + "'", conn);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            foreach (DataRow row in dt1.Rows)
            {
                WaiterWaitress.Items.Add(row["Name"].ToString().Trim());
            }

            SqlDataAdapter sda2 = new SqlDataAdapter("SELECT * FROM Orders WHERE Rest_ID = '" + DropDownList1.SelectedValue + "'", conn);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            foreach (DataRow row in dt2.Rows)
            {
                OrdersDDL.Items.Add(row["Order_ID"].ToString().Trim());
            }
        }
       
    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }

    protected void menuButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMenu.aspx");
    }

    protected void assignWaiter_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connString1))
        {
            using (cmd = new SqlCommand("SELECT * FROM Orders WHERE Order_ID = '" + OrdersDDL.SelectedValue.ToString().Trim() + "'", conn))
            {
                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                conn.Open();
                ada.Fill(dt);
                conn.Close();
            }
            
            foreach (DataRow row in dt.Rows)
            {
                items.Text = row["Items"].ToString().Trim();
            }


            using (cmd = new SqlCommand("INSERT INTO Assigned(Id, Rest_ID, Name) VALUES(@Id, @Rest_ID, @Name)", conn))
            {
                cmd.Parameters.AddWithValue("@Id", OrdersDDL.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Rest_ID", DropDownList1.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Name", WaiterWaitress.SelectedValue.ToString());
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

        }

            assigned.Text = WaiterWaitress.SelectedValue + " " + OrdersDDL.SelectedValue;
    }
}
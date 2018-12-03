using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
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
            //clear will clear out each waiter/waitress and order name each time the location is changed.
            WaiterWaitress.Items.Clear();
            OrdersDDL.Items.Clear();

            restarauntId = Convert.ToInt32(locationDDL.SelectedValue);
            string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
            SqlConnection conn = new SqlConnection(connString1);

            conn.Open();

            //the sqlAdapter selects from the locations database where the restaurantID is the ID of the selected restaurant.
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Locations WHERE Rest_ID = '" + locationDDL.SelectedValue + "'", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {
                //this changes the restaurant name after the location is selected.
                companyName.InnerText = row["Rest_Name"].ToString().Trim();
            }

            //the sqlAdapter selects from the Waits database where the waiters rest_ID is equal to the location.
            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT * FROM Waits WHERE Rest_ID = '" + locationDDL.SelectedValue + "'", conn);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            foreach (DataRow row in dt1.Rows)
            {
                //this changes the names of the waiters/waitresses depending on the location selected.
                WaiterWaitress.Items.Add(row["Name"].ToString().Trim());
            }

            //the sqlAdapter selects from the Orders database where the rest_ID matches the location ID.
            SqlDataAdapter sda2 = new SqlDataAdapter("SELECT * FROM Orders WHERE Rest_ID = '" + locationDDL.SelectedValue + "'", conn);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            foreach (DataRow row in dt2.Rows)
            {
                //changes orders based on location chosen.
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
        string custId = "";
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
                custId = row["Cust_ID"].ToString().Trim();
            }

            using (cmd = new SqlCommand("INSERT INTO Assigned(Id, Rest_ID, Name, Status, Cust_ID) VALUES(@Id, @Rest_ID, @Name, @Status, @Cust_id)", conn))
            {
                cmd.Parameters.AddWithValue("@Id", OrdersDDL.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Rest_ID", locationDDL.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Name", WaiterWaitress.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Status", orderStatusDDL.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Cust_id", custId);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }

    protected void orderStatusDDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void locationDDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void updateStat_Click(object sender, EventArgs e)
    {

        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        SqlConnection conn = new SqlConnection(connString1);
        SqlCommand cmd = new SqlCommand("UPDATE Orders SET Status = '" + orderStatusDDL.SelectedValue + "' WHERE Order_ID = '" + OrdersDDL.SelectedValue + "'", conn);
        DataTable dt3 = new DataTable();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        foreach (DataRow row in dt3.Rows)
        {
            orderStatusDDL.Items.Add(row["Status"].ToString().Trim());
        }


    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
          

        SqlCommand cmd1 = new SqlCommand();

        string selectedOrder = ListBox1.SelectedItem.Text;

        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        DataTable dt = new DataTable();
        using (SqlConnection conn = new SqlConnection(connString1))
        {
            using (cmd1 = new SqlCommand("SELECT * FROM Assigned WHERE Id = '" + selectedOrder + "'", conn))
            {
                SqlDataAdapter ada = new SqlDataAdapter(cmd1);
                conn.Open();
                ada.Fill(dt);
                conn.Close();
            }

            foreach (DataRow row in dt.Rows)
            {
                WaiterWaitress.SelectedValue = row["Name"].ToString().Trim();
                orderStatusDDL.SelectedValue = row["Status"].ToString().Trim();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex != -1)
        {

            string connString2 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
            SqlConnection conn2 = new SqlConnection(connString2);
            SqlCommand cmd2 = new SqlCommand("UPDATE Assigned SET Status = '" + orderStatusDDL.SelectedValue + "', Name = '" + WaiterWaitress.SelectedValue + "' WHERE Id = '" + ListBox1.SelectedValue + "'", conn2);
            DataTable dt4 = new DataTable();
            conn2.Open();
            cmd2.ExecuteNonQuery();
            conn2.Close();

            SqlCommand cmd3 = new SqlCommand("UPDATE Orders SET Status = '" + orderStatusDDL.SelectedValue + "' WHERE Order_ID = '" + ListBox1.SelectedValue + "'", conn2);
            conn2.Open();
            cmd3.ExecuteNonQuery();
            conn2.Close();

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class Shopping : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    int restaurantID;
    protected void Page_Load(object sender, EventArgs e)
    {
        restaurantID = Convert.ToInt32(DropDownList1.SelectedValue);
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

    protected void order_Click(object sender, EventArgs e)
    {
        string connString1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Rader\\Documents\\Visual Studio 2015\\WebSites\\Charlies_Perch\\App_Data\\LoginDatabase.mdf\";Integrated Security=True";
        DataTable dt = new DataTable();
        StringBuilder myItems = new StringBuilder();
        int totalPrice = 0;
        using (SqlConnection conn = new SqlConnection(connString1))
        {
            using (cmd1 = new SqlCommand("SELECT * FROM Cart", conn))
            {
                SqlDataAdapter ada = new SqlDataAdapter(cmd1);
                conn.Open();
                ada.Fill(dt);
                conn.Close();
            }

            foreach(DataRow row in dt.Rows)
            {
                myItems.Append(row["Name"].ToString().Trim() + " ");
                totalPrice += Convert.ToInt32(row["Price"]);
            }

            using (cmd = new SqlCommand("INSERT INTO Orders(Order_ID, Items, Price, Quantity, Rest_ID, Tip) VALUES(@Order_id, @Item, @Price, @Quantity, @Rest_id, @Tip)", conn))
            {
                cmd.Parameters.AddWithValue("@Order_id", System.DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@Item", myItems.ToString());
                cmd.Parameters.AddWithValue("@Price", totalPrice.ToString());
                cmd.Parameters.AddWithValue("@Quantity", "");
                cmd.Parameters.AddWithValue("@Rest_id", restaurantID);

                if (tipText.Text == null)
                {
                    cmd.Parameters.AddWithValue("@Tip", Convert.ToInt32(tipText.Text));
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Tip", 0);
                }


                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}
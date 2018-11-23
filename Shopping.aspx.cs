using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Shopping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyItems"];
        if (dt != null)
        {
            Label1.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label1.Text = "0";
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

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        DropDownList dList = (DropDownList)(e.Item.FindControl("DropDownList1"));
        Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dList.SelectedItem.ToString());
    }
}
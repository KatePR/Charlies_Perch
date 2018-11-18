using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("StaffPage.aspx");
    }

    protected void menuButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("StaffMenu.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("StaffVeggieMenu.aspx");
    }

    protected void Button2_Click2(object sender, EventArgs e)
    {
        Response.Redirect("StaffMeatMenu.aspx");
    }
}
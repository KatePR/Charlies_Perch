using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMenu : System.Web.UI.Page
{
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
}
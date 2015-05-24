using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_managePet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insert_pet(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/insertPet.aspx");
    }
}
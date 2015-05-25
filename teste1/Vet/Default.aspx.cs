using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vet_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insert_comments(object sender, EventArgs e)
    {
        Response.Redirect("~/Vet/AddComments.aspx");
    }
}
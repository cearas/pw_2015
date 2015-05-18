using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Client_ViewPets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }
        if (!IsPostBack)
        {
            pet.SelectParameters.Add("user_id", get_UserID().ToString());
        }
    }

    private int get_UserID()
    {
        //SqlDataReader dR;
        var user = Page.User.Identity.Name;
        var id = 1;
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string SqlString;
        SqlString = "SELECT id_user FROM [User] WHERE user_name= '" + user + "'";

        SqlCommand cmd = new SqlCommand(SqlString, cnn);
        cnn.Open();

        SqlDataReader dR = cmd.ExecuteReader();
        //efectuar o data binding
        while (dR.Read())
            id = Convert.ToInt32(dR.GetValue(0));
        dR.Close();
        cnn.Close();

        return id;
    }

    protected void insert_pet(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/AddPet.aspx");
    }
}
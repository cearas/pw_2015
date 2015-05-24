using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Vet_ViewPets : System.Web.UI.Page
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
        SqlString = "SELECT id_user FROM [User]";

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
        Response.Redirect("~/Vet/AddPets.aspx");
    }

    protected void gv_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        gv.Visible = false;

        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;

        lbl_name.Visible = true;
        lbl_age.Visible = true;
        lbl_breed.Visible = true;
        lbl_gender.Visible = true;
        img_pet.Visible = true;

        lbl_name.Text = gv.Rows[e.NewSelectedIndex].Cells[4].Text;
        lbl_age.Text = gv.Rows[e.NewSelectedIndex].Cells[5].Text;
        lbl_breed.Text = gv.Rows[e.NewSelectedIndex].Cells[6].Text;
        lbl_gender.Text = gv.Rows[e.NewSelectedIndex].Cells[7].Text;
        img_pet.ImageUrl = gv.Rows[e.NewSelectedIndex].Cells[8].ToString();
    }
}
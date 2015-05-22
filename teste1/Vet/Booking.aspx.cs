using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vet_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }

        if (!IsPostBack)
        {
            LoadUsers();
            LoadPets();

        }
    }
}

private void LoadPets()
    {
        
        int iduser = get_UserID();
        DataTable pets = new DataTable();
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT id_pet,pet_name FROM Pet WHERE id_user=@user_id";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@user_id", iduser);
        
        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        droplist_pets.Visible = true;
        da.Fill(pets);

        droplist_pets.DataSource = pets;
        droplist_pets.DataTextField = "pet_name";
        droplist_pets.DataValueField = "id_pet";
        droplist_pets.DataBind();

        droplist_pets.Items.Insert(0, new ListItem("<Select Pet>", "0"));
        
    }

private void LoadUsers(){


}
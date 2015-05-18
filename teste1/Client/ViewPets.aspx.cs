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
    protected void info_pet(object sender, EventArgs e)
    {

        gv.Visible = false;
        int iduser = get_UserID();

        DataTable petsdt = new DataTable();

        petsdt.Columns.Add("Name");
        petsdt.Columns.Add("Age");
        petsdt.Columns.Add("Breed");
        petsdt.Columns.Add("Gender");
        petsdt.Columns.Add("Image");

        DataRow dr = petsdt.NewRow();


        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT * FROM Pet WHERE id_user=@user_id";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@user_id", iduser);

        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        cnn.Open();


        SqlDataReader pets = cmd.ExecuteReader();
        pets.Read();

        
        
        lbl_name.Text = pets["pet_name"].ToString();
        lbl_age.Text = pets["pet_age"].ToString();
        lbl_breed.Text = pets["pet_race"].ToString();
        lbl_gender.Text = pets["pet_gender"].ToString();
        

        pets.Close();
        cnn.Close();



    }
}
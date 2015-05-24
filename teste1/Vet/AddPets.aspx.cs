using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Vet_AddPets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            LoadUsers();
        }
    }

    private void LoadUsers()
    {
        
        DataTable users = new DataTable();
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT * FROM [User]";

        SqlCommand cmd = new SqlCommand(query);
        //cmd.Parameters.AddWithValue("@user_id", iduser);

        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        droplist_users.Visible = true;
        da.Fill(users);

        droplist_users.DataSource = users;
        droplist_users.DataTextField = "user_name";
        droplist_users.DataValueField = "id_user";
        droplist_users.DataBind();

        droplist_users.Items.Insert(0, new ListItem("<Select User>", "0"));

    }
    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        
            if (!droplist_users.SelectedValue.ToString().Equals("0"))
            {
                if (Page.IsValid)
                {
                    int iduser = Convert.ToInt32(droplist_users.SelectedValue);
                    
                    SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    String query = "Insert into Pet (pet_name, pet_age, pet_race, pet_gender, id_user) VALUES (@name, @age, @breed,@gender,@user_id)";

                    SqlCommand cmd = new SqlCommand(query);
                    cmd.Connection = cnn;

                    cmd.Parameters.AddWithValue("@name", txt_name.Text);
                    cmd.Parameters.AddWithValue("@breed", txt_breed.Text);
                    cmd.Parameters.AddWithValue("@age", txt_age.Text);
                    cmd.Parameters.AddWithValue("@gender", droplist_Gender.SelectedItem.ToString());
                    //cmd.Parameters.AddWithValue("@photo", fp_photo.);
                    cmd.Parameters.AddWithValue("@user_id", iduser);

                    cnn.Open();
                    int n = cmd.ExecuteNonQuery();
                    cnn.Close();

                    txt_age.Text = "";
                    txt_breed.Text = "";
                    txt_name.Text = "";
                    droplist_Gender.SelectedValue = "0";
                    droplist_users.SelectedValue = "0";
                    Response.Redirect("~/Vet/ViewPets.aspx");
                }
            }else
            InvalidCredentialMessage.Visible = true;
    }
    protected void CleanButton_Click(object sender, EventArgs e)
    {
        txt_age.Text = "";
        txt_breed.Text = "";
        txt_name.Text = "";
        droplist_Gender.SelectedValue = "0";
        droplist_users.SelectedValue = "0";
    }
}
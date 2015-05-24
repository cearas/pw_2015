using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_insertPet : System.Web.UI.Page
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
        String query = "SELECT user_name FROM [User]";

        SqlCommand cmd = new SqlCommand(query);
        //cmd.Parameters.AddWithValue("@user_id", iduser);

        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        droplist_User.Visible = true;
        da.Fill(users);

        droplist_User.DataSource = users;
        droplist_User.DataTextField = "user_name";
        droplist_User.DataValueField = "id_user";
        droplist_User.DataBind();

        droplist_User.Items.Insert(0, new ListItem("<Select User>", "0"));

    }

    protected void AcceptButton_Click(object sender, EventArgs e)
    {

        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "Insert into Pet (pet_name, pet_age, pet_race, pet_gender, id_user) VALUES (@name, @age, @breed,@gender,@user_id)";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Connection = cnn;

        cmd.Parameters.AddWithValue("@name", txt_name.Text);
        cmd.Parameters.AddWithValue("@breed", txt_breed.Text);
        cmd.Parameters.AddWithValue("@age", txt_age.Text);
        cmd.Parameters.AddWithValue("@gender", droplist_Gender.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@user_id", droplist_User.SelectedItem.ToString());

        cnn.Open();
        int n = cmd.ExecuteNonQuery();
        cnn.Close();

        txt_age.Text = "";
        txt_breed.Text = "";
        txt_name.Text = "";
        droplist_Gender.SelectedValue = "0";

        Response.Redirect("managePet.aspx");
    }
    protected void CleanButton_Click(object sender, EventArgs e)
    {
        txt_age.Text = "";
        txt_breed.Text = "";
        txt_name.Text = "";
        droplist_Gender.SelectedValue = "0";

    }
}
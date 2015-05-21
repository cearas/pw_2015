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
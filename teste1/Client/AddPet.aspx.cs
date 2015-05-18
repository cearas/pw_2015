using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Client_AddPet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }
    }

    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        int iduser = get_UserID();

        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "Insert into Pet (pet_name, pet_age, pet_race, pet_gender, id_user) VALUES (@name, @age, @breed,@gender,@user_id)";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Connection = cnn;

        cmd.Parameters.AddWithValue("@name", txt_name.Text);
        cmd.Parameters.AddWithValue("@breed", txt_breed.Text);
        cmd.Parameters.AddWithValue("@age", txt_age.Text);
        cmd.Parameters.AddWithValue("@gender", droplist_Gender.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@user_id", iduser);

        cnn.Open();
        int n = cmd.ExecuteNonQuery();
        cnn.Close();

        txt_age.Text = "";
        txt_breed.Text = "";
        txt_name.Text = "";
        droplist_Gender.SelectedValue = "0";
    }
    protected void CleanButton_Click(object sender, EventArgs e)
    {
        txt_age.Text = "";
        txt_breed.Text = "";
        txt_name.Text = "";
        droplist_Gender.SelectedValue = "0";

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
}
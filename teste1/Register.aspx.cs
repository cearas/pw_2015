using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class teste1_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String query = "Insert into [User] (user_name, user_pw, user_district, user_phone, user_address, user_mail, user_nif) VALUES (@username, @password, @district,@phone,@address,@email,@nif) ";

            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@username", txt_name.Text);
            cmd.Parameters.AddWithValue("@password", txt_password.Text);
            cmd.Parameters.AddWithValue("@district", txt_district.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.Parameters.AddWithValue("@address", txt_address.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@nif", txt_nif.Text);

            cnn.Open();
            try
            {
                int n = cmd.ExecuteNonQuery();
            }
            catch (Exception ex) {
                var sqle = ex.InnerException as SqlException;
                InvalidCredentialMessage.Visible = true;
            
            }
            cnn.Close();

            txt_nif.Text = "";
            txt_name.Text = "";
            txt_password.Text = "";
            txt_phone.Text = "";
            txt_email.Text = "";
            txt_district.Text = "";
            txt_address.Text = "";
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        txt_nif.Text = "";
        txt_name.Text = "";
        txt_password.Text = "";
        txt_phone.Text = "";
        txt_email.Text = "";
        txt_district.Text = "";
        txt_address.Text = "";
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;

public partial class Admin_insertVet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            List<string> selectedValues = ckboxSpec.Items.Cast<ListItem>()
               .Where(li => li.Selected)
               .Select(li => li.Value)
               .ToList();

            StringBuilder builder = new StringBuilder();
            foreach (string value in selectedValues) // Loop through all strings
            {
                builder.Append(value).Append("|"); // Append string to StringBuilder
            }
            string result = builder.ToString(); // Get string from StringBuilder

            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String query = "Insert into [Vet] (vet_name, vet_pw, vet_district, vet_phone, vet_mail, vet_specialties) VALUES (@username, @password, @district,@phone,@email,@specialties) ";

            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@username", txt_name.Text);
            cmd.Parameters.AddWithValue("@password", txt_password.Text);
            cmd.Parameters.AddWithValue("@district", txt_district.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@specialties", result);

            cnn.Open();
            int n = cmd.ExecuteNonQuery();
            cnn.Close();

            Response.Redirect("manageClient.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txt_name.Text = " ";
        txt_password.Text = " ";
        txt_phone.Text = " ";
        txt_email.Text = " ";
        txt_district.Text = " ";
    }
}
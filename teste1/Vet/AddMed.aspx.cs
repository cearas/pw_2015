using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Vet_AddMed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "Insert into Med (med_name, med_qtd) VALUES (@name, @qtd)";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Connection = cnn;

        cmd.Parameters.AddWithValue("@name", txt_name.Text);
        cmd.Parameters.AddWithValue("@qtd", txt_qtd.Text);


        cnn.Open();
        int n = cmd.ExecuteNonQuery();
        cnn.Close();

        txt_name.Text = "";
        txt_qtd.Text = "";
        Response.Redirect("~/Vet/ViewMeds.aspx");
    }
    protected void CleanButton_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_qtd.Text = "";
    }
}
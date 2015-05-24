using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

  
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    
    protected void log_Click(object sender, EventArgs e)
    {
        
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlConnection cnn2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        String query = "SELECT user_name, user_pw FROM [User] WHERE user_name =  @username AND user_pw = @password";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Connection = cnn;

        cmd.Parameters.AddWithValue("@username", user.Text);
        cmd.Parameters.AddWithValue("@password", pw.Text);

        cnn.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
            FormsAuthentication.RedirectFromLoginPage(user.Text, false);

        else if (dt.Rows.Count == 0)
        {
            String query2 = "SELECT vet_name, vet_pw FROM [Vet] WHERE vet_name =  @vetname AND vet_pw = @password";

            SqlCommand cmd2 = new SqlCommand(query2);
            cmd2.Connection = cnn2;

            cmd2.Parameters.AddWithValue("@vetname", user.Text);
            cmd2.Parameters.AddWithValue("@password", pw.Text);

            cnn2.Open();

            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);

            if (dt2.Rows.Count < 1)
                InvalidCredentialMessage.Visible = true;
            else
            {
                FormsAuthentication.RedirectFromLoginPage(user.Text, false);
                cnn2.Close();
                Response.Redirect("~/Vet/Default.aspx");
            }

        }

        
            
       // cnn.Close();


    }

   
}
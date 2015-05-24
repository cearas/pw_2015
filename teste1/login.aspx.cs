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
        else
            InvalidCredentialMessage.Visible = true;
        cnn.Close();


    }

   
}
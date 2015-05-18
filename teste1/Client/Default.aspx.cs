using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }
        if (!Page.IsPostBack)
        {
            LoadData();
        }
    }
    


    private void LoadData()
    {
        int iduser = get_UserID();
        

        //SqlDataReader users = new SqlDataReader();
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT user_name,user_pw,user_district,user_phone,user_address,user_mail,user_nif FROM [User] WHERE id_user=@user_id ";

        SqlCommand cmd = new SqlCommand(query);

        cmd.Parameters.AddWithValue("@user_id",iduser);

        cnn.Open();
        cmd.Connection = cnn;
        SqlDataReader users = cmd.ExecuteReader();
        if (users.Read())
        {
            lbl_name.Text = users["user_name"].ToString();
            lbl_district.Text = users["user_district"].ToString();
            lbl_phone.Text = users["user_phone"].ToString();
            lbl_address.Text = users["user_address"].ToString();
            lbl_email.Text = users["user_mail"].ToString();
            lbl_nif.Text = users["user_nif"].ToString();
        }
        users.Close();
        cnn.Close();
    }

    protected int get_UserID()
    {
        //SqlDataReader dR;
        var user = Page.User.Identity.Name;
        var id = 1;
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string SqlString;
        SqlString = "SELECT id_user FROM [User] WHERE user_name= '" + user +"'";

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



    protected void ChangeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx");
    }
}
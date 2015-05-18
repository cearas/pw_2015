using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;

public partial class Client_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }
        if(!Page.IsPostBack){
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

        cmd.Parameters.AddWithValue("@user_id", iduser);

        cnn.Open();
        cmd.Connection = cnn;
        SqlDataReader users = cmd.ExecuteReader();
        users.Read();

        txt_name.Text = users["user_name"].ToString();
        txt_password.Text = "";
        txt_district.Text = users["user_district"].ToString();
        txt_phone.Text = users["user_phone"].ToString();
        txt_address.Text = users["user_address"].ToString();
        txt_email.Text = users["user_mail"].ToString();
        txt_nif.Text = users["user_nif"].ToString();

        users.Close();
        cnn.Close();

    }

    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        int iduser = get_UserID();
        String query;


        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        if (!txt_password.Text.Equals(""))
        {
            query = "UPDATE [User] SET user_name=@username, user_pw=@password, user_district=@district, user_phone=@phone, user_address=@address, user_mail=@email, user_nif=@nif WHERE id_user=@user_id ";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@username", txt_name.Text);
            cmd.Parameters.AddWithValue("@password", txt_password.Text);
            cmd.Parameters.AddWithValue("@district", txt_district.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.Parameters.AddWithValue("@address", txt_address.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@nif", txt_nif.Text);
            cmd.Parameters.AddWithValue("@user_id", iduser);

            cnn.Open();
            int n = cmd.ExecuteNonQuery();
            cnn.Close();
            

        }
        else
        {
            query = "UPDATE [User] SET user_name=@username, user_district=@district, user_phone=@phone, user_address=@address, user_mail=@email, user_nif=@nif WHERE id_user=@user_id ";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@username", txt_name.Text);

            cmd.Parameters.AddWithValue("@district", txt_district.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.Parameters.AddWithValue("@address", txt_address.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@nif", txt_nif.Text);
            cmd.Parameters.AddWithValue("@user_id", iduser);

            cnn.Open();
            int n = cmd.ExecuteNonQuery();
            cnn.Close();
        }

        Response.Redirect("~/Client/Default.aspx");
    }

    protected int get_UserID()
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


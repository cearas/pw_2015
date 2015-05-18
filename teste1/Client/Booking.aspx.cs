using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }
        
        if (!IsPostBack){
            LoadPets();
        }
    }

    private void LoadPets()
    {
        
        int iduser = get_UserID();
        DataTable pets = new DataTable();
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT id_pet,pet_name FROM Pet WHERE id_user=@user_id";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@user_id", iduser);
        
        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        droplist_pets.Visible = true;
        da.Fill(pets);

        droplist_pets.DataSource = pets;
        droplist_pets.DataTextField = "pet_name";
        droplist_pets.DataValueField = "id_pet";
        droplist_pets.DataBind();

        droplist_pets.Items.Insert(0, new ListItem("<Select Pet>", "0"));
        
    }

    protected void cust_calendar_validate(object source, ServerValidateEventArgs args)
    {
        
        if (calendar_appoint.SelectedDate == null || calendar_appoint.SelectedDate <= DateTime.Now.Date)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }


    protected void bt_AddPet_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddPet.aspx");
    }

    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        if (droplist_pets.Visible == true)
        {
            if (!droplist_pets.SelectedValue.ToString().Equals("0"))
            { 
                if (Page.IsValid)
                {

                    int iduser = get_UserID();
                    DateTime dtUserDate;
                    dtUserDate = calendar_appoint.SelectedDate;
                    SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    String query = "Insert into apoint ([apoint_date], apoint_subject, apoint_type, apoint_specialty, apoint_hour, id_pet, user_id) VALUES (@date, @subject, @type, @specialty,@hour,@pet,@user_id)";

                    SqlCommand cmd = new SqlCommand(query);
                    cmd.Connection = cnn;
                
                    cmd.Parameters.AddWithValue("@date", dtUserDate);
                    cmd.Parameters.AddWithValue("@subject", txt_subject.Text);
                    cmd.Parameters.AddWithValue("@type", droplist_type.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@specialty", droplist_specialties.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@hour", droplist_hour.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@pet", droplist_pets.SelectedValue);
                    cmd.Parameters.AddWithValue("@user_id", iduser);
                    cnn.Open();
                    int n = cmd.ExecuteNonQuery();
                    cnn.Close();
                }
            }
        }
        else 
            lbl.Text = "Tem de inserir um animal!";

    }
    protected void droplist_type_SelectedIndexChanged(object sender, EventArgs e)
    {
        droplist_specialties.Visible = true;
        droplist_specialties.Items.Clear();
        

        if ((droplist_type.SelectedValue.ToString()).Equals("1"))
        {

            droplist_specialties.Items.Add(new ListItem("Vaccination", "1"));
            droplist_specialties.Items.Add(new ListItem("Analysis Clinics", "2"));
            droplist_specialties.Items.Add(new ListItem("Placement Microchips", "3"));
            droplist_specialties.Items.Add(new ListItem("Wound Care", "4"));
            droplist_specialties.Items.Add(new ListItem("Assisted reproduction in birth", "5"));
            
            
        }

        if (droplist_type.SelectedValue.ToString() == "2")
        {
            droplist_specialties.Items.Add(new ListItem("Appointments", "1"));
            droplist_specialties.Items.Add(new ListItem("Surgeries", "2"));
            droplist_specialties.Items.Add(new ListItem("Treatment of Stomatology", "3"));
            droplist_specialties.Items.Add(new ListItem("Dermatology", "4"));
            droplist_specialties.Items.Add(new ListItem("Otorhinolaringology", "5"));
            droplist_specialties.Items.Add(new ListItem("Ortepedia", "6"));
            droplist_specialties.Items.Add(new ListItem("Obstetrics", "7"));
            droplist_specialties.Items.Add(new ListItem("Gynecology", "8"));
            
        }



    }
    protected void calendar_appoint_SelectionChanged(object sender, EventArgs e)
    {
        

        int iduser = get_UserID();

        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT apoint_hour FROM apoint WHERE id_user=@user_id AND apoint_date = @date";

        SqlCommand cmd = new SqlCommand(query);

        cmd.Parameters.AddWithValue("@user_id", iduser);
        cmd.Parameters.AddWithValue("@date", calendar_appoint.SelectedDate);
        
        cnn.Open();
        cmd.Connection = cnn;
        SqlDataReader hour = cmd.ExecuteReader();
        hour.Read();

        if (hour.HasRows)
        {
            for (int i = 0; i < hour.FieldCount; i++)
            {
                if (hour["apoint_hour"].Equals(droplist_hour.Items.IndexOf(droplist_hour.Items.FindByValue(i.ToString()))))
                    droplist_hour.Items.RemoveAt(i);
            }
        }
     
        hour.Close();
        cnn.Close();

        droplist_hour.Visible = true;
    }

    protected int get_UserID()
    {
        
        var user = Page.User.Identity.Name;
        var id = 1;
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string SqlString;
        SqlString = "SELECT id_user FROM [User] WHERE user_name= '" + user + "'";

        SqlCommand cmd = new SqlCommand(SqlString, cnn);
        cnn.Open();
        
        SqlDataReader dR = cmd.ExecuteReader();
       
        while (dR.Read())
            id = Convert.ToInt32(dR.GetValue(0));
        dR.Close();
        cnn.Close();

        lbl.Text = " ";
        return id;
    }
    
}
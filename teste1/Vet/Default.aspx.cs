using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Vet_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadMeds();
        }
    }

    protected void gv_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        gv.Visible = false;

        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;

        lbl_date.Visible = true;
        lbl_subject.Visible = true;
        lbl_type.Visible = true;
        lbl_specialty.Visible = true;
        lbl_hour.Visible = true;

        lbl_date.Text = gv.Rows[e.NewSelectedIndex].Cells[3].Text;
        lbl_subject.Text = gv.Rows[e.NewSelectedIndex].Cells[4].Text;
        lbl_type.Text = gv.Rows[e.NewSelectedIndex].Cells[5].Text;
        lbl_specialty.Text = gv.Rows[e.NewSelectedIndex].Cells[6].Text;
        lbl_hour.Text = gv.Rows[e.NewSelectedIndex].Cells[7].Text;
        lbl_idpet.Text = gv.Rows[e.NewSelectedIndex].Cells[8].Text;
        lbl_idvet.Text = gv.Rows[e.NewSelectedIndex].Cells[9].Text;
        lbl_iduser.Text = gv.Rows[e.NewSelectedIndex].Cells[10].Text;
    }

    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "Insert into TecFile (TecFile_review, TecFile_status, [id_pet], [id_vet], [id_user], [id_med]) VALUES (@tecfilereview, @tecfilestatus, @pet, @vet,@user,@med)";

        SqlCommand cmd = new SqlCommand(query);
        cmd.Connection = cnn;

        cmd.Parameters.AddWithValue("@tecfilereview", txt_review.Text);
        cmd.Parameters.AddWithValue("@tecfilestatus", droplist_status.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@pet", Convert.ToInt32(lbl_idpet.Text));
        cmd.Parameters.AddWithValue("@vet", Convert.ToInt32(lbl_idvet.Text));
        cmd.Parameters.AddWithValue("@user", Convert.ToInt32(lbl_iduser.Text));
        cmd.Parameters.AddWithValue("@med", droplist_med.SelectedValue); 
        cnn.Open();
        int n = cmd.ExecuteNonQuery();
        cnn.Close();

    }
    protected void CleanButton_Click(object sender, EventArgs e)
    {
        txt_review.Text = "";
    }

    private void LoadMeds()
    {

        DataTable meds = new DataTable();
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "SELECT * FROM [Med]";

        SqlCommand cmd = new SqlCommand(query);
        //cmd.Parameters.AddWithValue("@user_id", iduser);

        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        droplist_med.Visible = true;
        da.Fill(meds);

        droplist_med.DataSource = meds;
        droplist_med.DataTextField = "med_name";
        droplist_med.DataValueField = "Id";
        droplist_med.DataBind();

        droplist_med.Items.Insert(0, new ListItem("<Select Med>", "0"));

    }
}
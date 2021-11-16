using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into tblPerson (name,age,weight) values (@p1,@p2,@p3)", conn);
        cmd.Parameters.AddWithValue("@p1", txtbxname.Text.Trim());
        cmd.Parameters.AddWithValue("@p2", Convert.ToInt32(txtbxage.Text.Trim()) );
        cmd.Parameters.AddWithValue("@p3", Convert.ToInt32(txtbxweight.Text.Trim()));
        cmd.ExecuteNonQuery();
        conn.Close();
        txtbxage.Text = "";
        txtbxname.Text = "";
        txtbxweight.Text = "";
        lblMsg.Visible = true;
        lblMsg.Text = "successfully.";
    }
}
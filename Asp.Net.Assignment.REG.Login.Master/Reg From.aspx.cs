using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace Asp.Net.Assignment.REG.Login.Master
{
    public partial class Reg_From : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        private SqlDataReader reader = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            /* con = new SqlConnection(ConfigurationManager.ConnectionStrings["masterCon"].ConnectionString);

             cmd = new SqlCommand("Select vFirstName,vEmailId,cPassword from RegistrationFormmm", con);


             con.Open();
             reader = cmd.ExecuteReader();
             reader.Read();

             TxtFirstName.Text = reader["vFirstName"].ToString();
             TxtEmailId.Text = reader["vEmailId"].ToString();
             TxtPassword.Text = reader["cPassword"].ToString();


             reader.Close();
             cmd.Dispose();
             con.Close();*/
        }
        public void ClearText()
        {
            TxtFirstName.Text = "";

            TxtEmailId.Text = "";
            TxtFirstName.Focus();
            TxtPassword.Text = "";
            
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            this.ClearText();
        }

        protected void BtnSignIn1_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["masterCon"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_AddNeww", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text);                   
                    cmd.Parameters.AddWithValue("@EmailId", TxtEmailId.Text);
                    cmd.Parameters.AddWithValue("@Password", TxtPassword.Text);
                    

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    
                    cmd.ExecuteNonQuery(); 
                    Session["FirstName"] = TxtFirstName.Text;
                    Response.Redirect("WebForm1.aspx");
                }
            }
           
        }
    }
    
    
}

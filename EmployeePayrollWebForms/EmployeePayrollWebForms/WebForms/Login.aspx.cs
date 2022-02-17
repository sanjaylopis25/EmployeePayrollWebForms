using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constring))
            {
                con.Open();
                string querry = "select * from Register where Email_Id='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
                SqlCommand cmd = new SqlCommand(querry, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.Redirect("EPForm.aspx");
                }
                else
                {
                    Label1.Text = "Login Failed!! Use correct Email Id and Password";
                }
            }
        }
    }
}
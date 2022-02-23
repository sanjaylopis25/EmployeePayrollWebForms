using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        

        protected bool AuthenticateUser(string email_id, string password)
        {
            string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                SqlCommand com = new SqlCommand("sp_Login", con);
                com.CommandType = CommandType.StoredProcedure;
                SqlParameter paramEmail_Id = new SqlParameter("@email", email_id);
                SqlParameter paramPassword = new SqlParameter("@pswrd", password);
                com.Parameters.Add(paramEmail_Id);
                com.Parameters.Add(paramPassword);
                con.Open();
                int ReturnCode = (int)com.ExecuteScalar();
                return ReturnCode == 1;
            }          
        }
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
            if (AuthenticateUser(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Label1.Text = "Invalid Email Or Password";
            }
            
            //using (SqlConnection con = new SqlConnection(constring))
            //{
            //    con.Open();
            //    string querry = "select * from Register where Email_Id='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
            //    SqlCommand cmd = new SqlCommand(querry, con);
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.Read())
            //    {
            //        Response.Redirect("EPForm.aspx");
            //    }
            //    else
            //    {
            //        Label1.Text = "Login Failed!! Use correct Email Id and Password";
            //    }
            //    con.Close();
            //}
        }

    }
}
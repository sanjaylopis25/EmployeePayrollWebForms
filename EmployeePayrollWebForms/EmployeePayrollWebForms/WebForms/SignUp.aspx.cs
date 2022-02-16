using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeePayrollWebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spInsert";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@fname", System.Data.SqlDbType.VarChar).Value = TextBox1.Text.Trim();
                cmd.Parameters.Add("@lname", System.Data.SqlDbType.VarChar).Value = TextBox2.Text.Trim();
                cmd.Parameters.Add("@email", System.Data.SqlDbType.VarChar).Value = TextBox3.Text.Trim();
                cmd.Parameters.Add("@pswrd", System.Data.SqlDbType.VarChar).Value = TextBox4.Text.Trim();
                cmd.Parameters.Add("@cpswrd", System.Data.SqlDbType.VarChar).Value = TextBox5.Text.Trim();
                cmd.Parameters.Add("@phno", System.Data.SqlDbType.VarChar).Value = TextBox6.Text.Trim();
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Registered Successfully!!";
            }
 
        }
    }
}
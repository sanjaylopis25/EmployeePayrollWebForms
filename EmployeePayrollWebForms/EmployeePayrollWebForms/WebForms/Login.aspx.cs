using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
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
            SqlCommand com = new SqlCommand("sp_Login", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Email_Id", TextBox1.Text);
            com.Parameters.AddWithValue("@Password", TextBox2.Text);
            con.Open();
            var datareader = com.ExecuteReader();
            if (datareader != null)
            {
                Session["user"] = datareader;
                Response.Redirect("HomePage.aspx");
                GridView1.DataSource = datareader;
                GridView1.DataBind();
            }
            else
            {

            }
            con.Close();
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
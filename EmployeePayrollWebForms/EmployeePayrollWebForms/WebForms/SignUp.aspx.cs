using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            string passwordText = null, confirmPassText = null;
            if (CheckBox1.Checked)
            {
                TextBox4.TextMode = TextBoxMode.SingleLine;
                passwordText = TextBox4.Text;
                TextBox5.TextMode = TextBoxMode.SingleLine;
                confirmPassText = TextBox5.Text;
            }
            else
            {

                TextBox4.TextMode = TextBoxMode.Password;
                TextBox4.Text = passwordText;
                TextBox5.TextMode = TextBoxMode.Password;
                TextBox5.Text = confirmPassText;
            }
        }
    }
}
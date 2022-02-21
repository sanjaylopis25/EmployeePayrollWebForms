using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms.WebForms
{    
    public partial class EPForm : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string date = string.Empty;
            if (DropDownList2.SelectedItem.Text!=null)
            {
                date = DropDownList2.SelectedItem.Text + DropDownList3.SelectedItem.Text + DropDownList4.SelectedItem.Text;
            }
            //string gender = string.Empty;
            //if (RadioButtonList1.)
            //{'

            //}
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("sp_Form", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", System.Data.SqlDbType.VarChar).Value = TextBox2.Text.Trim();
            cmd.Parameters.AddWithValue("@Profile_Image", RadioButtonList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Department", CheckBoxList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Salary", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Start_Date", date);
            cmd.Parameters.AddWithValue("@Notes", System.Data.SqlDbType.VarChar).Value = TextBox1.Text.Trim();
            cmd.Connection = con;
            con.Open();
            var datareader = cmd.ExecuteReader();
            if (datareader != null)
            {
                Response.Redirect("HomePage.aspx");               
            }
            else
            {
                //Label1.Text = "Wrong Email or Password";
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EPForm.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Validators.Remove(RequiredFieldValidator3);
            //Validators.Remove(RequiredFieldValidator1);
            //Validators.Remove(RequiredFieldValidator4);
            Response.Redirect("HomePage.aspx");
        }
    }
}
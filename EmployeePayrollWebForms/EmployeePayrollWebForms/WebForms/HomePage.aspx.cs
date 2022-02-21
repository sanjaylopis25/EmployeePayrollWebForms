using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace EmployeePayrollWebForms.WebForms
{
    
    public partial class HomePage : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView2.DataSource = Session["user"];
            //GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EPForm.aspx");
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value.ToString());
            using(SqlConnection con= new SqlConnection(constring))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from Form where Emp_id='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has Deleted')</script>");
                    GridView3.EditIndex = -1;
                    GridView3.DataBind();
                }
            }
        }
    }
}  
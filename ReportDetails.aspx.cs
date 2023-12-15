using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feightner_Dominic_CitizenScience
{
    public partial class ReportDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            ShowObservations();

        }

        protected void ShowObservations()
        {
            if(User.Identity.IsAuthenticated)
            {
                DataTable dt = new DataTable();

                string connString = ConfigurationManager.ConnectionStrings["CitizenScienceDB"].ToString();
                string ReportID = HttpContext.Current.User.Identity.Name;
                string query = "Select * FROM Observations Where UserID = @ReportID";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.ConnectionString = connString;
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ReportID", ReportID);
                        cmd.ExecuteNonQuery();
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);
                        }
                    }
                }
                ObservationTable.DataSource = dt;
                ObservationTable.DataBind();
                ObservationTablePanel.Visible = true;

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        private void CreateReport()
        {
            string connString = ConfigurationManager.ConnectionStrings["CitizenScienceDB"].ToString();

            string userId = HttpContext.Current.User.Identity.GetUserId();
            string ProjectID = Session["ProjectID"] as string;

            if (ProjectID != null & userId != null)
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand("spCreateNewReport", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ProjectID", ProjectID);
                        cmd.Parameters.AddWithValue("@VolunteerID", userId);
                        cmd.Parameters.AddWithValue("@ReportID", SqlDbType.Int);

                        cmd.Parameters["@ReportID"].Direction = ParameterDirection.Output;

                        cmd.ExecuteNonQuery();

                        Session["@ReportID"] = cmd.Parameters["@ReportID"].Value.ToString();
                    }
                }
            }
            else
            {
                errorMsgPan.Visible = true;
            }
        }
    }
}
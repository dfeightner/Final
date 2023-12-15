using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feightner_Dominic_CitizenScience
{
    public partial class Observations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowObservations();
        }

        protected void ShowObservations()
        {
            if (User.Identity.IsAuthenticated)
            {
                Observation.Visible = true;

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }

        }
        private void AddObservation()
        {
            string UserID = HttpContext.Current.User.Identity.Name;
            if(UserID != null)
            {
                string connString = ConfigurationManager.ConnectionStrings["CitizenScienceDB"].ToString();
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("spAddObservationToReport", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ObservedDate", Date.Text);
                        cmd.Parameters.AddWithValue("@Notes", Notes.Text);
                        cmd.Parameters.AddWithValue("@id", UserID);
                        cmd.Parameters.Add("@ObservationID", System.Data.SqlDbType.Int);
                        cmd.Parameters["@ObservationID"].Direction = System.Data.ParameterDirection.Output;

                        cmd.ExecuteNonQuery();
                    }

                }
            }
        }
        public void Create_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                AddObservation();
                Response.Redirect("ReportDetails.aspx");
            }
        }
    }
}
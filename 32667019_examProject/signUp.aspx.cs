using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Data;

namespace _32667019_examProject
{
    public partial class signUp : System.Web.UI.Page
    {
        public static SqlConnection conn; //declare for connection
        public static SqlCommand comm; //declaration command
        public static SqlDataAdapter adapter;//declare for adapter
        public static SqlDataReader reader; //declare for rreader
        public static DataSet ds; //declare for data
        //declare for connection string
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\data\32667019_examProject\32667019_examProject\App_Data\personalDetails.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void load()
        {
        
         
        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connString);
            try
            {
                // Open connection
                conn.Open();

                // Define SQL query with parameters to prevent SQL injection
                string insertSql = $"INSERT INTO userTable (Name, Surname, Password, ContactNumber, EmailAddress, Allergies, EmergencyContact) VALUES ('{nameTextBox.Text}', '{surnameTextBox.Text}', '{passwordTextBox.Text}', {contactNoTextBox.Text}, '{emailAddressTextBox.Text}', '{allegiesTExtBox.Text}', {emergenciesContactTextBox.Text})";

                // Create SqlCommand object with parameters
                comm = new SqlCommand(insertSql, conn);
                // Execute the insert command
                int rowsAffected = comm.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Registration successful
                    Response.Redirect("brightonMedical.aspx");
                }
                else
                {
                    // Registration failed
                    errorLbl.Text = "Failed to register the user.";
                }
            }
            catch (SqlException error)
            {
                // Display an error message
                errorLbl.Text = error.Message;
            }
            finally
            {
                // Close the connection
                conn.Close();
            }
        }

    }
}
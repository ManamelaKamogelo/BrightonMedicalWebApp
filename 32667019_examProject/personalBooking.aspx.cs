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
    public partial class personalBooking : System.Web.UI.Page
    {
        public static SqlConnection conn; //declare for connection
        public static SqlCommand comm; //declaration command
        public static SqlDataAdapter adapter;//declare for adapter
        public static SqlDataReader reader; //declare for rreader
        public static DataSet ds; //declare for data
        //declare for connection string
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\data\32667019_examProject\32667019_examProject\App_Data\personalDetails.mdf;Integrated Security=True";
        //declare for second connectionString
        string connString2 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\data\32667019_examProject\32667019_examProject\App_Data\appointmentTable.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userEmail"] != null)
            {
                //displays in another page from logIn page
                userInforLbl.Text = "Welcome " + Session["userEmail"];
            }
        }

        protected void allegiesTExtBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connString);
            try
            {
                // Open connection
                conn.Open();
                //define SQL string update
                string updateSql = $"UPDATE userTable SET Name = '{nameTextBox.Text}', Surname = '{surnameTextBox.Text}', Password = '{passwordTextBox.Text}', ContactNumber = '{contactNoTextBox.Text}', Allergies = '{allegiesTExtBox.Text}', EmergencyContact = '{emergenciesContactTextBox.Text}' WHERE EmailAddress = '{emailAddressTextBox.Text}'";
                comm = new SqlCommand(updateSql, conn);
                // Execute the update command
                int rowsAffected = comm.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    // Display success message
                    messageLbl.Text = "Your details have been updated successfully.";
                }
                else
                {
                    // Display error message
                    errorLbl.Text = "Failed to update your details.";
                }

                // Close the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Display an error message
                errorLbl.Text = error.Message;
            }


        }

        protected void bookBtn_Click(object sender, EventArgs e)
        {

            DateTime date = Calendar1.SelectedDate;
            conn = new SqlConnection(connString2);
            try
            {
                // Open connection
                conn.Open();
                // define SQL query for insert
                string insertSql = $"INSERT INTO appointmentDetailTable (Appointment, Time, Date, AmbulenceService) VALUES ('{appointmentRd.SelectedItem.Text}', '{timeDropList.SelectedItem.Text}', '{date}', @AmbulenceService)";
                // create SqlCommand object
                comm = new SqlCommand(insertSql, conn);
                //using if-else statement for ambulance service
                if (ambulenceCb.Checked == true)
                {
                    //records in the dataBase if checked
                    comm.Parameters.AddWithValue("@AmbulenceService", "Yes");
                }
                else
                {
                    //records in the dataBase if it is not checked
                    comm.Parameters.AddWithValue("@AmbulenceService", "No");
                }

                // Execute the insert command
                int rowsAffected = comm.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // displays if the Booking successful
                    messageLbl.Text = "Successfully Booked";
                }
                else
                {
                    // displays if booking failed
                    errorLbl.Text = "Failed to book.";
                }
                // Close the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Display an error message
                errorLbl.Text = error.Message;
            }
        }
        protected void cancelBtn_Click(object sender, EventArgs e)
        {
           

            conn = new SqlConnection(connString2);
            try
            {
                // Open connection
                conn.Open();
                // Define SQL query with parameters to prevent SQL injection
                string deleteSql = $"DELETE FROM appointmentDetailTable WHERE Date = '{appointmentTxtBox.Text}'";
                // Create SqlCommand object with parameters
                comm = new SqlCommand(deleteSql, conn);
                // Execute the delete command
                int rowsAffected = comm.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Displays if successfull
                    messageLbl.Text = "Successfully deleted the appointment.";
                }
                else
                {
                    // displays message
                   errorLbl.Text = "Failed to delete the appointment.";
                }
                // Close the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Display an error message
                errorLbl.Text = error.Message;
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void requestBtn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connString2);
            try
            {
                // Open connection
                conn.Open();
                // Declare string for table
                string sql = $"SELECT * FROM appointmentDetailTable";
                // Create the command and execute reader
                comm = new SqlCommand(sql, conn);
                //reads from the dataSet
                reader = comm.ExecuteReader();
                // Check if the user wants an ambulance service
                if (ambulenceCb.Checked == true)
                {
                    //looping throught the dataSet
                    while (reader.Read())
                    {
                        //displays the data in the listbox
                        invoiceListBox.Items.Add("Appointment: " + reader.GetValue(0));
                        invoiceListBox.Items.Add("Time: " + reader.GetValue(1));
                        invoiceListBox.Items.Add("Date: " + reader.GetValue(2));
                        invoiceListBox.Items.Add("Invoice: R500");
                        invoiceListBox.Items.Add("-----------------------------------------------------------------------------------------------------------------------------");
                    }
                }
                 // Close the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Display an error message
                errorLbl.Text = error.Message;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connString2);
            try
            {
                //opens connection
                conn.Open();
                //declare string for table
                string sql = $"SELECT * FROM appointmentDetailTable";
                //command the data
                comm = new SqlCommand(sql, conn);

                //adapter declaration
                adapter = new SqlDataAdapter();
                //reads data in the 
                reader = comm.ExecuteReader();
                //prints in the listbox
                appointmentViewListBox.Items.Add("\nUPCOMING APPOINTMENTS");
                appointmentViewListBox.Items.Add("-----------------------------------------------------------------------------------------------------------------------------");

                //looping through the dataSet
                while (reader.Read())
                {
                    //displays the data in listbox
                    appointmentViewListBox.Items.Add(" Appointment: " + reader.GetValue(0));
                    appointmentViewListBox.Items.Add(" Time: " + reader.GetValue(1));
                    appointmentViewListBox.Items.Add(" Date: " + reader.GetValue(2));
                    appointmentViewListBox.Items.Add("-----------------------------------------------------------------------------------------------------------------------------");
                }
                    //closes connection
                    conn.Close();
            }
            catch (SqlException error)
            {
                //displays an error message
                errorLbl.Text = error.Message;
            }
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            //return to the logIn Page
            Response.Redirect("brightonMedical.aspx");
        }

        protected void updateAppointment_Click(object sender, EventArgs e)
        {
          
            conn = new SqlConnection(connString2);
            try
            {
                // Open connection
                conn.Open();
                //define SQL string update
                string updateSql = $"UPDATE appointmentDetailTable SET Time = '{timeTextBox.Text}', Date = '{dateTextBox.Text}' WHERE Appointment = '{appointmentRd.SelectedItem.Text}'";
                
                comm = new SqlCommand(updateSql, conn);
                
                // Execute the update command
                int rowsAffected = comm.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    // Display success message
                    messageLbl.Text = "Your Appointment has Been Updated.";
                }
                else
                {
                    // Display error message
                    errorLbl.Text = "Failed to update your Appointment.";
                }

                // Close the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Display an error message
                errorLbl.Text = error.Message;
            }
        }
    }
}
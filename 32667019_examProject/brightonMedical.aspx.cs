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
    public partial class brightonMediccal : System.Web.UI.Page
    {
        //declare for cookies
        //HttpCookie cookie = new HttpCookie();

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

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connString);
            try
            {
                // Open connection
                conn.Open();

                // Define SQL query with parameters to prevent SQL injection
                string sql = $"SELECT * FROM userTable WHERE EmailAddress = '{emailTextBox.Text}' AND Password = '{passwordTextBox.Text}'";

                // Create SqlCommand object with parameters
                comm = new SqlCommand(sql, conn);
                // Create SqlDataReader object to read the result
                reader = comm.ExecuteReader();
                if (reader.Read())
                {
                    // Login successful
                    // Create and set the user cookie
                    HttpCookie user = new HttpCookie("userInfor");
                    Session["userEmail"] = emailTextBox.Text;
                    Session["userPassword"] = passwordTextBox.Text;
                    Response.Cookies.Add(user);

                    // Redirect to the desired page
                    Response.Redirect("personalBooking.aspx");
                }
                else
                {
                    // Login failed
                    errorLbl.Text = "Invalid email or password.";
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
        protected void fogortPasswordLinBtn_Click(object sender, EventArgs e)
        {
            //directs forgot password web
            Response.Redirect("forgotPassword.aspx");
        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            //directs to sign Up page
            Response.Redirect("signUp.aspx");
        }
    }
}
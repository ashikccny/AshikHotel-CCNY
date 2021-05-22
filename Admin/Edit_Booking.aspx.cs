using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Edit_Booking : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null)
            {
                int idn = Int32.Parse(Request.QueryString["id"].ToString());
                var data = db.Bookings.Where(d=> d.Booking_ID==idn).FirstOrDefault();
                data.Booking_Status = false;
                db.SaveChanges();
                //get email address
                var emaildata = data.User_Login.User_Email;
                //email coding
                sendmail(emaildata);
                    Response.Redirect("List_Booking.aspx");

         
                    
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        private void sendmail(string toaddress)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

            mail.To.Add(toaddress);
            mail.From = new System.Net.Mail.MailAddress("hotelashik50@gmail.com", "Admin", System.Text.Encoding.UTF8);
            mail.Subject = "Cancel Booking";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Your booking is canceled successfully. Please wait 3 to 5 business days to get your money back";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = System.Net.Mail.MailPriority.High;

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("hotelashik50@gmail.com", "Bhuiyan071");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            
            client.Send(mail);
            ClientScript.RegisterStartupScript(GetType(),"message","alert('error')",true);

            //try
            //{
            //    client.Send(mail);
            //    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
            //}
            //catch (Exception)
            //{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "erroralert();", true);

            //}



        }

        

    }
}
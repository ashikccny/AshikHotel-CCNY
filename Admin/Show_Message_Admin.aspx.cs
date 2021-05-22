using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Show_Message_Admin : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null)
            {
                int mid = Int32.Parse(Request.QueryString["id"].ToString());
                var data = db.Messages.Select(d => new { d.Hotel.Hotel_Name, d.Sender_Name, d.Sender_Email, d.Sender_Phone, d.Send_Date, d.Sender_Message, d.Message_ID }).Where(t => t.Message_ID == mid).FirstOrDefault();

                txtName.Text = data.Hotel_Name;
                txtSenderName.Text = data.Sender_Name;
                txtEmail.Text = data.Sender_Email;
                txtPhone.Text = data.Sender_Phone;
                txtDate.Text = DateTime.Parse( data.Send_Date.ToString()).ToShortDateString();
                txtMessage.Text = data.Sender_Message;
            }
            else
            {
                Response.Redirect("Show_Quarry_Admin.aspx");
            }


        }

        protected void bntSubmit_Click(object sender, EventArgs e)
        {
            int mid = Int32.Parse(Request.QueryString["id"].ToString());
            var data = db.Messages.Where(t => t.Message_ID == mid).FirstOrDefault();

            db.Messages.Remove(data);
            db.SaveChanges();
            txtName.Text = "";
            txtSenderName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtDate.Text = "";
            txtMessage.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
            // Response.Redirect("Show_Quarry_Admin.aspx");
           
        }
    }
}
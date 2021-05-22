using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class Send_Quarry : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["HotelID"]!=null)
            {
                int HotelID = Int32.Parse(Session["HotelID"].ToString());
                var data = db.Hotels.Where(d=> d.Hotel_ID== HotelID).FirstOrDefault();
                txtHotel.Text = data.Hotel_Name;
                

            }
            else
            {
                Response.Redirect("~/Display_Hotel.aspx");
            }
        }

        protected void bntSubmit_Click(object sender, EventArgs e)
        {
            Message mess = new Message();
            mess.Hotel_ID = Int32.Parse(Session["HotelID"].ToString());
            mess.Sender_Name = txtSender.Text;
            mess.Sender_Email = txtEmail.Text;
            mess.Sender_Phone = txtPhone.Text;
            mess.Send_Date = DateTime.Now;
            mess.Sender_Message = txtMessage.Text;

            db.Messages.Add(mess);
            db.SaveChanges();

            Response.Redirect("~/Display_Hotel.aspx");
        }
    }
}
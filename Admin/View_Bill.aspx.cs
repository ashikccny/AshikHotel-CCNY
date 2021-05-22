using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class View_Bill : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!= null)
            {
                int ID = Int32.Parse(Request.QueryString["id"].ToString());
                var data = db.Bills.Where(d=> d.Bill_ID==ID).FirstOrDefault();

                // get booking informations
                lblBookingID.Text = data.Booking_ID.ToString();
                lblHotelName.Text = data.Hotel_Name;
                lblHotelAddress.Text = data.Address_Hotel;
                lblPhone.Text = data.Phone;
                lblClientName.Text = data.User_Name;
                lblCheckIN.Text = data.Check_in_Date.Value.ToShortDateString();
                lblCheckOut.Text = data.Check_out_Date.Value.ToShortDateString();
                lblNumOfRooms.Text = data.Number_of_Rooms.ToString();
                lblRoomType.Text = data.Room_Type;
                lblTotalPrice.Text = data.Total_Price.ToString();
                lblTotalDays.Text = data.Total_Days.ToString();



            }
            else
            {
                Response.Redirect("~/LogIn_Page.aspx");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class Create_Bill : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Hotel_ID"] != null || Session["User_ID"] != null)
                {
                    // Booking 
                    lblBookingID.Text = Session["Booking_ID"].ToString();
                    //get hotel information

                    int Hid    = Int32.Parse(Session["Hotel_ID"].ToString());
                    var hInfo = db.Hotels.Where(d=> d.Hotel_ID==Hid).FirstOrDefault();
                    lblHotelName.Text = hInfo.Hotel_Name;
                    lblHotelAddress.Text = hInfo.Address_Hotel;
                    lblPhone.Text = hInfo.Phone;

                    // get user information 

                    int Uid = Int32.Parse(Session["User_ID"].ToString());
                    var Uinfo = db.User_Login.Where(d=> d.User_ID==Uid).FirstOrDefault();
                    lblClientName.Text = Uinfo.User_Name;

                    // get booking information

                    int BKid = Int32.Parse(Session["Booking_ID"].ToString());
                    var BKinfo = db.Bookings.Where(d=> d.Booking_ID==BKid).FirstOrDefault();

                    lblCheckIN.Text = BKinfo.Check_in_Date.Value.ToShortDateString();
                    lblCheckOut.Text = BKinfo.Check_out_Date.Value.ToShortDateString();
                    lblNumOfRooms.Text = BKinfo.Number_of_Rooms.ToString();
                    lblRoomType.Text = BKinfo.Room_Type.ToString();
                    lblTotalPrice.Text = BKinfo.Total_Price.ToString();
                    lblTotalDays.Text = Session["t_days"].ToString();
                    //Session["t_price"].ToString();

                    // save data to Bill table

                    Bill bill = new Bill();
                    bill.Hotel_ID = Hid;
                    bill.User_ID = Uid;
                    bill.Booking_ID = BKid;
                    bill.Hotel_Name = lblHotelName.Text;
                    bill.Address_Hotel = lblHotelAddress.Text;
                    bill.Phone = lblPhone.Text;
                    bill.User_Name = lblClientName.Text;
                    bill.Check_in_Date = DateTime.Parse(lblCheckIN.Text);
                    bill.Check_out_Date = DateTime.Parse(lblCheckOut.Text);
                    bill.Number_of_Rooms = Int32.Parse(lblNumOfRooms.Text);
                    bill.Room_Type = lblRoomType.Text;
                    bill.Total_Price = decimal.Parse(lblTotalPrice.Text);
                    bill.Total_Days = Int32.Parse(lblTotalDays.Text);
                    bill.Total_Points = 1;

                    db.Bills.Add(bill);
                    db.SaveChanges();


                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
        }
    }
}
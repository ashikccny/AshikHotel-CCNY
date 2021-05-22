using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class List_Booking : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            gvBooking.Visible = true;
            Loaddata();

        }

        private void Loaddata()
        {
            //var data = db.Bookings.Select(d => new { d.Booking_ID, User_Name = d.User_Login.User_Name, Hotel_Name = d.Hotel.Hotel_Name, d.Total_Price, d.Booking_Status }).ToList();
            var data = db.Bookings.Select(d => new { d.Booking_ID, User_Name = d.User_Login.User_Name, Hotel_Name = d.Hotel.Hotel_Name, d.Total_Price, d.Booking_Status }).Where(t => t.Booking_Status == true).ToList();
            gvBooking.DataSource = data;
            gvBooking.DataBind();
        }


        protected void gvBooking_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBooking.PageIndex = e.NewPageIndex;
            Loaddata();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            gvBooking.Visible = true;
            Loaddata();
        }

        protected void btnCancelBooking_Click(object sender, EventArgs e)
        {
            var data = db.Bookings.Select(d => new { d.Booking_ID, User_Name = d.User_Login.User_Name, Hotel_Name = d.Hotel.Hotel_Name, d.Total_Price, d.Booking_Status }).Where(t=> t.Booking_Status==false).ToList();

            GridView1.Visible = true;
            gvBooking.Visible = false;
            GridView1.DataSource = data;
            GridView1.DataBind();

            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            var data = db.Bookings.Select(d => new { d.Booking_ID, User_Name = d.User_Login.User_Name, Hotel_Name = d.Hotel.Hotel_Name, d.Total_Price, d.Booking_Status }).Where(t => t.Booking_Status == false).ToList();

            GridView1.Visible = true;
            gvBooking.Visible = false;
            GridView1.DataSource = data;
            GridView1.DataBind();

        }
    }
}
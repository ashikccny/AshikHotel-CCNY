using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Delete_Hotel_Room : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var hotelRoomData = db.Hotel_Room.Where(d => d.Hotel_Room_ID == idn).FirstOrDefault();

               txtID.Text = hotelRoomData.Hotel_Room_ID.ToString();

            }
            else
            {
                Response.Redirect("List_Hotel_Room.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var hotelRoomData = db.Hotel_Room.Where(d => d.Hotel_Room_ID == idn).FirstOrDefault();
                db.Hotel_Room.Remove(hotelRoomData);
                db.SaveChanges();
                txtID.Text = "";
                SuccessMessage.Text = "Data Deleted Successfully";
                Response.Redirect("List_Hotel_Room.aspx");
            }
            catch (Exception)
            {
                ErrorMessage.Text = " Data can not be Deleted";

            }
        }
    }
}
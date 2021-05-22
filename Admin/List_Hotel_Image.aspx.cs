using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
   
    public partial class List_Hotel_Image : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var hotelimgdata = db.Hotel_Image.Select(d => new {
                d.Image_ID,
                hotelname=d.Hotel.Hotel_Name,
                d.Image_URL
            }).ToList();
            GridView1.DataSource = hotelimgdata;
            GridView1.DataBind();
        }
    }
}
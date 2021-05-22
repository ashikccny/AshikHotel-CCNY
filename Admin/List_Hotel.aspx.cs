using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    
    public partial class List_Hotel : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();         
        protected void Page_Load(object sender, EventArgs e)
        {
            var hoteldata = db.Hotels.Select(d=> new {d.Hotel_ID, d.Hotel_Name, d.Address_Hotel,
                d.State, d.Phone, d.Hotel_Descerption, d.Email, d.City_ID }).ToList();
            GridView1.DataSource = hoteldata;
            GridView1.DataBind();
        }
    }
}
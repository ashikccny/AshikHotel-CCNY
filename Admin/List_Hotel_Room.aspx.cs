using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class List_Hotel_Room : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.Hotel_Room.Select(d=> new {d.Hotel_Room_ID, HName = d.Hotel.Hotel_Name, d.No_of_room,d.Room_Price, RoomType= d.RoomType.RoomType_Name }).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();

        }
    }
}
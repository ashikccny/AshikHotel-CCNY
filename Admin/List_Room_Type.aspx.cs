using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class List_Room_Type : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listroomdata = db.RoomTypes.Select(d => new { d.RoomType_ID, d.RoomType_Name }).ToList();
            GridView1.DataSource = listroomdata;
            GridView1.DataBind();
        }
    }
}
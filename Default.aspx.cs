using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    
    public partial class _Default : Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.Hotel_Room.Select(d=> new { d.RoomType, d.Room_Price, d.RoomType.RoomType_Name, d.Hotel.Hotel_Name, d.Hotel.Image_URL, d.Hotel.City.City_Name } ).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var data = db.Hotel_Room.Select(d => new { d.RoomType, d.Room_Price, d.RoomType.RoomType_Name, d.Hotel.Hotel_Name, d.Hotel.Image_URL, d.Hotel.City.City_Name })
            .Where(t=> t.Hotel_Name.Contains(txtSearch.Text)||(t.City_Name.Contains(txtSearch.Text)) || (t.RoomType_Name.Contains(txtSearch.Text))).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            var data = db.Hotel_Room.Select(d => new { d.RoomType, d.Room_Price, d.RoomType.RoomType_Name, d.Hotel.Hotel_Name, d.Hotel.Image_URL, d.Hotel.City.City_Name }).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}
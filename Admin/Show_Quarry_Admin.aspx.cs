using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Show_Quarry_Admin : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.Messages.Select(d=> new {d.Hotel.Hotel_Name,d.Sender_Name, d.Sender_Email, d.Send_Date, d.Message_ID }).OrderByDescending(d=> d.Send_Date).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();
            
        }
    }
}
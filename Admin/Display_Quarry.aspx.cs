using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Display_Quarry : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var data = db.Messages.Select(d=> new {d.Message_ID, d.Sender_Name, d.Sender_Email, d.Sender_Phone, d.Send_Date, d.Sender_Message, d.Hotel.Hotel_Name }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }
    }
}
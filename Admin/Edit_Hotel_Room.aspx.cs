using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Edit_Hotel_Room : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // populate dropdown list data
                var hotelData = db.Hotels.ToList();
                drpHotel.DataSource = hotelData;
                drpHotel.DataTextField = "Hotel_Name";
                drpHotel.DataValueField = "Hotel_ID";
                drpHotel.DataBind();

                var RoomTypeData = db.RoomTypes.ToList();
                drpRoomType.DataSource = RoomTypeData;
                drpRoomType.DataTextField = "RoomType_Name";
                drpRoomType.DataValueField = "RoomType_ID";
                drpRoomType.DataBind();

                if (Request.QueryString["id"]!=null)
                {
                    int idn = Int32.Parse(Request.QueryString["id"]);
                    var data = db.Hotel_Room.Where(d=> d.Hotel_Room_ID==idn).FirstOrDefault();

                    drpHotel.SelectedValue = data.Hotel_ID.ToString();
                    txtRoomNumber.Text = data.No_of_room.ToString();
                    txtPrice.Text = decimal.Parse(data.Room_Price.ToString()).ToString("$###.00");
                    drpRoomType.SelectedValue = data.RoomType_ID.ToString();
                
                }
                else
                {
                    Response.Redirect("List_Hotel_Room");
                }
            }
        }

        protected void bntSubmit_Click(object sender, EventArgs e)
        {
            int idn = Int32.Parse(Request.QueryString["id"]);
            var hr = db.Hotel_Room.Where(d => d.Hotel_Room_ID == idn).FirstOrDefault();

            hr.Hotel_ID = Int32.Parse(drpHotel.SelectedValue.ToString());
            hr.No_of_room = Int32.Parse(txtRoomNumber.Text);
            if (txtPrice.Text.Substring(0,1)=="$")
            {
                hr.Room_Price = decimal.Parse(txtPrice.Text.Substring(1));
            }
            else
            {
                hr.Room_Price = decimal.Parse(txtPrice.Text);
            }
            
            hr.RoomType_ID = Int32.Parse(drpRoomType.SelectedValue.ToString());

            db.SaveChanges();
            //Msg.Text = "Data Inserted Successfully";
            ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);

        }
    }
}
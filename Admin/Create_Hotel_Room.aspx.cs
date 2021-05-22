using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Create_Hotel_Room : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // get hotel informtion 
                var hotelData = db.Hotels.ToList();
                drpHotel.DataSource = hotelData;
                drpHotel.DataTextField = "Hotel_Name";
                drpHotel.DataValueField = "Hotel_ID";
                drpHotel.DataBind();

                //get room type information
                var RoomTypeData = db.RoomTypes.ToList();
                drpRoomType.DataSource = RoomTypeData;
                drpRoomType.DataTextField = "RoomType_Name";
                drpRoomType.DataValueField = "RoomType_ID";
                drpRoomType.DataBind(); 
            }

        }

        protected void bntSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Hotel_Room hr = new Hotel_Room();
                hr.Hotel_ID = Int32.Parse(drpHotel.SelectedValue.ToString());
                hr.No_of_room = Int32.Parse(txtRoomNumber.Text);
                //hr.Room_Price= Decimal.Parse(txtPrice.Text);
                if (txtPrice.Text.Substring(0, 1) == "$")
                {
                    hr.Room_Price = decimal.Parse(txtPrice.Text.Substring(1));
                }
                else
                {
                    hr.Room_Price = decimal.Parse(txtPrice.Text);
                }
                hr.RoomType_ID = Int32.Parse(drpRoomType.SelectedValue.ToString());
                db.Hotel_Room.Add(hr);
                db.SaveChanges();
                //Msg.Text = "Data Inserted Successfully";
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);

            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "erroralert();", true);

            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class Booking_Page : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Hotel_ID"] != null || Session["User_ID"] != null)
                {
                    txtHotelID.Text = Session["Hotel_ID"].ToString();
                    txtUserID.Text = Session["User_ID"].ToString();
                    int id = Int32.Parse(txtHotelID.Text);
                    var roomData = db.Hotel_Room.Select(t => new { t.RoomType.RoomType_Name, t.Room_Price, t.Hotel_ID }).Where(d => d.Hotel_ID == id).ToList();
                    drpRoomType.DataSource = roomData;
                    drpRoomType.DataTextField = "RoomType_Name";
                    drpRoomType.DataValueField = "Room_Price";
                    drpRoomType.DataBind();
                    //txtPrice.Text = decimal.Parse(roomData.Room_Price.ToString()).ToString("###.00");
                    //show points
                    int UserID = Int32.Parse(Session["User_ID"].ToString());
                    var bpoint = db.Bills.Where(d=> d.User_ID== UserID).Sum(b=> b.Total_Points);
                    if (bpoint != null)
                    {
                        lblPoint.Text = bpoint.ToString();
                    }
                    else
                    {
                        lblPoint.Text = "0";
                    }
                    

                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            
        }


        protected void btnBooking_Click(object sender, EventArgs e)
        {
            Booking bk = new Booking();
            bk.Check_in_Date = DateTime.Parse(txtCheckIN.Text);
            bk.Check_out_Date = DateTime.Parse(txtCheckOUT.Text);
            // Calculate date difference
            string diff = (bk.Check_out_Date - bk.Check_in_Date).Value.TotalDays.ToString();
            Session["t_days"] = diff;

            bk.Number_of_Rooms = Int32.Parse(txtRoomNo.Text);
            bk.Adults = Int32.Parse(txtAdults.Text);
            bk.Childrens = Int32.Parse(txtChildren.Text);
            bk.Room_Type = drpRoomType.SelectedItem.ToString();

            txtPrice.Text = decimal.Parse(drpRoomType.SelectedValue.ToString()).ToString("###.00");
            var calculate = bk.Number_of_Rooms * decimal.Parse(txtPrice.Text)* Int32.Parse(diff);

            if (Int32.Parse(lblPoint.Text)>=5)
            {
                calculate = 0;
                int uidn = Int32.Parse(Session["User_ID"].ToString());

                var pointData = db.Bills.Where(d=> d.User_ID==uidn).ToList();
                foreach (var item in pointData)
                {
                    item.Total_Points = 0;
                    db.SaveChanges();
                }
            }
            bk.Total_Price = calculate;
            Session["t_price"] = calculate;
            bk.Hotel_ID = Int32.Parse(txtHotelID.Text);
            bk.User_ID = Int32.Parse(txtUserID.Text);
            bk.Booking_Status = true;
            lblAmount.Text = calculate.ToString();

            db.Bookings.Add(bk);
            db.SaveChanges();

            Session["Booking_ID"] = bk.Booking_ID;
            ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);

            if (calculate==0)
            {
                Response.Redirect("Create_Bill.aspx");
            }
        }

        protected void drpRoomType_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPrice.Text = decimal.Parse(drpRoomType.SelectedValue.ToString()).ToString("###.00");

        }
    }
}
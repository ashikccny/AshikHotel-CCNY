using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class Display_Hotel : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Hotel_ID"]!=null)
                {
                    int hotelID = Convert.ToInt32(Session["Hotel_ID"].ToString());
                    var data = db.Hotels.Where(d=> d.Hotel_ID == hotelID).ToList();
                    gv.DataSource = data;
                    gv.DataBind();

                    

                }
                else
                {
                    Response.Redirect("~/List_All_Hotels.aspx");
                }
            }
        }

        protected void gvRooms_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int hoteID = Int32.Parse(gv.DataKeys[e.Row.RowIndex].Value.ToString());
                var hoteldata = db.Hotels.Where(d => d.Hotel_ID == hoteID).ToList();


                //get room information

                var roomdata = db.Hotel_Room.Select(d => new {d.Hotel_ID, d.RoomType.RoomType_Name, d.No_of_room, d.Room_Price }).Where(t=> t.Hotel_ID==hoteID).ToList();
                DataList inner = (DataList)e.Row.FindControl("lstRooms");
                inner.DataSource = roomdata;
                inner.DataBind();
                //Show room Images

                var imagedata = db.Hotel_Image.Where(d => d.Hotel_ID == hoteID).ToList();
                DataList innerimage = (DataList)e.Row.FindControl("lstImage");
                innerimage.DataSource = imagedata;
                innerimage.DataBind();

            }
        }

        protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Message")
            {
                int hotelID = Int32.Parse(e.CommandArgument.ToString());
                Session["HotelID"] = hotelID;

                Response.Redirect("~/Send_Quarry.aspx");
            }


            if (e.CommandName == "Booking")
            {
                int hotelID = Int32.Parse(e.CommandArgument.ToString());
                Session["HotelID"] = hotelID;

                Response.Redirect("~/Booking_Page.aspx");
            }
        }

       
    }
}
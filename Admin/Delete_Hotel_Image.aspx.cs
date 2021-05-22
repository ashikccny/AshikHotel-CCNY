using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Delete_Hotel_Image : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var hotelImgData = db.Hotel_Image.Where(d => d.Image_ID== idn).FirstOrDefault();
                Image1.ImageUrl = "~/Hotel_Image/" + hotelImgData.Image_URL;
                txtName.Text = hotelImgData.Image_URL;

            }
            else
            {
                Response.Redirect("List_Hotel_Image.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Int32.Parse(Request.QueryString["id"]);
                var data = db.Hotel_Image.Where(d => d.Image_ID == id).FirstOrDefault();
                db.Hotel_Image.Remove(data);
                db.SaveChanges();
                txtName.Text = "";
                Image1.ImageUrl = "";
                SuccessMessage.Text = "Image Deleted Successfully";
                Response.Redirect("List_Hotel_Image.aspx");
            }
            catch (Exception)
            {
                ErrorMessage.Text = " Image can not be Deleted";

            }
        }
    }
}
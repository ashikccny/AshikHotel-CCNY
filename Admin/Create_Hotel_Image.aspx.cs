using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Create_Hotel_Image : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var hoteldata = db.Hotels.ToList(); //get data from City table to citidata variable
            DropDownList1.DataSource = hoteldata;
            DropDownList1.DataTextField = "Hotel_Name";
            DropDownList1.DataValueField = "Hotel_ID";
            DropDownList1.DataBind();
        }

        protected void bntSubmit_Click(object sender, EventArgs e)
        {
            Hotel_Image htimg = new Hotel_Image();
           
            htimg.Hotel_ID = Int32.Parse(DropDownList1.SelectedValue.ToString());
            
            if (fileUpload1.HasFile)
            {
                fileUpload1.SaveAs(Server.MapPath("~/Hotel_Image/" + fileUpload1.FileName));
                htimg.Image_URL = fileUpload1.FileName;
            }

            else
            {
                htimg.Image_URL = "Avater.jpg";
            }


            db.Hotel_Image.Add(htimg);
            db.SaveChanges();
            Msg.Text = "Image Inserted Successfully";
        }
    }
}
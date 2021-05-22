using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Edit_Hotel_Image : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // populate hotel information 
            if (!IsPostBack) //IsPoseBack means dont click on Submit Buttan
            {
                var Hoteldata = db.Hotels.ToList(); //get data from City table to citidata variable
                drpHotel.DataSource = Hoteldata;
                drpHotel.DataTextField = "Hotel_Name";
                drpHotel.DataValueField = "Hotel_ID";
                drpHotel.DataBind();

                if (Request.QueryString["id"] != null)
                {
                    int id = Int32.Parse(Request.QueryString["id"]);
                    var data = db.Hotel_Image.Where(d => d.Image_ID == id).FirstOrDefault();

                    drpHotel.SelectedValue = data.Hotel_ID.ToString();
                    Image1.ImageUrl = "../Hotel_Image/" + data.Image_URL;
                    txtImage.Text = data.Image_URL;
                }
                else
                {
                    Response.Redirect("List_Hotel_Image.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
                int id = Int32.Parse(Request.QueryString["id"]);
                var data = db.Hotel_Image.Where(d => d.Image_ID == id).FirstOrDefault();

                if (data != null)
                {
                    
                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Hotel_Image/" + FileUpload1.FileName));
                        data.Image_URL = FileUpload1.FileName;
                        txtImage.Text = data.Image_URL;
                    }
                    else
                    {
                        data.Image_URL = txtImage.Text;
                    }


                    db.SaveChanges();

                    Image1.ImageUrl = "../Hotel_Image/" + data.Image_URL;
                    Msg.Text = "Image Updated Successfully";
                }
            
        }
    }
}
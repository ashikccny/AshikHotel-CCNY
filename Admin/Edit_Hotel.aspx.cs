using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Edit_Hotel : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //fill Combobox
            if (!IsPostBack) //IsPoseBack means dont click on Submit Buttan
            {
                var citydata = db.Cities.ToList(); //get data from City table to citidata variable
                drpCity.DataSource = citydata;
                drpCity.DataTextField = "City_Name";
                drpCity.DataValueField = "City_ID";
                drpCity.DataBind();

                if (Request.QueryString["id"]!=null)
                {
                    int id = Int32.Parse(Request.QueryString["id"]);
                    var data = db.Hotels.Where(d=> d.Hotel_ID==id).FirstOrDefault();
                    txtName.Text = data.Hotel_Name;
                    txtAddress.Text = data.Address_Hotel;
                    txtState.Text = data.State;
                    txtPhone.Text = data.Phone;
                    txtDescription.Text = data.Hotel_Descerption;
                    txtemail.Text = data.Email;
                    drpCity.SelectedValue = data.City_ID.ToString();
                    Image1.ImageUrl = "../Hotel_Image/"+ data.Image_URL;
                    txtImage.Text = data.Image_URL;
                }
                else
                {
                    Response.Redirect("List_Hotel.aspx");
                }
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.QueryString["id"]);
            var data = db.Hotels.Where(d=> d.Hotel_ID==id).FirstOrDefault();

            if (data!=null)
            {
                data.Hotel_Name = txtName.Text;
                data.Address_Hotel = txtAddress.Text;
                data.State = txtState.Text;
                data.Phone = txtPhone.Text;
                data.Hotel_Descerption = txtDescription.Text;
                data.Email = txtemail.Text;
                data.City_ID = Int32.Parse(drpCity.SelectedValue.ToString());
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
                Msg.Text = "Data Updated Successfully";
            }
        }
    }
}
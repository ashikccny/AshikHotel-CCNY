using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Create_Hotel : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var citydata = db.Cities.ToList(); //get data from City table to citidata variable
            DropDownList1.DataSource = citydata;
            DropDownList1.DataTextField = "City_Name";
            DropDownList1.DataValueField = "City_ID";
            DropDownList1.DataBind();
        }

        protected void bntSubmit_Click(object sender, EventArgs e)
        {
            Hotel ht = new Hotel();
            ht.Hotel_Name = txtName.Text;
            ht.City_ID = Int32.Parse(DropDownList1.SelectedValue.ToString());
            ht.Address_Hotel = txtAddress.Text;
            ht.State = txtState.Text;
            ht.Phone = txtPhone.Text;
            ht.Hotel_Descerption = txtHotelDes.Text;
            ht.Email = txtEmail.Text;
            if (fileUpload1.HasFile)
            {
                fileUpload1.SaveAs(Server.MapPath("~/Hotel_Image/" + fileUpload1.FileName));
                ht.Image_URL = fileUpload1.FileName;
            }

            else
            {
                ht.Image_URL = "Avater.jpg";
            }


            db.Hotels.Add(ht);
            db.SaveChanges();
            //Msg.Text = "Data Inserted Successfully";
            ScriptManager.RegisterStartupScript(this,GetType(),"popup", "successalert();", true);


        }
    }
}
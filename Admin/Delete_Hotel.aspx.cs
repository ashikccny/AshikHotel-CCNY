using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Delete_Hotel : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] !=null)
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var hotelData = db.Hotels.Where(d=> d.Hotel_ID==idn).FirstOrDefault();

                txtName.Text = hotelData.Hotel_Name;

            }
            else
            {
                Response.Redirect("List_Hotel.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Int32.Parse(Request.QueryString["id"]);
                var data = db.Hotels.Where(d=> d.Hotel_ID==id).FirstOrDefault();
                db.Hotels.Remove(data);
                db.SaveChanges();
                txtName.Text = "";
                SuccessMessage.Text = "Data Deleted Successfully";
                Response.Redirect("List_Hotel.aspx");
            }
            catch (Exception)
            {
                ErrorMessage.Text = " Data can not be Deleted";
                
            }
        }
    }
}
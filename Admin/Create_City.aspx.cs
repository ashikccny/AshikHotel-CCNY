using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Create_City : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            City ct = new City();
            ct.City_Name = txtName.Text;
            db.Cities.Add(ct);
            db.SaveChanges();

            SuccessMessage.Text = "City Added Successfully";
            
        }
    }
}
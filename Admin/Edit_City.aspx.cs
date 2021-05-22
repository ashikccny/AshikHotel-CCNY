using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Edit_City : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"]!=null)
                {
                    int idn = Int32.Parse(Request.QueryString["id"]);
                    var data = db.Cities.Where(d=> d.City_ID==idn).FirstOrDefault();
                    txtName.Text = data.City_Name;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int idn = Int32.Parse(Request.QueryString["id"]);
            var data = db.Cities.Where(d => d.City_ID == idn).FirstOrDefault();

            data.City_Name = txtName.Text;
            db.SaveChanges();
            SuccessMessage.Text = "Edited Successfully";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class List_Bill : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserInfo.UserRole!= "Admin")
            {
                Response.Redirect("~/LogIn_Page.aspx");
            }

            var billdata = db.Bills.ToList();
            GridView1.DataSource = billdata;
            GridView1.DataBind();


        }
    }
}
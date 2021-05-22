using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class List_City : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserInfo.UserRole !="Admin")
            {
                Response.Redirect("~/LogIn_Page.aspx");
            }
            var citydata = db.Cities.Select(d=> new {d.City_ID, d.City_Name}).ToList();
            GridView1.DataSource = citydata;
            GridView1.DataBind();
        }
    }
}
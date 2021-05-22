using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Delete_City : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int idn = Int32.Parse(Request.QueryString["id"]);
                    var data = db.Cities.Where(d => d.City_ID == idn).FirstOrDefault();
                    txtName.Text = data.City_Name;
                }
                else
                {
                    Response.Redirect("List_City.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var data = db.Cities.Where(d => d.City_ID == idn).FirstOrDefault();
                db.Cities.Remove(data);
                db.SaveChanges();
                txtName.Text = "";
                SuccessMessage.Text = "Deleted Successfully";
                Response.Redirect("List_City.aspx");
            }
            catch (Exception)
            {
                ErrorMessage.Text = "Can not Delete this City because under this city lots of hotels have been assigned";
               
            }
            

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Edit_Room_Type : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // populate hotel information 
            if (!IsPostBack) //IsPoseBack means dont click on Submit Buttan
            {
                var Hoteldata = db.Hotels.ToList(); //get data from City table to citidata variable
                

                if (Request.QueryString["id"] != null)
                {
                    int id = Int32.Parse(Request.QueryString["id"]);
                    var data = db.RoomTypes.Where(d => d.RoomType_ID== id).FirstOrDefault();    
                    txtName.Text = data.RoomType_Name;
                }
                else
                {
                    Response.Redirect("List_Room_Type.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            int id = Int32.Parse(Request.QueryString["id"]);
            var data = db.RoomTypes.Where(d => d.RoomType_ID == id).FirstOrDefault();

            data.RoomType_Name = txtName.Text;
            db.SaveChanges();
            ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);

        }

        }
}

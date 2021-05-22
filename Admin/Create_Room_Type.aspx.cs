using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Create_Room_Type : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            RoomType rtype = new RoomType();
            rtype.RoomType_Name = txtName.Text;

            db.RoomTypes.Add(rtype);
            db.SaveChanges();
            ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
        }
    }
}
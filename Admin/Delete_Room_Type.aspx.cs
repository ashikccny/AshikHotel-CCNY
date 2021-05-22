using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation.Admin
{
    public partial class Delete_Room_Type : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var RoomTypeData = db.RoomTypes.Where(d => d.RoomType_ID == idn).FirstOrDefault();

                txtName.Text = RoomTypeData.RoomType_Name;

            }
            else
            {
                Response.Redirect("List_Room_Type.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int idn = Int32.Parse(Request.QueryString["id"]);
                var RoomTypeData = db.RoomTypes.Where(d => d.RoomType_ID == idn).FirstOrDefault();

                db.RoomTypes.Remove(RoomTypeData);
                db.SaveChanges();
                txtName.Text = "";
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
                Response.Redirect("List_Room_Type.aspx");
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "erroralert();", true);

            }
        }
    }
}
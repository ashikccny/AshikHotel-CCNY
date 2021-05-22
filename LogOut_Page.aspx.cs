using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class LogOut_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo.UserName = "";
            UserInfo.UserEmail = "";
            UserInfo.UserRole = "";
            UserInfo.IsAuthenticated = false;

            //ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
            Response.Redirect("~/Default.aspx");
        }
    }
}
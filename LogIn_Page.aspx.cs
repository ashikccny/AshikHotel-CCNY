using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class LogIn__Page : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {
            var data = db.User_Login.Where(d=> d.User_Email==Email.Text && d.User_Password==Password.Text).FirstOrDefault();

            if (data != null)
            {


                if (data.User_Role == "Admin")
                {

                    UserInfo.UserName = data.User_Name;
                    UserInfo.UserEmail = data.User_Email;
                    UserInfo.UserRole = data.User_Role;
                    UserInfo.IsAuthenticated = true;
                    Session["User_ID"] = data.User_ID;
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
                    Response.Redirect("~/Admin/Default.aspx");
                }
                else if (data.User_Role == "User")
                {

                    UserInfo.UserName = data.User_Name;
                    UserInfo.UserEmail = data.User_Email;
                    UserInfo.UserRole = data.User_Role;
                    UserInfo.IsAuthenticated = true;
                    Session["User_ID"] = data.User_ID;
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
                    Response.Redirect("~/List_All_Hotels.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "invalidalert();", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "erroralert();", true);
            }

           
            
            

        }
    }
}
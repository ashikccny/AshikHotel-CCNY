using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class User_Registration : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                User_Login Ulogin = new User_Login();
                Ulogin.User_Name = txtName.Text;
                Ulogin.User_Email = txtEmail.Text;
                Ulogin.User_Password = txtPassword.Text;
                Ulogin.User_Role = "User";
                db.User_Login.Add(Ulogin);
                db.SaveChanges();
                txtName.Text = "";
                txtEmail.Text = "";
                ErrorMessage.Text = "";
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "successalert();", true);
            }
            catch (Exception)
            {
                ErrorMessage.Text = "The email address already taken";

                
            }
            
        }
    }
}
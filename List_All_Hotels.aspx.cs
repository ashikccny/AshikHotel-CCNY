using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ashik_Hotel_Reservation
{
    public partial class List_All_Hotels : System.Web.UI.Page
    {
        HotelEntities db = new HotelEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_ID"]!=null)
            {
                var data = db.Hotels.ToList();
                DataList1.DataSource = data;
                DataList1.DataBind();
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="Hotel")
            {
                Session["Hotel_ID"] = e.CommandArgument;
                Response.Redirect("~/Display_Hotel.aspx");
            }
        }
    }
}
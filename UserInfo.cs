using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ashik_Hotel_Reservation
{
    public static class UserInfo
    {
        public static string UserName { get; set; }
        public static string UserEmail { get; set; }
        public static string UserRole { get; set; }
        public static bool IsAuthenticated { get; set; }

    }
}
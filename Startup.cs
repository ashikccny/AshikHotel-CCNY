using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ashik_Hotel_Reservation.Startup))]
namespace Ashik_Hotel_Reservation
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

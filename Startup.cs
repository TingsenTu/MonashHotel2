using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MonashHotel2.Startup))]
namespace MonashHotel2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

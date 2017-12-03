using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HauttePetParlor_Website.Startup))]
namespace HauttePetParlor_Website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

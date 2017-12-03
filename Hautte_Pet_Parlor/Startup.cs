using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Hautte_Pet_Parlor.Startup))]
namespace Hautte_Pet_Parlor
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

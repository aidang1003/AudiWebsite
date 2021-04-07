using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FinalProj.Startup))]
namespace FinalProj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

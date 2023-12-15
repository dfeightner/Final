using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Feightner_Dominic_CitizenScience.Startup))]
namespace Feightner_Dominic_CitizenScience
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

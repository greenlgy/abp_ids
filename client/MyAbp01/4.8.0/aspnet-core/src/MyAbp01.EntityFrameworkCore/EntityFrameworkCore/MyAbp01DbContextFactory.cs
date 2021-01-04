using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using MyAbp01.Configuration;
using MyAbp01.Web;

namespace MyAbp01.EntityFrameworkCore
{
    /* This class is needed to run "dotnet ef ..." commands from command line on development. Not used anywhere else */
    public class MyAbp01DbContextFactory : IDesignTimeDbContextFactory<MyAbp01DbContext>
    {
        public MyAbp01DbContext CreateDbContext(string[] args)
        {
            var builder = new DbContextOptionsBuilder<MyAbp01DbContext>();
            var configuration = AppConfigurations.Get(WebContentDirectoryFinder.CalculateContentRootFolder());

            MyAbp01DbContextConfigurer.Configure(builder, configuration.GetConnectionString(MyAbp01Consts.ConnectionStringName));

            return new MyAbp01DbContext(builder.Options);
        }
    }
}

using System.Data.Common;
using Microsoft.EntityFrameworkCore;

namespace MyAbp01.EntityFrameworkCore
{
    public static class MyAbp01DbContextConfigurer
    {
        public static void Configure(DbContextOptionsBuilder<MyAbp01DbContext> builder, string connectionString)
        {
            builder.UseSqlServer(connectionString);
        }

        public static void Configure(DbContextOptionsBuilder<MyAbp01DbContext> builder, DbConnection connection)
        {
            builder.UseSqlServer(connection);
        }
    }
}

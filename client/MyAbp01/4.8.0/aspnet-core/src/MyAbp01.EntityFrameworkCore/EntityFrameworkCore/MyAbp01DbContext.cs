using Microsoft.EntityFrameworkCore;
using Abp.Zero.EntityFrameworkCore;
using MyAbp01.Authorization.Roles;
using MyAbp01.Authorization.Users;
using MyAbp01.MultiTenancy;

namespace MyAbp01.EntityFrameworkCore
{
    public class MyAbp01DbContext : AbpZeroDbContext<Tenant, Role, User, MyAbp01DbContext>
    {
        /* Define a DbSet for each entity of the application */
        
        public MyAbp01DbContext(DbContextOptions<MyAbp01DbContext> options)
            : base(options)
        {
        }
    }
}

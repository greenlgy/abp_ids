using Abp.Authorization;
using MyAbp01.Authorization.Roles;
using MyAbp01.Authorization.Users;

namespace MyAbp01.Authorization
{
    public class PermissionChecker : PermissionChecker<Role, User>
    {
        public PermissionChecker(UserManager userManager)
            : base(userManager)
        {
        }
    }
}

using System.Collections.Generic;
using MyAbp01.Roles.Dto;

namespace MyAbp01.Web.Models.Common
{
    public interface IPermissionsEditViewModel
    {
        List<FlatPermissionDto> Permissions { get; set; }
    }
}
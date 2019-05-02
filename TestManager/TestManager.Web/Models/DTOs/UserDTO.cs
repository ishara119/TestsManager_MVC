using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestManager.Web.Models.DTOs
{
    public class UserDTO : BaseDTO
    {
        public string UserId { get; set; }
        public decimal Result { get; set; }
    }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestManager.Web.Models.DTOs
{
    public class BaseDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime ModifiedDateTime { get; set; }
        public string ModifiedBy { get; set; }
    }
}

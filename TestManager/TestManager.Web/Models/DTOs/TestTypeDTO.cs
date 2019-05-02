using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestManager.Web.Models.DTOs
{
    public class TestTypeDTO : BaseDTO
    {
        public string Description { get; set; }
        public string Mesaurement { get; set; }
    }

}
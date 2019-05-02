using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestManager.Web.Models.DTOs
{
    public class TestResultDTO : BaseDTO
    {
        public decimal Result { get; set; }
        public string Type { get; set; }
        public string UserName { get; set; }
        public TestDTO Test { get; set; }
        public string UserId { get; set; }
    }
}

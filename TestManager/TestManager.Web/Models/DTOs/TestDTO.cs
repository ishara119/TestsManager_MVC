using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestManager.Web.Models.DTOs
{
    public class TestDTO : BaseDTO
    {
        public DateTime Date { get; set; }
        public int ParticipantCount { get; set; }
        public TestTypeDTO Type { get; set; }
    }
}

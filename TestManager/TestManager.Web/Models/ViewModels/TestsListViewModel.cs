using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestManager.Web.Models.DTOs;

namespace TestManager.Web.Models.ViewModels
{
    public class TestsListViewModel
    {
        public List<TestDTO> TestsList { get; set; }
        public List<TestTypeDTO> TestTypesList { get; set; }
        public DateTime TestDate { get; set; }
        public int SelectedTypeId { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestManager.Web.Models.DTOs;

namespace TestManager.Web.Models.ViewModels
{
    public class TestResultDetailsViewModel
    {
        public List<TestResultDTO> TestResultList { get; set; }
        public List<UserDTO> UsersList { get; set; }
        public string SelectedUserId { get; set; }
        public decimal SelectedResult { get; set; }
        public int  SelectedTestId { get; set; }
    }
}

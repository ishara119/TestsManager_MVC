using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TestManager.Web.Models;
using TestManager.Web.Models.ViewModels;
using TestManager.Web.Services.Interfaces;

namespace TestManager.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ITestManagerService _testManagerService;

        public HomeController(ITestManagerService testManagerService)
        {
            this._testManagerService = testManagerService;
        }

        public IActionResult Index()
        {
            var result = _testManagerService.GetTestsList();
            var testTypeResult = _testManagerService.GetTestTypesList();
            TestsListViewModel viewModel = new TestsListViewModel()
            {
                TestsList = result,
                TestTypesList= testTypeResult
            };
            return View(viewModel);
        }


        public IActionResult TestDetails(int id)
        {
            var result = _testManagerService.GetTestResultList(id);
            var users = _testManagerService.GetAthletesList(id);
            TestResultDetailsViewModel viewModel = new TestResultDetailsViewModel
            {
                TestResultList = result,
                UsersList = users
            };
           
            return View(viewModel);
        }

        [Authorize(Roles = "Coach")]
        public IActionResult AddNewAthlete(TestResultDetailsViewModel model,int testId)
        {
            _testManagerService.AddNewAthleteToTest(model.SelectedTestId, model.SelectedUserId, model.SelectedResult);
            return TestDetails(testId);
        }

        [Authorize(Roles = "Coach")]
        public IActionResult DeleteTest(int testId)
        {
            _testManagerService.DeleteTest(testId);
            return TestDetails(testId);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestManager.Web.Models.DTOs;

namespace TestManager.Web.Services.Interfaces
{
    public interface ITestManagerService
    {
        List<TestDTO> GetTestsList();
        TestDTO GetTestById(int id);
        List<TestResultDTO> GetTestResultList(int id);
        List<TestTypeDTO> GetTestTypesList();
        List<UserDTO> GetAthletesList(int id);
        bool AddNewAthleteToTest(int id, string userid, decimal result);
        bool DeleteTest(int id);
        bool CreateNewTest(TestDTO test);
    }
}

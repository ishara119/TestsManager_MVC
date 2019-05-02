using AutoMapper;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using TestManager.Web.Data;
using TestManager.Web.Models.DTOs;
using TestManager.Web.Services.Interfaces;

namespace TestManager.Web.Services
{
    public class TestManagerService : ITestManagerService
    {

        private readonly ApplicationDbContext _dbContex;
        private readonly IHttpContextAccessor _httpContextAccessor;
        public TestManagerService(ApplicationDbContext dbContex, IHttpContextAccessor httpContextAccessor)
        {
            _dbContex = dbContex;
            _httpContextAccessor = httpContextAccessor;
        }

        public bool AddNewAthleteToTest(int id, string userId, decimal result)
        {
            var loggedUserId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            _dbContex.TestResult.Add(new TestResult
            {
                TestId = id,
                UserId = userId,
                Result = result,
                ModifiedBy = loggedUserId,
                ModifiedDateTime = System.DateTime.Now

            });
            _dbContex.SaveChanges();
            return true;
        }

        public bool CreateNewTest(TestDTO test)
        {
            throw new NotImplementedException();
        }

        public bool DeleteTest(int id)
        {
            throw new NotImplementedException();
        }

        public List<UserDTO> GetAthletesList(int testId)
        {
            List<UserDTO> returnResult = new List<UserDTO>();
            var result = (from tbl in _dbContex.Users
                          join tbl2 in _dbContex.UserRoles on tbl.Id equals tbl2.UserId
                          join tbl3 in _dbContex.Roles on tbl2.RoleId equals tbl3.Id
                          where tbl3.Name == "Athlete" && !(from o in _dbContex.TestResult where o.TestId==testId  select o.UserId).Contains(tbl.Id)
                          select new
                          {
                              tbl.Id,
                              tbl.UserName,
                          }).ToList();

            foreach (var item in result)
            {
                returnResult.Add(new UserDTO { UserId = item.Id, Name = item.UserName });
            }
            return returnResult;
        }

        public TestDTO GetTestById(int id)
        {
            throw new NotImplementedException();
        }

        public List<TestResultDTO> GetTestResultList(int id)
        {
            List<TestResultDTO> returnResult = new List<TestResultDTO>();
            var result = (from tbl in _dbContex.TestResult
                          //join tbl3 in _dbContex.TestType on tbl.TestId equals tbl3.
                          join tbl2 in _dbContex.Users on tbl.UserId equals tbl2.Id
                          where tbl.TestId == id
                          select new
                          {
                              Id = tbl.UserId,
                              tbl.Result,
                              tbl.TestId,
                              tbl2.UserName,
                              tbl.Test.Date,
                              tbl.Test.Type,
                              tbl.ModifiedBy,
                              tbl.ModifiedDateTime,
                          }).ToList();

            foreach (var item in result)
            {
                returnResult.Add(new TestResultDTO
                {
                    UserId = item.Id,
                    Test = new TestDTO {Id=item.TestId,Name= item.Type.Name,Date=item.Date },
                    Name = item.UserName,
                    Result = item.Result,
                    Type = item.Type.Name,
                    ModifiedBy = item.ModifiedBy,
                    ModifiedDateTime = item.ModifiedDateTime
                });
            }

            return returnResult;
        }

        public List<TestDTO> GetTestsList()
        {
            List<TestDTO> returnObj = new List<TestDTO>();
            var result = (from tbl1 in _dbContex.Test
                          join tbl2 in _dbContex.TestType on tbl1.TypeId equals tbl2.Id
                          select new { tbl1, tbl2 }).ToList();

            foreach (var item in result)
            {
                var innerresult = (from p in _dbContex.TestResult
                                   where p.TestId == item.tbl1.Id
                                   select p).ToList();

                returnObj.Add(new TestDTO
                {
                    Id = item.tbl1.Id,
                    Name = item.tbl2.Name,
                    Date = item.tbl1.Date,
                    ModifiedBy = item.tbl1.ModifiedBy,
                    ModifiedDateTime = item.tbl1.ModifiedDateTime,
                    Type = new TestTypeDTO(),
                    ParticipantCount = innerresult.Count()
                });
            }
            return returnObj;
        }

        public List<TestTypeDTO> GetTestTypesList()
        {
            List<TestTypeDTO> returnResult = new List<TestTypeDTO>();
            var result = (from tbl in _dbContex.TestType
                          select tbl).ToList();

            foreach (var item in result)
            {
                returnResult.Add(new TestTypeDTO { Id = item.Id, Name = item.Name });
            }
            return returnResult;
        }
    }
}

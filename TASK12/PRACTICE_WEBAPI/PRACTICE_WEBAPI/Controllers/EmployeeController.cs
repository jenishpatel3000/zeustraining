using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PRACTICE.API.Data;
using PRACTICE.API.Models;

namespace PRACTICE.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class EmployeeController : Controller
    {
        private readonly PracticeDbContext _ctx;

        public EmployeeController(PracticeDbContext context)
        {
            _ctx = context;
        }
        [HttpGet]
        public async Task<IActionResult> GetAllEmployees()
        {
            
            var employee= await _ctx.Employees.ToListAsync();
            return Ok(employee);
        }

        [HttpPost]
        public async Task<IActionResult> AddEmployee([FromBody]Employee EmployeeRequest)
        {
            EmployeeRequest.Id=Guid.NewGuid();
            await _ctx.Employees.AddAsync(EmployeeRequest);
            await _ctx.SaveChangesAsync();

            return Ok(EmployeeRequest);
        }
    }
}

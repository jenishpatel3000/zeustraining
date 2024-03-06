using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using PRACTICE.API.Models;

namespace PRACTICE.API.Data
{
    public class PracticeDbContext : DbContext
    {
        private readonly IConfiguration _configuration;

        public PracticeDbContext(DbContextOptions<PracticeDbContext> options)
            : base(options)
        {
          
        }

        public DbSet<Employee> Employees { get; set; }

    
    }
}
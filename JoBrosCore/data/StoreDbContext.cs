using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using JoBrosCore.Models;

namespace JoBrosCore.Data
{
    public class StoreDbContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }

        public DbSet<Item> Items { get; set; }

        public StoreDbContext(DbContextOptions<StoreDbContext> options) : base(options)
        {
            Database.Migrate();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source=Store.db");
        }
    } // context
    
}

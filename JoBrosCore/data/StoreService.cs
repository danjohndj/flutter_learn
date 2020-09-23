using JoBrosBlazor.Shared.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Sqlite;
using JoBrosBlazor.Data;
using Microsoft.AspNetCore.Mvc;

namespace JoBrosCore.Data
{
    public class StoreService
    {
        StoreDbContext _context;

        public StoreService(StoreDbContext context)
        {
            _context = context;
        }

        // add the CRUD routines

        [ValidateAntiForgeryToken]
        public async Task<Customer> GetCustomerById(long ID)
        {
            return await _context.Customers.FindAsync(ID);
        }

        [ValidateAntiForgeryToken]
        public Customer GetCustomerByUserName(String UserName)
        {
            var c = _context.Customers
                .Where(b => b.UserName == UserName).FirstOrDefault();

            return c;
        }
        [ValidateAntiForgeryToken]
        public async void InsertCustomer(Customer c)
        {
            _context.Add(c);
            await _context.SaveChangesAsync();
        }
        [ValidateAntiForgeryToken]
        public async void UpdateCustomer(Customer c)
        {
            _context.Customers.Update(c);
            await _context.SaveChangesAsync();
        }

        [ValidateAntiForgeryToken]
        public List<Item> ItemList()
        { // add query to hide retired
            return _context.Items.ToList();
        }

        [ValidateAntiForgeryToken]
        public async void AddItem(Item i)
        {
            _context.Add(i);
            await _context.SaveChangesAsync();
        }

        [ValidateAntiForgeryToken]
        public async void UpdateItem(Item i)
        {
            _context.Update(i);
            await _context.SaveChangesAsync();
        }
        
    }
}

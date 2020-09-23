using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace JoBrosCore.Models
{
    public class Customer
    {
        [Key]
        public long Id { get; set; }
        [Required]
        [MinLength(5, ErrorMessage = "User Name is too short")]
        [MaxLength(100)]
        public string UserName { get; set; }
        [Required]
        [MinLength(5, ErrorMessage = "Password is too short")]
        [MaxLength(100)]
        public string Password { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Email { get; set; }

        public string Phone { get; set; }

        public string PaymentMethod { get; set; }
        public bool Admin { get; set; }
    }
}


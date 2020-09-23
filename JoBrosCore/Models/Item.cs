using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace JoBrosCore.Models
{
    public class Item 
    {
        [Key] public long ID { get; set; }
        [Required] public string Description { get; set; }
        [Required] public double Cost { get; set; }

        public string ImageURL { get; set; } // served in /images folder

        public double Discount { get; set; }

        public int Hidden { get; set; }
    }
}
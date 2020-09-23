using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace JoBrosCore.Models
{
    public class Order
    {
        [Key]
        public long ID { get; set; }

        public string CustID { get; set; }

        public string OrderDate { get; set; }

        public string OrderStatus { get; set; }
    }
}

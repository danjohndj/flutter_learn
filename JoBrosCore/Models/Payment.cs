using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace JoBrosCore.Models
{
    public class Payment
    {
        [Key]
        public long ID { get; set; }
        public int ItemID { get; set; }
        public double PaymentAmt { get; set; }
        public string PaymentDate { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace JoBrosCore.Models
{
    public class OrderDetail
    {
        [Key]
        public long ID { get; set; }

        public string OrderID { get; set; }

        public string ItemID { get; set; }

        public double Amt { get; set; }

        public double Discount { get; set; }

        public int Qty { get; set; }

        public int QtyShipped { get; set; }

        public double Total { get; set; }
    }
}

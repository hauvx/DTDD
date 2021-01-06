using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThuongMaiDienTu.Models
{
    public class OrderModalCheck
    {
        public int IdOrder { get; set; }
        public Nullable<int> IdCode { get; set; }
        public int IdCustomer { get; set; }
        public Nullable<int> IdUser { get; set; }
        public string DateOrder { get; set; }
        public Nullable<System.DateTime> DateDelivery { get; set; }
    
        public Nullable<double> Total { get; set; }
        public int IdPayment { get; set; }
        public int IdStatus { get; set; }
    }
}
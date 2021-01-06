using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThuongMaiDienTu.Models.ApiMobile
{
    public class ModalProduct
    {
        public int IdProduct { get; set; }
        public string ProductName { get; set; }
        public string linkImg { get; set; }
        public string ProductSumary { get; set; }
        public string ProductDetail { get; set; }
        public double ProductPrice { get; set; }
        public int IdCategory { get; set; }
        public int IdUser { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThuongMaiDienTu.Models
{
    public class ProductAPIModal
    {
        public int idProduct { get; set; }
        public string nameProduct { get; set; }
        public double priceProduct { get; set; }
        public int idCategory { get; set; }
        public string PRODUCT_IMG { get; set; }
    }
}   
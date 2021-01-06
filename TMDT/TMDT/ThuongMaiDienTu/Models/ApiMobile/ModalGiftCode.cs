using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThuongMaiDienTu.Models.ApiMobile
{
    public class ModalGiftCode
    {
        int IdCode { get; set; }
        public string Code { get; set; }
        public Nullable<double> Discount { get; set; }
        public Nullable<bool> Status { get; set; }
    }
}
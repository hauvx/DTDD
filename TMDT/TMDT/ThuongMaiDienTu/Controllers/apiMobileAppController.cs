using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http;
using System.Web.Http.Results;
using ThuongMaiDienTu.Models.ApiMobile;

namespace ThuongMaiDienTu.Controllers
{
    public class apiMobileAppController : ApiController
    {   


        [HttpGet]
        public JsonResult<ApiMobileArray> GetCategory()
        {
            ApiMobileArray result = new ApiMobileArray();
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {   

                var categoryDB = db.CATEGORY_PRODUCT.ToList();
                if (categoryDB is null)
                {
                    result.Success = false;
                    result.Message = "Lấy list Category thất bại. Data trông";
                    result.Data = null;
                }
                else
                {
                    result.Success = true;
                    result.Message = "Lấy list Category thành công";
                    List<ModalCategory> arrCategory = new List<ModalCategory>();
                    foreach (var ctgr in categoryDB)
                    {
                        ModalCategory ctgrNew = new ModalCategory();
                        ctgrNew.IdCategory = ctgr.IdCategory;
                        ctgrNew.CategoryName = ctgr.CategoryName;
                        ctgrNew.CategoryIcon = ctgr.CategoryIcon;
                        arrCategory.Add(ctgrNew);
                    }
                    result.Data = arrCategory;
                }
              
            }
            
            return Json(result);

        }

        [HttpGet]
        public JsonResult<ApiMobileArray> GetProductByIDCategory (int idCategory)
        {
            ApiMobileArray result = new ApiMobileArray();
            
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                var url = "http://localhost:58702/";
                var productDB = db.PRODUCTs.Where(x=>x.IdCategory ==idCategory).ToList();
                if (productDB is null)
                {
                    result.Success = false;
                    result.Message = "Lấy list Product By IDCategory thất bại. Data trông";
                    result.Data = null;
                }
                else
                {
                    result.Success = true;
                    result.Message = "Lấy list Product By IDCategory thành công";
                    List<ModalProduct> arrProduct = new List<ModalProduct>();
                    foreach (var prd in productDB)
                    {
                        ModalProduct prdNew = new ModalProduct();
                        prdNew.IdProduct = prd.IdProduct;
                        prdNew.ProductName = prd.ProductName;
                        prdNew.linkImg = url+ "img/product/"+ prd.PRODUCT_IMG.FirstOrDefault().Filename;
                        prdNew.ProductSumary = prd.ProductSumary;
                        prdNew.ProductDetail = prd.ProductDetail;
                        prdNew.ProductPrice = prd.ProductPrice;
                        prdNew.IdCategory = prd.IdCategory;
                        prdNew.IdUser = prd.IdUser;
                        arrProduct.Add(prdNew);
                    }
                    result.Data = arrProduct;
                }

            }

            return Json(result);

        }
        [HttpGet]
        public JsonResult<ApiMobileArray> GetFullProduct ()
        {
            ApiMobileArray result = new ApiMobileArray();

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                var url = "http://localhost:58702/";
                var productDB = db.PRODUCTs.ToList();
                if (productDB is null)
                {
                    result.Success = false;
                    result.Message = "Lấy list full Product thất bại. Data trông";
                    result.Data = null;
                }
                else
                {
                    result.Success = true;
                    result.Message = "Lấy list Product By IDCategory thành công";
                    List<ModalProduct> arrProduct = new List<ModalProduct>();
                    foreach (var prd in productDB)
                    {
                        ModalProduct prdNew = new ModalProduct();
                        prdNew.IdProduct = prd.IdProduct;
                        prdNew.ProductName = prd.ProductName;
                        prdNew.linkImg = url + "img/product/" + prd.PRODUCT_IMG.FirstOrDefault().Filename;
                        prdNew.ProductSumary = prd.ProductSumary;
                        prdNew.ProductDetail = prd.ProductDetail;
                        prdNew.ProductPrice = prd.ProductPrice;
                        prdNew.IdCategory = prd.IdCategory;
                        prdNew.IdUser = prd.IdUser;
                        arrProduct.Add(prdNew);
                    }
                    result.Data = arrProduct;
                }

            }

            return Json(result);

        }
        [HttpGet]
        public JsonResult<ApiMobileObject> GetInfoCustomerByPhone (string Phone)
        {
            ApiMobileObject result = new ApiMobileObject();

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                var url = "http://localhost:58702/";
                var InfoCustomer = db.CUSTOMERs.Where(x=>x.CustomerPhone == Phone.ToString()).FirstOrDefault();
                if (InfoCustomer is null)
                {
                    result.Success = false;
                    result.Message = "Lấy InfoCostomer thất bại. SĐT không tồn tại trong hệ thống";
                    result.Data = null;
                }
                else
                {
                    ModalInfoCustomer InfoCTM = new ModalInfoCustomer();
                    InfoCTM.IdCustomer = InfoCustomer.IdCustomer;
                    InfoCTM.CustomerName = InfoCustomer.CustomerName;
                    InfoCTM.CustomerAddress = InfoCustomer.CustomerAddress;
                    InfoCTM.CustomerPhone = InfoCustomer.CustomerPhone;
                    InfoCTM.CustomerEmail = InfoCustomer.CustomerEmail;
                    result.Success = true;
                    result.Message = "Lấy list Product By IDCategory thành công";
                    
                    result.Data = InfoCTM;
                }

            }

            return Json(result);

        }
        [HttpGet]

        public JsonResult<ApiMobileObject> CheckCodeDiscount (string code)
        {
            ApiMobileObject result = new ApiMobileObject();
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var giftCode = db.GIFTCODEs.Where(x => x.Code == code.ToString()).FirstOrDefault();
                if (giftCode is null || giftCode.Status == true)
                {
                    result.Success = false;
                    result.Message = "Giftcode đã được sử dụng hoặc không tồn tại!";
                    result.Data = null;
                    return Json(result);
                }    
                else
                {
                    result.Success = true;
                    result.Message = "Giftcode tồn tại!";
                    ModalGiftCode giftResult = new ModalGiftCode();
                
                    giftResult.Code = giftCode.Code;
                    giftResult.Status = giftCode.Status;
                    giftResult.Discount = giftCode.Discount;
                    result.Data = giftResult;
                    return Json(result);
                }
              
            }
            
           

        }
       

        [HttpPost]
        public JsonResult<ApiMobileArray> GetCategory2 ()
        {
            ApiMobileArray result = new ApiMobileArray();
            result.Success = true;
            result.Message = "Lấy PPP Profile thành công!";
            result.Data = null;
            return Json(result);

        }
    }
}

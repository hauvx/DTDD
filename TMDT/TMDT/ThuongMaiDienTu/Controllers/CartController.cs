using CosmeticShop.Models;
using PayPal.Core;
using PayPal.v1.Payments;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using ThuongMaiDienTu.Helper;
using ThuongMaiDienTu.Models;

namespace ThuongMaiDienTu.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        public ActionResult Index()
        {
            if (Session["cart"] != null)
            {
                int slitem = 0;
                int tongtien = 0;
                foreach (var item in Session["cart"] as List<PRODUCT>)
                {
                    slitem += item.Quantily;
                    tongtien += item.Quantily * (int)item.ProductPrice;
                }
                ViewBag.sl = slitem;
                ViewBag.tongtien = tongtien;
            }

            return View();
        }

        [HttpPost]
        public ActionResult Index(OrderInfoModel data)
        {
            try
            {
                if (String.IsNullOrEmpty(data.CustomerPhone) || String.IsNullOrEmpty(data.CustomerName) || String.IsNullOrEmpty(data.CustomerAddress)) throw new Exception("Vui lòng điền đầy đủ thông tin trước khi đặt hàng");
                var list = (Session["cart"] as List<PRODUCT>);
                if (list is null) throw new Exception("Đơn hàng rỗng không thể thanh toán");
                if (list.Count < 1) throw new Exception("Đơn hàng rỗng không thể thanh toán");

                using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
                {
                    // tìm và update khách nếu ko thì tạo
                    var customer = db.CUSTOMERs.Where(x => x.CustomerPhone.Equals(data.CustomerPhone)).FirstOrDefault();
                    if (customer is null)
                    {
                        customer = new CUSTOMER();
                        customer.CustomerPhone = data.CustomerPhone;
                        customer.CustomerAddress = data.CustomerAddress;
                        customer.CustomerName = data.CustomerName;
                        customer.CustomerEmail = data.CustomerEmail;

                        db.CUSTOMERs.Add(customer);
                    }
                    else
                    {
                        customer.CustomerAddress = data.CustomerAddress;
                        customer.CustomerName = data.CustomerName;
                        customer.CustomerEmail = data.CustomerEmail;
                    }
                    db.SaveChanges();

                    var giftCode = db.GIFTCODEs.Where(g => g.Code == data.Giftcode).SingleOrDefault();
                    if (giftCode != null)
                    {
                        giftCode.Status = true;//đã dùng rồi
                        db.SaveChanges();
                    }

                    ORDER o = new ORDER();
                    o.IdCustomer = customer.IdCustomer;
                    o.DateOrder = DateTime.Now;
                    o.DateDelivery = DateTime.Now;
                    o.OrderComment = data.CustomerComment;
                    o.IdPayment = data.PaymentMethod;
                    o.IdStatus = 1;
                    int total = 0;

                    foreach (var p in list)
                    {
                        total += (int)p.ProductPrice * p.Quantily;
                        PRODUCT_ORDER po = new PRODUCT_ORDER();
                        po.Count =(byte) p.Quantily;
                        po.Discount = 0;
                        po.IdProduct = p.IdProduct;
                        po.Price = p.ProductPrice;
                        o.PRODUCT_ORDER.Add(po);
                    }
                    //double total = (double)data.Total;
                    o.Total = total;

                    db.ORDERs.Add(o);
                    db.SaveChanges();

                    if (data.PaymentMethod == 2)
                    {
                        VNPay vnpay = new VNPay();
                        string link = vnpay.GetBankingURL(total, data.BankCode, o.IdOrder.ToString(), DateTime.Now);
                        return Redirect(link);
                    }
                    TempData["id"] = o.IdOrder;
                    return RedirectToAction("Success");
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message;
            }
            return View();
        }


        public ActionResult Success()
        {
            if (TempData["id"] is null) return RedirectToAction("Index", "Home");
            ViewBag.Id = TempData["id"].ToString();
            Session["cart"] = null;
            return View();
        }
        public ActionResult Fail()
        {
            return View();
        }


        //public ActionResult Callback()
        //{
        //    if (Request.QueryString.Count > 0)
        //    {

        //        var vnpayData = Request.QueryString;
        //        VnPayLibrary vnpay = new VnPayLibrary();
        //        //if (vnpayData.Count > 0)
        //        //{
        //        foreach (string s in vnpayData)
        //        {
        //            //get all querystring data
        //            if (!string.IsNullOrEmpty(s) && s.StartsWith("vnp_"))
        //            {
        //                vnpay.AddResponseData(s, vnpayData[s]);
        //            }
        //        }
        //        // }

        //        //vnp_TxnRef: Ma don hang merchant gui VNPAY tai command=pay    
        //        string orderId = vnpay.GetResponseData("vnp_TxnRef");

        //        // lấy ra idkiosk để lấy hashsecret trong kiosk
        //        string vnp_HashSecret = "NZWQLJRMIMACCBLXUUHZXWRDPRMJPIVQ";
        //        int IdTransaction = int.Parse(orderId);
        //        int IdKiosk = 0;
        //        DateTime payDate = DateTime.Now;

        //        //vnp_TransactionNo: Ma GD tai he thong VNPAY
        //        long vnpayTranId = Convert.ToInt64(vnpay.GetResponseData("vnp_TransactionNo"));
        //        //vnp_ResponseCode:Response code from VNPAY: 00: Thanh cong, Khac 00: Xem tai lieu
        //        string vnp_ResponseCode = vnpay.GetResponseData("vnp_ResponseCode");
        //        //vnp_SecureHash: MD5 cua du lieu tra ve
        //        String vnp_SecureHash = Request.QueryString["vnp_SecureHash"];


        //        bool checkSignature = vnpay.ValidateSignature(vnp_SecureHash, vnp_HashSecret);
        //        if (checkSignature)
        //        {

        //            if (vnp_ResponseCode.Equals("00"))
        //            {
        //                //Thanh toan thanh cong

        //                using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
        //                {
        //                    var order = db.ORDERs.Where(x => x.IdOrder == IdTransaction).FirstOrDefault();
        //                    order.IdStatus = 2;
        //                    db.SaveChanges();
        //                    TempData["id"] = IdTransaction;
        //                    return RedirectToAction("Success");
        //                }

        //            }
        //        }

        //    }
        //    return RedirectToAction("Fail");

        //}
        public async Task<ActionResult> Paypal(OrderInfoModel data)
        {
            Session["CustomerName"] = data.CustomerName;
            Session["CustomerEmail"] = data.CustomerEmail;
            Session["CustomerAddress"] = data.CustomerAddress;
            Session["CustomerPhone"] = data.CustomerPhone;
            Session["CustomerComment"] = data.CustomerComment;
            Session["Giftcode"] = data.Giftcode;

            if (data.PaymentMethod != 0)
            {
                return Redirect("~/cart/nganluong");
            }
            else
            {
                string _clientId = "AV_3qekNnWjCxzPYk3tUMH30mAiXyn4JLOTdLYOqml9fd9gab2GvyTkhCV5WZDaPnbL-6VSTX82r5eF1";
                string _secretKey = "EBiagCKxqSwIxNKfvuqFZx_POhc8tF40ghBLbWQGT1phGUcszldfVF5RYqqGXFVfzbEN9rTAD0jFevvO";
                var environment = new SandboxEnvironment(_clientId, _secretKey);
                var client = new PayPalHttpClient(environment);
                #region Create Paypal Order
                var itemList = new ItemList()
                {
                    Items = new List<Item>()
                };
                var list = (Session["cart"] as List<PRODUCT>);
                var total = 0;
                foreach (var item in list)
                {
                    total += (int)item.ProductPrice * item.Quantily;

                    itemList.Items.Add(new Item()
                    {
                        Name = item.ProductName,
                        Currency = "USD",
                        Price = item.ProductPrice.ToString(),
                        Quantity = item.Quantily.ToString(),
                        Sku = "sku",
                        Tax = "0"
                    });


                }

                #endregion

                var paypalOrderId = DateTime.Now.Ticks;
                //var hostname = $"{HttpContext.Request.Url.Scheme}://{HttpContext.Request.Url.Host}";
                var hostname = "http://m-store.store/"; // nhớ update lại
                var payment = new Payment()
                {
                    Intent = "sale",
                    Transactions = new List<Transaction>()
                {
                    new Transaction()
                    {
                        Amount = new Amount()
                        {
                            Total = total.ToString(),
                            Currency = "USD",
                            Details = new AmountDetails
                            {
                                Tax = "0",
                                Shipping = "0",
                                Subtotal = total.ToString()
                            }
                        },
                        ItemList = itemList,
                        Description = $"Invoice #{paypalOrderId}",
                        InvoiceNumber = paypalOrderId.ToString()
                    }
                },
                    RedirectUrls = new RedirectUrls()
                    {

                        CancelUrl = "http://m-store.store/cart/ThatBai",
                        ReturnUrl = "http://m-store.store/cart/Thanhcong"
                        //CancelUrl = $"{hostname}/cart/ThatBai",
                        //ReturnUrl = $"{hostname}/cart/Thanhcong"
                    },
                    Payer = new Payer()
                    {
                        PaymentMethod = "paypal"
                    }
                };

                PaymentCreateRequest request = new PaymentCreateRequest();
                request.RequestBody(payment);

                try
                {

                    // var response = await client.Execute(request);
                    var response = await ExecutePayPalRequest(client, request);
                    var statusCode = response.StatusCode;
                    Payment result = response.Result<Payment>();

                    var links = result.Links.GetEnumerator();
                    string paypalRedirectUrl = null;
                    while (links.MoveNext())
                    {
                        LinkDescriptionObject lnk = links.Current;
                        if (lnk.Rel.ToLower().Trim().Equals("approval_url"))
                        {
                            //saving the payapalredirect URL to which user will be redirected for payment  
                            paypalRedirectUrl = lnk.Href;
                        }
                    }

                    return Content(paypalRedirectUrl);

                }
                catch (HttpException httpException)
                {
                    //var statusCode = httpException.StatusCode;
                    //var debugId = httpException.Headers.GetValues("PayPal-Debug-Id").FirstOrDefault();

                    //Process when Checkout with Paypal fails
                    return Content("http://m-store.store/home/index");
                }
            }

        }
        private static async Task<BraintreeHttp.HttpResponse> ExecutePayPalRequest(
       PayPalHttpClient client,
       PaymentCreateRequest request)
        {
            SynchronizationContext.SetSynchronizationContext(null);
            return await client.Execute(request).ConfigureAwait(false);
        }
        public ActionResult Thanhcong()
        {
            if (Session["cart"] != null)
            {
                OrderInfoModel data = new OrderInfoModel();
                data.CustomerName = Session["CustomerName"].ToString() == "" ? "" : Session["CustomerName"].ToString();
                data.CustomerEmail = Session["CustomerEmail"].ToString() == "" ? "" : Session["CustomerEmail"].ToString();
                data.CustomerAddress = Session["CustomerAddress"].ToString() == "" ? "" : Session["CustomerAddress"].ToString();
                data.CustomerPhone = Session["CustomerPhone"].ToString() == "" ? "" : Session["CustomerPhone"].ToString();
                data.CustomerComment = Session["CustomerComment"].ToString() == "" ? "" : Session["CustomerComment"].ToString();
                //data.Giftcode = Session["Giftcode"].ToString() ==null? "": Session["Giftcode"].ToString();
                data.PaymentMethod = 3; // nhớ set up 3 trang thai paypal
                if (String.IsNullOrEmpty(data.CustomerPhone) || String.IsNullOrEmpty(data.CustomerName) || String.IsNullOrEmpty(data.CustomerAddress)) throw new Exception("Vui lòng điền đầy đủ thông tin trước khi đặt hàng");
                var list = (Session["cart"] as List<PRODUCT>);
                if (list is null) throw new Exception("Đơn hàng rỗng không thể thanh toán");
                if (list.Count < 1) throw new Exception("Đơn hàng rỗng không thể thanh toán");

                using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
                {
                    // tìm và update khách nếu ko thì tạo
                    var customer = db.CUSTOMERs.Where(x => x.CustomerPhone.Equals(data.CustomerPhone)).FirstOrDefault();
                    if (customer is null) customer = new CUSTOMER();
                    customer.CustomerPhone = data.CustomerPhone;
                    customer.CustomerAddress = data.CustomerAddress;
                    customer.CustomerName = data.CustomerName;
                    customer.CustomerEmail = data.CustomerEmail;
                    if (customer.IdCustomer < 1) db.CUSTOMERs.Add(customer);
                    db.SaveChanges();

                    ORDER o = new ORDER();
                    o.IdCustomer = customer.IdCustomer;
                    o.DateOrder = DateTime.Now;
                    o.DateDelivery = DateTime.Now;
                    o.OrderComment = data.CustomerComment;
                    o.IdPayment = data.PaymentMethod; // nhớ gán session nhé, để bắt trạng thái thanh toán tùy paypal or ngân lượng vd 3-paypal 4-nganluong
                    o.IdStatus = 1;
                    int total = 0;

                    foreach (var p in list)
                    {
                        total += (int)p.ProductPrice;
                        PRODUCT_ORDER po = new PRODUCT_ORDER();
                        po.Count = (byte)p.Quantily;
                        po.Discount = 0;
                        po.IdProduct = p.IdProduct;
                        po.Price = p.ProductPrice;
                        o.PRODUCT_ORDER.Add(po);
                    }

                    o.Total = total;

                    db.ORDERs.Add(o);
                    db.SaveChanges();

                    if (data.PaymentMethod == 2)
                    {
                        VNPay vnpay = new VNPay();
                        string link = vnpay.GetBankingURL(total, data.BankCode, o.IdOrder.ToString(), DateTime.Now);
                        return Redirect(link);
                    }
                    TempData["id"] = o.IdOrder;
                    Session["cart"] = null;
                    return View();
                }

            }
            return Redirect("~/home/index");
        }
        public ActionResult ThatBai()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NganLuong(OrderInfoModel data)
        {
            Session["CustomerName"] = data.CustomerName;
            Session["CustomerEmail"] = data.CustomerEmail;
            Session["CustomerAddress"] = data.CustomerAddress;
            Session["CustomerPhone"] = data.CustomerPhone;
            Session["CustomerComment"] = data.CustomerComment;
            Session["Total"] = data.Total;
            // Session["Giftcode"] = data.Giftcode;

            return Content("nganluong/index");
        }

        public ActionResult ExecutePayment(string buyer_fullname, string buyer_email,
         string buyer_mobile, string option_payment, string bankcode)
        {
            string payment_method = option_payment;
            string str_bankcode = bankcode;


            RequestInfo info = new RequestInfo();
            info.Merchant_id = "48305";
            info.Merchant_password = "1d56734bff914cd62f5e675782b92176";
            info.Receiver_email = "hauxuan94@gmail.com";

            //mk nl ac1d19ab3a0450d7b6d0c3b885448a86
            // secrrt d0c398afaa9c40c3abffc82127a38354 
            //api b6dc94eff0e64a3cafbe6927921bfe03

            info.cur_code = "vnd";
            info.bank_code = str_bankcode;


            //int id_new = db.HoaDon.Max(m => m.MaHd) + 1;
            DateTime currentDate = DateTime.Now;
            // Voucher voucher = db.Voucher.SingleOrDefault(s => s.NgayBatDau <= currentDate && s.NgayHetHan >= currentDate);
            double giamGia = 0;
            // if (voucher != null)
            // {
            //    giamGia = (double)voucher.GiamGia;
            //}
            double tt = (double)Session["Total"];
            double tygiaUSD = 0;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var TG = db.TYGIAUSDs.FirstOrDefault();
                tygiaUSD = (double)TG.tygia;
            }

            double totalAmount = Session["Total"].ToInt() * tygiaUSD;



            info.Order_code = "1";//(id_new + 1).ToString();
            info.Total_amount = totalAmount.ToString();
            info.fee_shipping = "0";
            info.Discount_amount = giamGia.ToString();
            info.order_description = "Thanh toan test thu dong hang";
            //info.return_url = "https://cosmeticshop20.azurewebsites.net/Checkout/NganLuongPaid/?orderid=" + HttpContext.Session.GetInt32("OrderId").ToString();
            //info.return_url = BaseURL.GetURL();
            info.return_url = "http://m-store.store/" + "/cart/Thanhcong";
            info.cancel_url = "http://m-store.store/" + "cart/Cancel/";

            info.Buyer_fullname = buyer_fullname;
            info.Buyer_email = buyer_email;
            info.Buyer_mobile = buyer_mobile;

            APICheckoutV3 objNLChecout = new APICheckoutV3();
            ResponseInfo result = objNLChecout.GetUrlCheckout(info, payment_method);

            if (result.Error_code == "00")
            {

                //SaveOrder(totalAmount, "nganluong");
                return Redirect(result.Checkout_url);
                //Response.Redirect(result.Checkout_url);
            }
            else
                return View();
            // txtserverkt.InnerHtml = result.Description;

        }
    }
}
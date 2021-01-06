using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Configuration;

using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

using Twilio.TwiML;
using Twilio.AspNet.Mvc;

namespace ThuongMaiDienTu.Controllers
{
    public class SMSController : Controller
    {
        // GET: SMS
        public string SendSMS(int code)
        {
            var accountSid = "ACf932acd127b5830c4aa153c09fddff4b";
            var authToken = "09ecd631a07f85744ab5d7ad855d8670";
            TwilioClient.Init(accountSid, authToken);
            var to = new PhoneNumber("+84949209394");
            var from = new PhoneNumber("+16072988816");
            var message = MessageResource.Create(
                to: to,
                from: from,
                body: "Your passcode is "+ code);

            return message.Sid;
        }
    }
}
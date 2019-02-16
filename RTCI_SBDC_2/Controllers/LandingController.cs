using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Controllers
{
    public class LandingController : Controller
    {
        public ActionResult TextChatView()
        {
            return View("TextChat");
        }

        // GET: Landing
        public ActionResult Index()
        {
            return View();
        }
    }
}
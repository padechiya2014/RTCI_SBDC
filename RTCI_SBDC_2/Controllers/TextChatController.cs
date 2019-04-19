using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Controllers
{
    public class TextChatController : Controller
    {
        public ActionResult TextChatView()
        {
            return View("TextChat");
        }


        // GET: TextChat
        public ActionResult Index()
        {
            return View();
        }

        // GET: TextChat/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: TextChat/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TextChat/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TextChat/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: TextChat/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TextChat/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: TextChat/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

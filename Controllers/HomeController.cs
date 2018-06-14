using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using QuotingDojo.Models;
using DbConnection;

namespace QuotingDojo.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        [Route("")]
        public IActionResult Index()
        {
            
            return View();
        }

        [HttpGet]
        [Route("quotes")]
        public IActionResult Quotes(){
            string query = "SELECT * FROM users;";
            ViewBag.AllQuotes = DbConnector.Query(query);
            return View("Quotes");
        }

        [HttpPost]
        [Route("create")]
        public IActionResult Create(string name, string quote)
        {
            if (name == null || quote == null)
            {
                ViewBag.Error = "Cannot leave name nor quote blank";
                return View("Error");
            }
            else
            {
                string sql = $"INSERT INTO users(name, quote) VALUES('{name}', '{quote}')";
                DbConnector.Execute(sql);
                return RedirectToAction("Quotes");
            }
        }
    }
}
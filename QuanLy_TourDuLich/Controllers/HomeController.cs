﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        QuanLyTourDuLichDataContext data = new QuanLyTourDuLichDataContext();
        public ActionResult Index()
        {
            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Hotsite.Models;
using System.IO;

namespace Hotsite.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            string texto = "";
            StreamReader sr = null;
            try
            {
                sr = System.IO.File.OpenText("c:/textos/arquivo.txt");
                texto = sr.ReadToEnd();
                sr.Close();
            }
            catch (Exception e)
            {
                _logger.LogError("Falha ao ler arquivo: " + e.Message);
            }
            return View();
        }

        [HttpPost]
        public IActionResult Cadastrar(Interesse cad)
        {
            DatabaseService dbs = new DatabaseService();
            dbs.CadastraInteresse(cad);
            return View("Index", cad);
        }

    }
}

using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace projetohotsite.Controllers
{
    public class ErroController : Controller
    {

        private readonly ILogger _logger;
        /*configurando logger*/
        public ErroController(ILogger logger)
        {
            _logger = logger;
        }
        [Route("/erro/500")]
        public IActionResult Erro500()
        {
            //capturando a exceção que disparou a falha
            var errosOcorridos = HttpContext.Features.Get<IExceptionHandlerPathFeature>();
            if (errosOcorridos != null)
            {
                //mensagem da exceção disparada
                string mensagemErro = errosOcorridos.Error.Message;

                //url que o usuário acessou e gerou a exceção
                string urlErro = errosOcorridos.Path;
                _logger.LogError($"Falha: {mensagemErro} acessando {urlErro} ");
            }
            return View();
        }

        [Route("/erro/404")]
        public IActionResult Erro404()
        {
            return View();
        }
    }
}
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace FitConnect.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        // Propriedades para capturar os dados do formulário de login
        [BindProperty]
        public string Username { get; set; }

        [BindProperty]
        public string Password { get; set; }

        // Construtor para o logger
        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        // Método chamado quando o formulário é enviado
        public IActionResult OnPost()
        {
            // Exemplo de autenticação simples
            if (Username == "admin" && Password == "password")
            {
                // Redireciona para a página de AdminIndex caso o login seja bem-sucedido
                return RedirectToPage("/AdminIndex");
            }

            // Se as credenciais forem inválidas, exibe uma mensagem de erro
            ModelState.AddModelError(string.Empty, "Nome de usuário ou senha inválidos.");
            return Page();
        }

        // Método chamado quando a página é carregada via GET
        public void OnGet()
        {
            // Aqui você pode adicionar qualquer lógica adicional para o carregamento da página
        }
    }
}

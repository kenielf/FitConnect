using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using FitConnect.Models;
using FitConnect.Repository;

namespace FitConnect.Pages;

public class IndexModel : PageModel
{
    private readonly ILogger<IndexModel> _logger;

    private readonly IAccountRepository _accountRepository;
    public IEnumerable<Account> Accounts { get; set; }

    public IndexModel(ILogger<IndexModel> logger, IAccountRepository accountRepository)
    {
        _logger = logger;
        _accountRepository = accountRepository;
    }

    public async Task<IActionResult> OnGet()
    {
        Accounts = await _accountRepository.GetAll();
        foreach (var acc in Accounts)
        {
            Console.WriteLine($"Account: {acc.username}");
        }
        return Page();
    }
}

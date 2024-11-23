using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace FitConnect.Pages.Admin;

public class AdminIndexModel : PageModel
{
    private readonly ILogger<AdminIndexModel> _logger;

    public AdminIndexModel(ILogger<AdminIndexModel> logger)
    {
        _logger = logger;
    }

    public void OnGet()
    {

        
    }
}

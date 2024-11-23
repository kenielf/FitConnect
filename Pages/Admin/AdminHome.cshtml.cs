using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace FitConnect.Pages.Admin
{
    public class AdminHomeModel : PageModel
    {
        public void OnGet()
        {
            List<string> list = new List<string>();
            list.Add("user");
        }
    }
}

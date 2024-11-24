using FitConnect.Models;
using FitConnect.Repository;
using Npgsql;

namespace FitConnect.Controllers
{
    public class AccountController(IAccountRepository AccountRepository)
    {
        static int USERNAME_MAX_LENGTH = 50;

        Task<IEnumerable<Account>> GetAll()
        {
            return AccountRepository.GetAll();
        }

        // void createAccount(string username, string password)
        // {
        //     Account account = new Account();
        // }
        //
        // List<Account> getAllAccounts()
        // {
        //     var accounts = new List<Account>();
        //
        //
        //     // var connection = new NpgsqlConnection();
        //     // connection.Open();
        //     // var reader = connection.
        //     //
        //     // var results = new List<Account>();
        //     return accounts;
        // }
    }
}

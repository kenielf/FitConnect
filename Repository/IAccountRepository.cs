using FitConnect.Models;

namespace FitConnect.Repository
{
    public interface IAccountRepository
    {
        Task<IEnumerable<Account>> GetAll();
        Task<bool> Create(Account account);
        Task<bool> Update(Account account);
        Task<bool> Delete(int id);
    }
}

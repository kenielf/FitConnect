using Npgsql;
using Dapper;
using FitConnect.Models;
using Microsoft.Extensions.Configuration;

namespace FitConnect.Repository
{
    public class AccountRepository(IConfiguration config): IAccountRepository
    {
        private readonly IConfiguration _config = config;

        public async Task<IEnumerable<Account>> GetAll()
        {
            using var connection = new NpgsqlConnection(
                _config.GetConnectionString("Postgres")
            );

            return await connection.QueryAsync<Account>(
                "SELECT id, created_at as createdAt, updated_at as updatedAt, username, password_hash as passwordHash, password_salt as passwordSalt, active FROM accounts;"
            );
        }

        public async Task<bool> Create(Account account)
        {
            using var connection = new NpgsqlConnection(
                _config.GetConnectionString("Postgres")
            );

            await connection.ExecuteAsync(
                "INSERT INTO accounts (username, password_hash, password_salt) VALUES (@username, @passwordHash, @passwordSalt)",
                new {username = account.username, passwordHash = account.passwordHash, passwordSalt = account.passwordSalt}
            );
            return true;
        }

        public async Task<bool> Update(Account account)
        {
            return true;
        }

        public async Task<bool> Delete(int id)
        {
            return true;
        }

        // public void Dispose()
        // {
        //     if (connection.State != System.Data.ConnectionState.Closed)
        //     {
        //         connection.Close();
        //     }
        //     GC.SuppressFinalize(this);  // Check why this is used
        // }
    }
}

namespace FitConnect.Models
{
    public record Account(
        Guid id,
        DateTime createdAt,
        DateTime updatedAt,
        string username,
        byte[] passwordHash,
        byte[] passwordSalt,
        bool active
    );
}

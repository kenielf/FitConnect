-- Connect to the database --
\c fitconnect;

-- People --
CREATE TABLE IF NOT EXISTS people (
    -- Metadata --
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    name TEXT NOT NULL,
    age INT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    email TEXT NULL,
    address TEXT NOT NULL,
    municipality TEXT NOT NULL,
    state TEXT NOT NULL,
    phone TEXT NULL
);

-- Connect to the database --
\c fitconnect;

-- Accounts --
CREATE TABLE IF NOT EXISTS accounts (
    -- Metadata --
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    username label_type NOT NULL,
    password BYTEA NOT NULL,
    salt BYTEA NOT NULL,
    active BOOLEAN DEFAULT TRUE
);

-- Session History --
CREATE TABLE IF NOT EXISTS session_history (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    -- Data --
    account_id UUID NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    registered_at TIMESTAMP NOT NULL
);

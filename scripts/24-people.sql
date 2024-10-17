-- Connect to the database --
\c fitconnect;

-- People --
CREATE TABLE IF NOT EXISTS people (
    -- Metadata --
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    name name_type NOT NULL,
    age INT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    email email_type NULL,
    address name_type NOT NULL,
    municipality name_type NOT NULL,
    state name_type NOT NULL,
    phone TEXT NULL,
    -- Constraints --
    CONSTRAINT max_age CHECK (age <= 100),
    CONSTRAINT cpf_length CHECK (length(cpf) = 11),
    CONSTRAINT number_length CHECK (length(cpf) = 11)
);

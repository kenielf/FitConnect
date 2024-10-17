-- Connect to the database --
\c fitconnect;

-- Admins --
CREATE TABLE IF NOT EXISTS admins (
    -- Metadata --
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    account_id UUID NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    person_id UUID NOT NULL REFERENCES people(id) ON DELETE CASCADE,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS admins_registered_trainers (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admin_id UUID NOT NULL REFERENCES admins(id),
    trainer_id UUID NOT NULL REFERENCES trainers(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS admins_registered_trainees (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admin_id UUID NOT NULL REFERENCES admins(id),
    trainee_id UUID NOT NULL REFERENCES trainees(id) ON DELETE CASCADE
);

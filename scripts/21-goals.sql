-- Connect to the database --
\c fitconnect;

-- Goals --
CREATE TABLE IF NOT EXISTS goals (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    name name_type NOT NULL,
    description description_type NULL,
    target_days INT,
    attained BOOLEAN DEFAULT FALSE
);

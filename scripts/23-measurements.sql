-- Connect to the database --
\c fitconnect;

-- Measurements --
CREATE TABLE IF NOT EXISTS measurements (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    type label_type NOT NULL,
    description description_type NULL,
    value float NOT NULL,
    recorded_at TIMESTAMP NOT NULL,
    unit_id INT NOT NULL REFERENCES units(id)
);

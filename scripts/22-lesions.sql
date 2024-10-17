-- Connect to the database --
\c fitconnect;

-- Lesions --
CREATE TABLE IF NOT EXISTS lesions (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    ocurred_at DATE NOT NULL,
    expected_recovery INT NOT NULL,
    recovered BOOLEAN DEFAULT FALSE,
    region label_type,
    description description_type NULL,
    CONSTRAINT valid_recovery_time CHECK (expected_recovery > 0)
);

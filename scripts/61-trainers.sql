-- Connect to the database --
\c fitconnect;

-- Trainers --
CREATE TABLE IF NOT EXISTS trainers (
    -- Metadata --
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    account_id UUID NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    person_id UUID NOT NULL REFERENCES people(id) ON DELETE CASCADE,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS trainers_workout_templates (
    -- Metadata --
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    trainer_id UUID NOT NULL REFERENCES trainers(id) ON DELETE CASCADE,
    workout_id INT NOT NULL REFERENCES workouts(id) ON DELETE CASCADE,
    active BOOLEAN DEFAULT TRUE
);

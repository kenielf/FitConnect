-- Connect to the database --
\c fitconnect;

-- Exercises --
CREATE TABLE IF NOT EXISTS exercises (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    name name_type NOT NULL,
    description description_type NULL,
    target_area label_type NOT NULL,
    intensity FLOAT NOT NULL,
    intensity_unit INT NOT NULL REFERENCES units(id),
    sets INT NOT NULL,
    repetitions INT NOT NULL,
    rest INTERVAL SECONDS NULL,
    -- Constraints --
    CONSTRAINT valid_intensity CHECK (intensity >= 0),
    CONSTRAINT valid_sets CHECK (sets > 0),
    CONSTRAINT valid_repetitions CHECK (repetitions > 0)
    CONSTRAINT valid_rest CHECK (rest > 0)
);

-- Workouts --
CREATE TABLE IF NOT EXISTS workouts (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    name name_type NOT NULL,
    description description_type NULL,
    rest INTERVAL SECONDS NULL,
    CONSTRAINT valid_rest CHECK (rest > 0)
);

CREATE TABLE IF NOT EXISTS workouts_exercises (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    -- Data --
    workout_id INT NOT NULL REFERENCES workouts(id) ON DELETE CASCADE,
    exercise_id INT NOT NULL REFERENCES exercises(id) ON DELETE CASCADE,
    repetitions INT NOT NULL,
    week_day weekday_type NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    completed_at TIMESTAMP NULL,
    idle_time INTERVAL SECONDS NULL,
    CONSTRAINT valid_repetitions CHECK (repetitions > 0),
    CONSTRAINT idle_time CHECK (idle_time > 0)
);


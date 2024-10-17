-- Connect to the database --
\c fitconnect;

-- Calendar week days and events
CREATE TYPE weekday_type AS ENUM (
    'SUNDAY',
    'MONDAY',
    'TUESDAY',
    'WEDNESDAY',
    'THURSDAY',
    'FRIDAY',
    'SATURDAY'
);

CREATE TABLE IF NOT EXISTS calendar_events (
    -- Metadata --
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- Data --
    date DATE NOT NULL,
    time TIME WITHOUT TIME ZONE NOT NULL,
    repeats BOOLEAN NOT NULL DEFAULT FALSE,
    interval_days INTERVAL DAY NULL,
    interval_weekdays weekday_type NULL
);

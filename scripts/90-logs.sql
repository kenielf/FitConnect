-- Connect to the database --
\c fitconnect;

-- Logs --
CREATE TYPE log_level AS ENUM (
    'DEBUG',
    'INFO',
    'WARN',
    'ERROR'
);

CREATE TABLE logs (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    level log_level NOT NULL,
    message log_message_type NOT NULL,
    timestamp TIMESTAMP NOT NULL
);

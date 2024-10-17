-- Connect to the database --
\c fitconnect;

-- Attendance --
CREATE TABLE IF NOT EXISTS attendance (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date DATE NOT NULL,
    time TIME NULL -- Specifying the time is optional --
);

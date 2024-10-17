-- Connect to the database --
\c fitconnect;

-- Storing Units --
CREATE TABLE IF NOT EXISTS units (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name name_type NOT NULL,
    abbreviation TEXT NOT NULL,
    CONSTRAINT abbreviation_length CHECK (length(abbreviation) <= 10)
);

INSERT INTO units (name, abbreviation) VALUES
    ('Millimeter', 'mm'),
    ('Centimeter', 'cm'),
    ('Meter', 'm'),
    ('Kilometer', 'km'),
    ('Inch', 'in'),
    ('Foot', 'ft'),
    ('Yard', 'yd'),
    ('Mile', 'mi'),

    ('Byte', 'B'),
    ('Kilobyte', 'KB'),
    ('Megabyte', 'MB'),
    ('Gigabyte', 'GB'),
    ('Terabyte', 'TB'),

    ('Grams', 'g'),
    ('Kilograms', 'g'),

    ('Calorie', 'cal'),
    ('Kilocalorie', 'kcal'),

    ('Celsius', '°C'),
    ('Fahrenheit', '°F'),
    ('Kelvin', 'K');

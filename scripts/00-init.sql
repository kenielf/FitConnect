CREATE DATABASE fitconnect ENCODING 'UTF8';

GRANT ALL PRIVILEGES ON DATABASE fitconnect TO postgres;

\c fitconnect;
CREATE EXTENSION "uuid-ossp"; -- Support for UUID v4

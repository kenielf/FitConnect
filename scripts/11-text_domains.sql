-- Connect to the database --
\c fitconnect;

-- Common text domains --
CREATE DOMAIN label_type AS TEXT
   CONSTRAINT check_label_length
   CHECK (length(value) <= 50);

CREATE DOMAIN name_type AS TEXT
   CONSTRAINT check_name_length
   CHECK (length(value) <= 100);

CREATE DOMAIN email_type AS TEXT
   CONSTRAINT check_email_length
   CHECK (length(value) <= 250);

CREATE DOMAIN description_type AS TEXT
   CONSTRAINT check_description_length
   CHECK (length(value) <= 1000);

CREATE DOMAIN log_message_type AS TEXT
   CONSTRAINT check_log_length
   CHECK (length(value) <= 500);

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE DATABASE jwttutorial;

CREATE TABLE users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

SELECT * FROM users;

INSERT INTO users (name, email, password) VALUES ('Ervin', 'ervin@email.com','admin');

--psql -U postgres
--\c jwttutorial
--\dt
--heroku pg:psql
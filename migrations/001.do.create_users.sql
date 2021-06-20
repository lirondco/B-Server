CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE users (
    id uuid DEFAULT uuid_generate_v4 () UNIQUE,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    isActive BOOLEAN NOT NULL DEFAULT false,
    validationId uuid DEFAULT uuid_generate_v4 (),
    validationDate TIMESTAMP DEFAULT now() NOT NULL,
    joinDate TIMESTAMP DEFAULT now() NOT NULL
);
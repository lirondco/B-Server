CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE tags (
    id uuid DEFAULT uuid_generate_v4 () UNIQUE,
    name TEXT NOT NULL,
    fieldId uuid
      REFERENCES fields(id) ON DELETE CASCADE NOT NULL
);
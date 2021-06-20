CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE tags (
    id uuid DEFAULT uuid_generate_v4 (),
    name TEXT NOT NULL,
    fieldId uuid
      REFERENCES fields(id) ON DELETE CASCADE NOT NULL
);
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE templates (
    id uuid DEFAULT uuid_generate_v4 () UNIQUE,
    userId uuid
      REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    name TEXT NOT NULL,
    fields json
);
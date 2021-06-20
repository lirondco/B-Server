CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE accounts (
    id uuid DEFAULT uuid_generate_v4 (),
    name TEXT NOT NULL,
    balance NUMERIC NOT NULL,
    ownerId uuid
      REFERENCES users(id) ON DELETE CASCADE NOT NULL,);
    isActive BOOLEAN NOT NULL DEFAULT TRUE,
    dueDate TIMESTAMP
);



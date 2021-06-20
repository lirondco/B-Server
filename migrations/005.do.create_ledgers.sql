CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE ledgers (
    id uuid DEFAULT uuid_generate_v4 () UNIQUE,
    date TIMESTAMP DEFAULT now() NOT NULL,
    ownerId uuid
      REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    totalExpense NUMERIC NOT NULL,
    totalIncome NUMERIC NOT NULL,
    accountId uuid
      REFERENCES accounts(id) ON DELETE CASCADE NOT NULL
);
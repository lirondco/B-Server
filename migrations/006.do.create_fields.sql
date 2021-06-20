CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE fields (
    id uuid DEFAULT uuid_generate_v4 (),
    key TEXT NOT NULL,
    userId uuid
      REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    value NUMERIC NOT NULL,
    ledgerId uuid
      REFERENCES ledgers(id) ON DELETE CASCADE NOT NULL
);
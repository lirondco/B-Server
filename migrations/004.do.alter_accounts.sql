CREATE TYPE account_type AS ENUM (
  'Checking',
  'Savings',
  'Credit Card',
  'Other'
);

ALTER TABLE accounts
    ADD COLUMN
        type account_type;
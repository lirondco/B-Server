CREATE TYPE field_type AS ENUM (
  'Income',
  'Expense'
);

CREATE TYPE field_category AS ENUM (
  'Salary',
  'Housing',
  'Medical',
  'Travel',
  'Food',
  'Clothing',
  'Leisure',
  'Recurring Bill',
  'Transport',
  'Miscellaneous'
);

ALTER TABLE fields
    ADD COLUMN
        type field_type;

ALTER TABLE fields
    ADD COLUMN
        category field_category;
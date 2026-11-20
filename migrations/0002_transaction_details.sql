ALTER TABLE transactions ADD COLUMN operator_name TEXT;
ALTER TABLE transactions ADD COLUMN account_type TEXT NOT NULL DEFAULT 'electronic';
ALTER TABLE transactions ADD COLUMN counterparty TEXT;
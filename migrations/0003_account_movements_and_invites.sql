CREATE TABLE IF NOT EXISTS account_movements (id TEXT PRIMARY KEY, transaction_id TEXT NOT NULL REFERENCES transactions(id), account_id TEXT NOT NULL REFERENCES accounts(id), delta INTEGER NOT NULL, created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP);
CREATE INDEX IF NOT EXISTS account_movements_account ON account_movements(account_id,created_at);
CREATE INDEX IF NOT EXISTS account_movements_transaction ON account_movements(transaction_id);
ALTER TABLE invitations ADD COLUMN invited_by TEXT REFERENCES users(id);

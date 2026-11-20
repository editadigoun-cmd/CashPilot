ALTER TABLE daily_closures ADD COLUMN client_created_id TEXT;
ALTER TABLE daily_closures ADD COLUMN expected_cash INTEGER;
ALTER TABLE daily_closures ADD COLUMN cash_difference INTEGER;
ALTER TABLE daily_closures ADD COLUMN electronic_differences TEXT NOT NULL DEFAULT '{}';
CREATE UNIQUE INDEX IF NOT EXISTS closures_client_created_unique ON daily_closures(client_created_id) WHERE client_created_id IS NOT NULL;
CREATE INDEX IF NOT EXISTS closures_branch_date ON daily_closures(branch_id,business_date);
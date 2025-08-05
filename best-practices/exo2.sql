-- Create roles
CREATE ROLE FinanceT NOINHERIT;
GRANT CONNECT ON DATABASE mydb TO FinanceT;
GRANT USAGE ON SCHEMA public TO FinanceT;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO FinanceT;

CREATE ROLE manager;
GRANT INSERT, UPDATE, DELETE ON ALL TABLES TO manager;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO manager;

-- Enable Row-Level Security on payments table
ALTER TABLE payments ENABLE ROW LEVEL SECURITY;

-- Policy: Finance team can see all rows
CREATE POLICY finance_policy ON payment
  FOR SELECT
  TO "FinanceT"
  USING (true);

-- Policy: Regional managers can only see payments in their region
-- (Assumes payment table has a 'region' column and manager's region is set in their session)
CREATE POLICY manager_policy ON payment
  FOR SELECT
  TO manager
  USING (region = current_setting('app.current_region'));
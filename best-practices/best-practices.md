### Exercise 1: Naming Refactor
CREATE TABLE trns (
  id INT,
  amt NUMERIC,
  ts TIMESTAMP
);

CREATE TABLE turn(
    turn_id INT PRIMARY KEY,
    turn_amount NUMERIC,
    turn_time TIMESTAMP
);


### Exercise 2: Implement RLS
Design a row-level security policy for a table payments where:
- Finance team should see all rows.
- Regional managers should only see payments in their region.

solution : [exo2](exo2.sql)

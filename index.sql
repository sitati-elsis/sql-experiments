-- How to create an index in SQL

CREATE INDEX IX_tblEmployee_Salary
ON tblEmployee (Salary ASC)

-- USING SYTEM BASED STORED PROCEDURES TO LIST INDEXES
-- Listing all indexes on tblEmployees
EXEC sp_Helpindex tblEmployee

-- Dropping an Index
DROP INDEX tblEmployee.IX_tblEmployee_Salary
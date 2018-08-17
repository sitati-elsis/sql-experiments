USE ENTERTAINMENT -- databasename
GO
CREATE TRIGGER trgNoNewTables
ON DATABASE -- Define the scope of the trigger since you can create a ddl trigger to a server
FOR CREATE_TABLE , ALTER_TABLE, DROP_TABLE -- this ddl trigger will only work for the create table event in the database
AS
BEGIN 
    PRINT 'No changes to tables please'
    ROLLBACK
END


-- Tesing the ddl trigger

USE  ENTERTAINMENT
GO

-- CREATING A TEST TABLE
CREATE TABLE tableTest (ID INT)
GO

-- DROPPING AN EXISTING TABLE
DROP TABLE elsisTest
GO
-- USE THE ALTER KEYWORD TO EDIT OR CHANGE YOUR TRIGGERS

-- REMOVING A DDL TRIGGER
USE  ENTERTAINMENT
GO
DROP TRIGGER trgNoNewTables ON DATABASE

-- ENABLING AND DISABLING A DDL TIGGER
USE  ENTERTAINMENT
GO
DISABLE TRIGGER trgNoNewTables ON DATABASE
GO

USE  ENTERTAINMENT
GO
ENABLE TRIGGER trgNoNewTables ON DATABASE
GO


-- DISABLING  AND ENABLING ALL TRIGGERS AT ONCE
USE  ENTERTAINMENT
GO
DISABLE TRIGGER ALL ON DATABASE
GO

USE  ENTERTAINMENT
GO
ENABLE TRIGGER ALL ON DATABASE
GO

A DDL TRIGGER SCOPED TO THE DATABASE SERVER

USE ENTERTAINMENT -- databasename
GO
CREATE TRIGGER trgNoNewTables
ON ALL SERVERS -- Define the scope of the trigger since you can create a ddl trigger to a server
FOR CREATE_TABLE , ALTER_TABLE, DROP_TABLE -- this ddl trigger will only work for the create table event in the database
AS
BEGIN 
    PRINT 'No changes to tables please'
    ROLLBACK
END

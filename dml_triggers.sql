USE ENTERTAINMENT -- Database name
GO

CREATE TRIGGER trgMoviesChanged
ON  MOVIES -- TABLE WHERE TRIGGER WILL HAPPEN
AFTER INSERT , UPDATE, DELETE  -- The events you want the trigger to handle
AS
BEGIN
-- Define what you want the trigger to do
    PRINT 'Something happened to the movie table'
END
GO

-- Testing triggers
-- inserting a new record to the table
INSERT INTO MOVIES(MOVIEID, MOVIENAME)
VALUES (35465, 'TERMINAATOR')

-- Updating a new record to the table
UPDATE MOVIES
SET MOVIECREATEDDAY = GETDATE()
WHERE MOVIEID = 34353

-- Deleting a record 
DELETE FROM MOVIES
WHERE MOVIEID = 3373

-- USING AN INSTEAD OF TRIGGER

USE ENTERTAINMENT
GO 
CREATE TIGGER trgMusicChanged
ON trgMusicChanged
INSTEAD OF INSERT
AS
BEGIN
    RAISERROR("No more music can be created")
END
GO


-- DELETING A TRIGGER
USE ENTERTAINMENT
GO
DROP TRIGGER trgMoviesChanged
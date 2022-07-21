CREATE FUNCTION UserNames()
RETURNS TABLE AS RETURN
(SELECT DB_NAME(dbid) AS DB, spid , loginame, program_name, status
FROM sys.sysprocesses)

--====================

SELECT *
FROM UserNames()

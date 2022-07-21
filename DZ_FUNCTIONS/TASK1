CREATE FUNCTION SizeOfDatabases()
RETURNS TABLE AS RETURN
(SELECT DB_NAME(database_id) AS 'DATABASE NAME',
SUM(size*8.0/1024) AS 'SIZE MB'
FROM sys.master_files
GROUP BY database_id)

--===================

SELECT*
FROM dbo.SizeOfDatabases()

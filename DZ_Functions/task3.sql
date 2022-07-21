CREATE FUNCTION ShowColumn(@name_of_Table nvarchar(50))
RETURNS TABLE AS RETURN
(SELECT TABLE_NAME, COLUMN_NAME, IS_NULLABLE,  DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = @name_of_Table)

--====================================

SELECT*
FROM dbo.ShowColumn('S_Cards')

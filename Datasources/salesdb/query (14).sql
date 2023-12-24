DROP PROCEDURE IF EXISTS [usp_write_watermark];
GO
CREATE PROCEDURE [usp_write_watermark] @LastModifiedtime datetime, @TableName varchar(50)
AS
BEGIN

UPDATE [watermarktable]
SET [watermark_value] = @LastModifiedtime
WHERE [table_name] = @TableName

END;
GO
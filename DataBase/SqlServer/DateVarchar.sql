--转时间
DECLARE @dt DATETIME=getdate();
DECLARE @Tb TABLE(Number int)
DECLARE @i int=0;
WHILE(@i<=14)
	BEGIN
	INSERT INTO @Tb SELECT @i;
	SET @i=@i+1;
	END;

SET @i=20;
WHILE(@i<=25)
	BEGIN
	INSERT INTO @Tb SELECT @i;
	SET @i=@i+1;
	END;

SET @i=100;
WHILE(@i<=114)
	BEGIN
	INSERT INTO @Tb SELECT @i;
	SET @i=@i+1;
	END;

INSERT INTO @Tb SELECT 120 UNION SELECT 121 UNION SELECT 126 UNION SELECT 130;

SELECT CONCAT('CONVERT(varchar(100), GETDATE(), ',t.Number,')') Keys,CONVERT(varchar(100), GETDATE(), t.Number) Value FROM @Tb t;

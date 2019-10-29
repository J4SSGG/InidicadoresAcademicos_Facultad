USE Admisiones_DWH;

DROP TABLE IF EXISTS Staging.Fecha;

CREATE TABLE Staging.[Fecha](
	[DateKey] [int] NOT NULL PRIMARY KEY,
	[Date] [date] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[DaySuffix] [char](2) NOT NULL,
	[Weekday] [tinyint] NOT NULL,
	[WeekDayName] [varchar](10) NOT NULL,
	[WeekDayName_Short] [char](3) NOT NULL,
	[WeekDayName_FirstLetter] [char](1) NOT NULL,
	[DOWInMonth] [tinyint] NOT NULL,
	[DayOfYear] [smallint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[Month] [tinyint] NOT NULL,
	[MonthName] [varchar](10) NOT NULL,
	[MonthName_Short] [char](3) NOT NULL,
	[MonthName_FirstLetter] [char](1) NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) NOT NULL,
	[Year] [int] NOT NULL,
	[MMYYYY] [char](6) NOT NULL,
	[MonthYear] [char](7) NOT NULL,
	[IsWeekend] [bit] NOT NULL);

DECLARE @INICIO DATE = '2016-01-01';
DECLARE @ACTUAL DATE = '2022-12-31';

WHILE (@INICIO < @ACTUAL)
	BEGIN
		INSERT INTO Staging.Fecha
                ([DateKey], 
                 [Date], 
                 [Day], 
                 [DaySuffix], 
                 [Weekday], 
                 [WeekDayName], 
                 [WeekDayName_Short], 
                 [WeekDayName_FirstLetter], 
                 [DOWInMonth], 
                 [DayOfYear], 
                 [WeekOfMonth], 
                 [WeekOfYear], 
                 [Month], 
                 [MonthName], 
                 [MonthName_Short], 
                 [MonthName_FirstLetter], 
                 [Quarter], 
                 [QuarterName], 
                 [Year], 
                 [MMYYYY], 
                 [MonthYear], 
                 [IsWeekend]
                )
                       SELECT DateKey = YEAR(@INICIO) * 10000 + MONTH(@INICIO) * 100 + DAY(@INICIO), 
                              DATE = @INICIO, 
                              Day = DAY(@INICIO), 
                              [DaySuffix] = CASE
                                                WHEN DAY(@INICIO) = 1
                                                     OR DAY(@INICIO) = 21
                                                     OR DAY(@INICIO) = 31
                                                THEN 'st'
                                                WHEN DAY(@INICIO) = 2
                                                     OR DAY(@INICIO) = 22
                                                THEN 'nd'
                                                WHEN DAY(@INICIO) = 3
                                                     OR DAY(@INICIO) = 23
                                                THEN 'rd'
                                                ELSE 'th'
                                            END, 
                              WEEKDAY = DATEPART(dw, @INICIO), 
                              WeekDayName = DATENAME(dw, @INICIO), 
                              WeekDayName_Short = UPPER(LEFT(DATENAME(dw, @INICIO), 3)), 
                              WeekDayName_FirstLetter = LEFT(DATENAME(dw, @INICIO), 1), 
                              [DOWInMonth] = DAY(@INICIO), 
                              [DayOfYear] = DATENAME(dy, @INICIO), 
                              [WeekOfMonth] = DATEPART(WEEK, @INICIO) - DATEPART(WEEK, DATEADD(MM, DATEDIFF(MM, 0, @INICIO), 0)) + 1, 
                              [WeekOfYear] = DATEPART(wk, @INICIO), 
                              [Month] = MONTH(@INICIO), 
                              [MonthName] = DATENAME(mm, @INICIO), 
                              [MonthName_Short] = UPPER(LEFT(DATENAME(mm, @INICIO), 3)), 
                              [MonthName_FirstLetter] = LEFT(DATENAME(mm, @INICIO), 1), 
                              [Quarter] = DATEPART(q, @INICIO), 
                              [QuarterName] = CASE
                                                  WHEN DATENAME(qq, @INICIO) = 1
                                                  THEN 'First'
                                                  WHEN DATENAME(qq, @INICIO) = 2
                                                  THEN 'Second'
                                                  WHEN DATENAME(qq, @INICIO) = 3
                                                  THEN 'Third'
                                                  WHEN DATENAME(qq, @INICIO) = 4
                                                  THEN 'Fourth'
                                              END, 
                              [Year] = YEAR(@INICIO), 
                              [MMYYYY] = RIGHT('0' + CAST(MONTH(@INICIO) AS VARCHAR(2)), 2) + CAST(YEAR(@INICIO) AS VARCHAR(4)), 
                              [MonthYear] = CAST(YEAR(@INICIO) AS VARCHAR(4)) + UPPER(LEFT(DATENAME(mm, @INICIO), 3)), 
                              [IsWeekend] = CASE
                                                WHEN DATENAME(dw, @INICIO) = 'Sunday'
                                                     OR DATENAME(dw, @INICIO) = 'Saturday'
                                                THEN 1
                                                ELSE 0
                                            END     ;
                SET @INICIO = DATEADD(DD, 1, @INICIO);
	END;

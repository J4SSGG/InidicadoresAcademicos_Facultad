USE Admisiones_DWH;
IF NOT EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'Staging' )
    EXEC('CREATE SCHEMA [Staging]');
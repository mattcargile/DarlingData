USE [master];
GO

/* Test Cases 
 * 1. All iterations of success cases
 * 2. All iterations of failure cases
 * 3. All iterations of silent cases
 * 4. TO DO: Failure if database name and object name is provided and it doesn't exist
 */
EXECUTE dbo.sp_HumanEvents_matt
    @event_type         = N'query',
    @database_name      = N'mast%',
    @object_name        = N'%whoisacti%',
    @client_app_name    = N'%sql%',
    @username           = N'%mat%',
    @seconds_sample     = 2,
    @debug              = 1;
GO
EXECUTE dbo.sp_HumanEvents_matt
    @event_type = N'wait',
    @database_name = N'mast%',
    @object_name = N'%whoisacti%',
    @client_app_name = N'%sql%',
    @username = N'%mat%',
    @seconds_sample = 2;
GO
EXECUTE dbo.sp_HumanEvents_matt
    @event_type = N'recompile',
    @database_name = N'mast%',
    @object_name = N'%whoisacti%',
    @client_app_name = N'%sql%',
    @username = N'%mat%',
    @seconds_sample = 2;
GO
EXECUTE dbo.sp_HumanEvents_matt
    @event_type = N'compile',
    @database_name = N'mast%',
    @object_name = N'%whoisacti%',
    @client_app_name = N'%sql%',
    @username = N'%mat%',
    @seconds_sample = 2;
GO
/*
Msg 25716, Level 16, State 1, Line 43
The predicate on event, "sqlserver.blocked_process_report", exceeds the maximum length of 3000 characters.
*/
EXECUTE dbo.sp_HumanEvents_matt
    @event_type         = N'lock',
    @database_name      = N'%',
    @object_name        = N'%',
    @client_app_name    = N'%sql%',
    @username           = N'%mat%',
    @seconds_sample     = 2,
    @debug              = 1;
GO


EXECUTE dbo.sp_HumanEvents
    @event_type = N'wait',
    @database_name = N'master',
    @object_name = N'sp_WhoIsActive',
    @seconds_sample = 2;
GO
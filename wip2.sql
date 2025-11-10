

use master;
go

exec dbo.sp_HumanEvents_matt
@event_type = N'recompile'
, @database_name = N'master'
, @object_name = N'%whoisacti%'
,@client_app_name = N'%sql%'
--,@gimme_danger = 1
--,@query_duration_ms = 0
--, @keep_alive = 1
, @skip_plans = 1
--,@seconds_sample = 30
,@username = N'%carg%'
, @debug = 1
, @help = 1;
go

/*
exec dbo.sp_HumanEvents_matt @output_database_name = N'humanevt', @debug = 1;

exec dbo.sp_HumanEvents_matt @output_database_name = N'humanevt', @debug = 1, @cleanup = 1;


*/



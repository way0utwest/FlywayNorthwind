CREATE TABLE [dbo].[Logger]
(
[LogID] [int] NOT NULL,
[LogDate] [datetime] NULL CONSTRAINT [DF__Logger__LogDate__02FC7413] DEFAULT (sysutcdatetime()),
[LogMsg] [varchar] (2000) NULL,
[WhoChanged] [varchar] (20) NULL
)
GO
ALTER TABLE [dbo].[Logger] ADD CONSTRAINT [LoggerPK] PRIMARY KEY CLUSTERED ([LogID])
GO

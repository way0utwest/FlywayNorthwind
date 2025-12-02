CREATE TABLE [dbo].[DBALog]
(
[LogID] [int] NOT NULL IDENTITY(1, 1),
[LogDate] [datetime2] (3) NULL,
[LogMessage] [varchar] (1000) NULL
)
GO

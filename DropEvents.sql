IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event_Contacts]') AND type in (N'U'))
DROP TABLE [dbo].[Event_Contacts]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event_Eligibilities]') AND type in (N'U'))
DROP TABLE [dbo].[Event_Eligibilities]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event_Photos]') AND type in (N'U'))
DROP TABLE [dbo].[Event_Photos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event_Rules]') AND type in (N'U'))
DROP TABLE [dbo].[Event_Rules]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event_Structure]') AND type in (N'U'))
DROP TABLE [dbo].[Event_Structure]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Events]') AND type in (N'U'))
DROP TABLE [dbo].[Events]
GO

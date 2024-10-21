IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistrationEvents]') AND type in (N'U'))
DROP TABLE [dbo].[RegistrationEvents]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeamMembers]') AND type in (N'U'))
DROP TABLE [dbo].[TeamMembers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registrations]') AND type in (N'U'))
DROP TABLE [dbo].[Registrations]
GO

-- IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
-- DROP TABLE [dbo].[Payments]
-- GO

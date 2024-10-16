CREATE TABLE [dbo].[users] (
  [id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
  [fullname] VARCHAR(255) NOT NULL,
  [email] VARCHAR(255) NOT NULL UNIQUE,
  [password] VARCHAR(255) NOT NULL,
  [phone] VARCHAR(50) DEFAULT '',
  [accountType] VARCHAR(50) DEFAULT 'Admin',
  [created_at] DATETIME2 DEFAULT GETDATE()  
);

CREATE UNIQUE INDEX idx_email ON Users(email);

CREATE TABLE [dbo].[AboutUs]
(
  [id] INT PRIMARY KEY IDENTITY(1,1),
  [title] VARCHAR(255) NOT NULL,
  [description] TEXT NOT NULL,
  [videos] VARCHAR(255) NOT NULL,
)

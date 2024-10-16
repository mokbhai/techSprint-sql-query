CREATE TABLE [dbo].[otps]
(
  [id] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
  [otp] VARCHAR(255) NOT NULL,
  [otpType] VARCHAR(50) NOT NULL, 
  [mailId] VARCHAR(255) NOT NULL,    
  [createdAt] DATETIME2 DEFAULT GETDATE()
)
CREATE TABLE [dbo].[messages]
(
    [id] INT PRIMARY KEY IDENTITY(1,1),  -- Auto-incrementing integer ID
    [phone] VARCHAR(20) NOT NULL,
    [email] VARCHAR(255) NOT NULL,
    [message] TEXT NOT NULL,
    [isReaded] BIT DEFAULT 0,       -- Boolean (0 = false, 1 = true)
    [isDeleted] BIT DEFAULT 0,       -- Boolean
    [createdAt] DATETIME DEFAULT GETDATE(), -- Timestamp
    [updatedAt] DATETIME DEFAULT GETDATE()  -- Timestamp)
)

CREATE TABLE ContactUs (
    [id] INT PRIMARY KEY IDENTITY(1,1), -- Auto-incrementing ID
    [fullname] VARCHAR(255) NOT NULL,
    [phone] VARCHAR(20) NOT NULL,
    [email] VARCHAR(255),
    [designation] VARCHAR(255) NOT NULL,
    [isDeleted] BIT DEFAULT 0,          -- Boolean (0 = false, 1 = true)
    [createdAt] DATETIME DEFAULT GETDATE(), -- Timestamp
    [updatedAt] DATETIME DEFAULT GETDATE()  -- Timestamp
);


CREATE TABLE [dbo].[Payments]
(
  [id] INT PRIMARY KEY IDENTITY(1,1), 
  paymentStatus VARCHAR(255) NOT NULL DEFAULT 'Pending' CHECK (paymentStatus IN ('Completed', 'Pending', 'Failed', 'Refunded')),
  registrationId INT, -- Foreign key linking to Registrations table
  amount DECIMAL(10,2), 
  createdAt DATETIME2(7) DEFAULT GETUTCDATE(),

  FOREIGN KEY (registrationId) REFERENCES Registrations(id) ON DELETE CASCADE
)


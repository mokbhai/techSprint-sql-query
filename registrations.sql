CREATE TABLE Registrations (
    id INT PRIMARY KEY IDENTITY(1,1), 
    [key] VARCHAR(255), 
    [email] VARCHAR(255), 
    [phone] VARCHAR(255), 
    [name] VARCHAR(255), 
    teamName VARCHAR(255), 
    teamId VARCHAR(255), 
    amount DECIMAL(10,2), 
    paymentStatus VARCHAR(255) NOT NULL DEFAULT 'Pending' CHECK (paymentStatus IN ('Completed', 'Pending', 'Failed', 'Refunded')), -- Use CHECK constraint for specific values
    paymentId VARCHAR(255),
    isDeleted BIT DEFAULT 0,
    createdAt DATETIME2(7) DEFAULT GETUTCDATE(),
    updatedAt DATETIME2(7) DEFAULT GETUTCDATE()
);

CREATE TABLE TeamMembers (
    id INT PRIMARY KEY IDENTITY(1,1),
    registrationId INT, -- Foreign key linking to Registrations table
    fullname VARCHAR(255) NOT NULL,
    gender VARCHAR(255) CHECK (gender IN ('Male', 'Female', 'Other', 'Rather not say')), -- CHECK constraint for gender
    phoneNumber VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    class VARCHAR(255), -- Assuming this is something like 'grade level' or 'skill level'
    optAccomodation BIT DEFAULT 0, -- Using BIT for boolean
    FOREIGN KEY (registrationId) REFERENCES Registrations(id) ON DELETE CASCADE
);

CREATE TABLE RegistrationEvents (
    registrationId INT,
    eventId INT,
    PRIMARY KEY (registrationId, eventId), -- Composite key
    FOREIGN KEY (registrationId) REFERENCES Registrations(id) ON DELETE CASCADE,
    FOREIGN KEY (eventId) REFERENCES Events(id) ON DELETE CASCADE
);


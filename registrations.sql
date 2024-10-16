CREATE TABLE Registrations (
    id INT PRIMARY KEY IDENTITY(1,1), -- Auto-incrementing primary key [[1]]
    teamName VARCHAR(255),  -- Allow null for individual registrations
    teamId VARCHAR(255), -- Can be NULL
    amount DECIMAL(19,4), --  For currency, adjust precision/scale as needed
    paymentStatus VARCHAR(255) NOT NULL DEFAULT 'Pending' CHECK (paymentStatus IN ('Completed', 'Pending', 'Failed', 'Refunded')), -- Use CHECK constraint for specific values
    paymentId INT, -- Foreign key to Payments table
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


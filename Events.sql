CREATE TABLE [dbo].[Events] (
    [id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),  -- Primary key, auto-incrementing
    [eventName] VARCHAR(255) NOT NULL,
    [eventType] VARCHAR(255) NOT NULL,
    [description] TEXT NOT NULL,
    [organiserName] VARCHAR(255) NOT NULL,
    [landmark] VARCHAR(255) NOT NULL,
    [city] VARCHAR(255) NOT NULL,
    [state] VARCHAR(255) NOT NULL,
    [country] VARCHAR(255) NOT NULL,
    [eventDate] DATETIME2 NOT NULL,
    [day] INT NOT NULL,
    [shift] VARCHAR(255) DEFAULT ('Morning') NOT NULL,
    [category] VARCHAR(255)  DEFAULT ('jr') NULL,
    [participants_min] INT DEFAULT 2,
    [participants_max] INT DEFAULT 4,
    [registrationCharge_currency] VARCHAR(3) DEFAULT 'INR',
    [registrationCharge_amount] DECIMAL(10, 2) DEFAULT 0.00,  -- Adjust precision and scale as needed
    [registrationCharge_isMandatory] BIT DEFAULT 1,
    [uplodedBy] INT,  -- Foreign key to Users table
    [deletedBy] INT,  -- Foreign key to Users table
    [isdeleted] BIT           DEFAULT ((0)) NULL,
    [createdAt] DATETIME2 (7) DEFAULT (getutcdate()) NULL,
    [updatedAt] DATETIME2 (7) DEFAULT (getutcdate()) NULL,
    [avengerCharacter] INT, -- Foreign key to Files table
    [ruleBook] INT, -- Foreign key to Files table
    
    CHECK ([category]='jr' OR [category]='sr'),
    CHECK ([shift]='Morning' OR [shift]='Evening'),
    FOREIGN KEY ([ruleBook]) REFERENCES [dbo].[Files]([id]),    
    FOREIGN KEY ([avengerCharacter]) REFERENCES [dbo].[Files]([id]),
    FOREIGN KEY ([uplodedBy]) REFERENCES [dbo].[Users]([id]),
    FOREIGN KEY ([deletedBy]) REFERENCES [dbo].[Users]([id]) 
  );

CREATE TABLE Event_Structure (
    event_id INT,
    structure VARCHAR(255),
    FOREIGN KEY (event_id) REFERENCES Events(id) ON DELETE CASCADE
);

CREATE TABLE Event_Eligibilities (
    event_id INT,
    eligibility VARCHAR(255) NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events(id) ON DELETE CASCADE
);

CREATE TABLE Event_Rules (
    [event_id] INT,
    [rule] TEXT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events(id) ON DELETE CASCADE
);

CREATE TABLE Event_Photos (
    event_id INT,
    photo_id INT,
    FOREIGN KEY (event_id) REFERENCES Events(id) ON DELETE CASCADE,
    FOREIGN KEY (photo_id) REFERENCES Files(id) ON DELETE CASCADE
);

CREATE TABLE Event_Contacts (
    event_id INT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events(id) ON DELETE CASCADE
);

CREATE TABLE Accommodations (
    [id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    price DECIMAL(10, 2) DEFAULT 0.00,
);



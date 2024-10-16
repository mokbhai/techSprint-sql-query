CREATE TABLE [dbo].[files] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [name]      VARCHAR (255) NOT NULL,
    [type]      VARCHAR (255) NOT NULL,
    [file]      VARCHAR (255) NOT NULL,
    [till]      VARCHAR (255) DEFAULT ('Temporary') NULL,
    [used]      VARCHAR (255) NULL,
    [uplodedBy] INT           NULL,
    [isdeleted] BIT           DEFAULT ((0)) NULL,
    [createdAt] DATETIME2 (7) DEFAULT (getutcdate()) NULL,
    [updatedAt] DATETIME2 (7) DEFAULT (getutcdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([till]='Permanent' OR [till]='Temporary'),
    CHECK ([used]='AvengerCharacter' OR [used]='Brochure' OR [used]='AboutUs' OR [used]='ContactUs' OR [used]='MediaPhotos' OR [used]='EventPhotos' OR [used]='RuleBook' OR [used]='Gallery'),
    FOREIGN KEY ([uplodedBy]) REFERENCES [dbo].[Users]([id])
);

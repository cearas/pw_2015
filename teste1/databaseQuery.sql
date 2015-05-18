

CREATE TABLE [dbo].[User] (
    [user_id]       INT          IDENTITY (1, 1) NOT NULL,
    [user_name]     VARCHAR (50) NOT NULL,
    [user_pw]       VARCHAR (50) NOT NULL,
    [user_district] VARCHAR (50) NULL,
    [user_phone]    VARCHAR (50) NULL,
    [user_address]  VARCHAR (50) NULL,
    [user_mail]     VARCHAR (50) NULL,
    [user_nif]      VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([user_id] ASC)
);

CREATE TABLE [dbo].[Vet] (
    [id_vet]          INT           NOT NULL,
    [vet_name]        VARCHAR (50)  NULL,
    [vet_pw]          VARCHAR (MAX) NULL,
    [vet_phone]       NUMERIC (9)   NULL,
    [vet_district]    VARCHAR (20)  NULL,
    [vet_specialties] VARCHAR (50)  NULL,
    [vet_mail]        VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([id_vet] ASC)
);

CREATE TABLE [dbo].[Pet] (
    [id_pet]     INT          NOT NULL,
    [pet_name ]  VARCHAR (50) NULL,
    [pet_age]    VARCHAR (50) NULL,
    [pet_race]   VARCHAR (50) NULL,
    [pet_gender] VARCHAR (50) NULL,
    [pet_photo]  IMAGE        NULL,
    [id_user]    INT          NULL,
    PRIMARY KEY CLUSTERED ([id_pet] ASC),
    CONSTRAINT [FK_Pet_ToTable] FOREIGN KEY ([id_user]) REFERENCES [dbo].[User] ([user_id])
);


CREATE TABLE [dbo].[apoint] (
    [Id_apoint]        INT           NOT NULL,
    [apoint_date]      DATETIME      NULL,
    [apoint_subject]   VARCHAR (255) NULL,
    [apoint_type]      VARCHAR (50)  NULL,
    [apoint_specialty] VARCHAR (50)  NULL,
    [id_vet]           INT           NULL,
    [id_pet]           INT           NULL,
    [id_user]          INT           NULL,
    PRIMARY KEY CLUSTERED ([Id_apoint] ASC),
    CONSTRAINT [FK_apoint_Pet] FOREIGN KEY ([id_pet]) REFERENCES [dbo].[Pet] ([id_pet]),
    CONSTRAINT [FK_apoint_User] FOREIGN KEY ([id_user]) REFERENCES [dbo].[User] ([user_id]),
    CONSTRAINT [FK_apoint_Vet] FOREIGN KEY ([id_vet]) REFERENCES [dbo].[Vet] ([id_vet])
);

CREATE TABLE [dbo].[Medication] (
    [Id_med]   INT        NOT NULL,
    [med_name] NCHAR (10) NULL,
    [id_pet]   INT        NULL,
    [id_vet]   INT        NULL,
    PRIMARY KEY CLUSTERED ([Id_med] ASC),
    CONSTRAINT [FK_Medication_Vet] FOREIGN KEY ([id_vet]) REFERENCES [dbo].[Vet] ([id_vet]),
    CONSTRAINT [FK_Medication_Pet] FOREIGN KEY ([id_pet]) REFERENCES [dbo].[Pet] ([id_pet])
);

CREATE TABLE [dbo].[TecFile] (
    [Id_TecFile]     INT           NOT NULL,
    [TecFile_review] VARCHAR (255) NULL,
    [TecFile_status] VARCHAR (50)  NULL,
    [id_pet]         INT           NULL,
    [id_vet]         INT           NULL,
    [id_user]        INT           NULL,
    [id_med]         INT           NULL,
    PRIMARY KEY CLUSTERED ([Id_TecFile] ASC),
    CONSTRAINT [FK_TecFile_Med] FOREIGN KEY ([id_med]) REFERENCES [dbo].[Medication] ([Id_med]),
    CONSTRAINT [FK_TecFile_Pet] FOREIGN KEY ([id_pet]) REFERENCES [dbo].[Pet] ([id_pet]),
    CONSTRAINT [FK_TecFile_User] FOREIGN KEY ([id_user]) REFERENCES [dbo].[User] ([user_id]),
    CONSTRAINT [FK_TecFile_Vet] FOREIGN KEY ([id_vet]) REFERENCES [dbo].[Vet] ([id_vet])
);

CREATE TABLE [dbo].[Comments] (
    [id_com]     INT           NOT NULL,
    [com_text]   VARCHAR (MAX) NULL,
    [id_TecFile] INT           NULL,
    [id_med]     INT           NULL,
    PRIMARY KEY CLUSTERED ([id_com] ASC),
    CONSTRAINT [FK_Comments_TecFile] FOREIGN KEY ([id_TecFile]) REFERENCES [dbo].[TecFile] ([Id_TecFile]),
    CONSTRAINT [FK_Comments_Medication] FOREIGN KEY ([id_med]) REFERENCES [dbo].[Medication] ([Id_med])
);

CREATE TABLE [dbo].[Tasks] (
    [id_task]     INT           NOT NULL,
    [id_vet]   INT           NULL,
    [id_apoint] INT           NULL, 
    PRIMARY KEY CLUSTERED ([id_task] ASC),
    CONSTRAINT [FK_Tasks_Vet] FOREIGN KEY ([id_vet]) REFERENCES [dbo].[Vet] ([id_vet]),
    CONSTRAINT [FK_Tasks_apoint] FOREIGN KEY ([id_apoint]) REFERENCES [dbo].[apoint] ([id_apoint])
);










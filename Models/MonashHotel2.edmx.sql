
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/15/2019 21:18:48
-- Generated from EDMX file: C:\Users\hideto\source\repos\MonashHotel2\Models\MonashHotel2.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MonashHotel2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Admins'
CREATE TABLE [dbo].[Admins] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AdminEmail] nvarchar(max)  NOT NULL,
    [AdminPassword] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CusEmail] nvarchar(max)  NOT NULL,
    [CusPassword] nvarchar(max)  NOT NULL,
    [CreateDate] nvarchar(max)  NOT NULL,
    [CusPhone] nvarchar(max)  NOT NULL,
    [AdminId] int  NOT NULL,
    [AdminId1] int  NOT NULL
);
GO

-- Creating table 'CheckIns'
CREATE TABLE [dbo].[CheckIns] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CheckInDate] nvarchar(max)  NOT NULL,
    [Amount] nvarchar(max)  NOT NULL,
    [DaysStayed] nvarchar(max)  NOT NULL,
    [Compensation] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [RoomType] nvarchar(max)  NOT NULL,
    [RoomNumber] nvarchar(max)  NOT NULL,
    [CustomerId] int  NOT NULL,
    [Room_Id] int  NOT NULL
);
GO

-- Creating table 'Rooms'
CREATE TABLE [dbo].[Rooms] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RoomNumber] nvarchar(max)  NOT NULL,
    [RoomType] nvarchar(max)  NOT NULL,
    [PricePerDay] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Admins'
ALTER TABLE [dbo].[Admins]
ADD CONSTRAINT [PK_Admins]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CheckIns'
ALTER TABLE [dbo].[CheckIns]
ADD CONSTRAINT [PK_CheckIns]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Rooms'
ALTER TABLE [dbo].[Rooms]
ADD CONSTRAINT [PK_Rooms]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerId] in table 'CheckIns'
ALTER TABLE [dbo].[CheckIns]
ADD CONSTRAINT [FK_CustomerCheckIn]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCheckIn'
CREATE INDEX [IX_FK_CustomerCheckIn]
ON [dbo].[CheckIns]
    ([CustomerId]);
GO

-- Creating foreign key on [Room_Id] in table 'CheckIns'
ALTER TABLE [dbo].[CheckIns]
ADD CONSTRAINT [FK_CheckInRoom]
    FOREIGN KEY ([Room_Id])
    REFERENCES [dbo].[Rooms]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CheckInRoom'
CREATE INDEX [IX_FK_CheckInRoom]
ON [dbo].[CheckIns]
    ([Room_Id]);
GO

-- Creating foreign key on [AdminId1] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_AdminCustomer]
    FOREIGN KEY ([AdminId1])
    REFERENCES [dbo].[Admins]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdminCustomer'
CREATE INDEX [IX_FK_AdminCustomer]
ON [dbo].[Customers]
    ([AdminId1]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
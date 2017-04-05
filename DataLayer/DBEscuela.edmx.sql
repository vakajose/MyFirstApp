
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/04/2017 19:44:17
-- Generated from EDMX file: D:\Bibliotecas\Documents\Visual Studio 2015\Projects\MyFirstApp\DataLayer\DBEscuela.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DBEscuela];
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

-- Creating table 'AlumnoSet'
CREATE TABLE [dbo].[AlumnoSet] (
    [iAlumnosId] int IDENTITY(1,1) NOT NULL,
    [sNombre] nvarchar(max)  NOT NULL,
    [iGrado] nvarchar(max)  NOT NULL,
    [iCarreraId] nvarchar(max)  NOT NULL,
    [Carrera_iCarreraId] int  NOT NULL
);
GO

-- Creating table 'CarreraSet'
CREATE TABLE [dbo].[CarreraSet] (
    [iCarreraId] int IDENTITY(1,1) NOT NULL,
    [sNombre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [iAlumnosId] in table 'AlumnoSet'
ALTER TABLE [dbo].[AlumnoSet]
ADD CONSTRAINT [PK_AlumnoSet]
    PRIMARY KEY CLUSTERED ([iAlumnosId] ASC);
GO

-- Creating primary key on [iCarreraId] in table 'CarreraSet'
ALTER TABLE [dbo].[CarreraSet]
ADD CONSTRAINT [PK_CarreraSet]
    PRIMARY KEY CLUSTERED ([iCarreraId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Carrera_iCarreraId] in table 'AlumnoSet'
ALTER TABLE [dbo].[AlumnoSet]
ADD CONSTRAINT [FK_CarreraAlumno]
    FOREIGN KEY ([Carrera_iCarreraId])
    REFERENCES [dbo].[CarreraSet]
        ([iCarreraId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarreraAlumno'
CREATE INDEX [IX_FK_CarreraAlumno]
ON [dbo].[AlumnoSet]
    ([Carrera_iCarreraId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
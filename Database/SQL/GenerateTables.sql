/*
 * GenerateTables.sql
 * 
 * Code to generate the tables in the RefereeCareerTracker database. 
 */

-- Seasons
CREATE TABLE Seasons (
    SeasonID INTEGER     PRIMARY KEY AUTOINCREMENT,
    Season   NVARCHAR(5) NOT NULL UNIQUE
);

-- Roles
CREATE TABLE Roles (
    RoleID INTEGER      PRIMARY KEY AUTOINCREMENT,
    Role   NVARCHAR(30) NOT NULL UNIQUE
);

-- DisciplineCodes
CREATE TABLE DisciplineCodes (
    CodeID      INTEGER      PRIMARY KEY AUTOINCREMENT,
    Code        NVARCHAR(2)  NOT NULL UNIQUE,
    Description NVARCHAR(50) NOT NULL
);

-- Teams
CREATE TABLE Teams (
    TeamID   INTEGER      PRIMARY KEY AUTOINCREMENT,
    TeamName NVARCHAR(50) NOT NULL UNIQUE, 
);

-- Competitions 
CREATE TABLE Competitions (
    CompetitionID   INTEGER      PRIMARY KEY AUTOINCREMENT,
    CompetitionName NVARCHAR(25) NOT NULL UNIQUE
);

-- Registrations
CREATE TABLE Registrations (
    RegistrationID   INTEGER      PRIMARY KEY AUTOINCREMENT,
    RegistrationCode NVARCHAR(15) NOT NULL UNIQUE,
    SeasonID         INT          NOT NULL UNIQUE,
    FOREIGN KEY (SeasonID) REFERENCES Seasons(SeasonID)
);
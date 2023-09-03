CREATE TABLE Auth (
	AuthId INT IDENTITY,
	Email NVARCHAR(256) NOT NULL,
	Name NVARCHAR(256) NOT NULL,
	Password NVARCHAR(512) NOT NULL,
	PermissionId INT NOT NULL,
	IsActive BIT NOT NULL,
	CreatedOn DATETIME NOT NULL,
	ModifiedOn DATETIME NOT NULL
)

CREATE TABLE Permissions (
	PermissionId INT IDENTITY,
	Name NVARCHAR(256) NOT NULL,
	Description NVARCHAR(256) NOT NULL,
	CreatedOn DATETIME NOT NULL,
	ModifiedOn DATETIME NOT NULL,
	IsActive BIT NOT NULL
)
GO
INSERT INTO Permissions
VALUES
	('Administrador','Nivel máximo de permissão', GETUTCDATE(), GETUTCDATE(), 1),
	('Convidado','Nivel inicial de permissão', GETUTCDATE(), GETUTCDATE(), 1)

-----

CREATE TABLE Tasks (
	TaskId INT IDENTITY,
	Name NVARCHAR(256) NOT NULL,
	Description NVARCHAR (256) NOT NULL,
	CreatedOn DATETIME NOT NULL,
	ModifiedOn DATETIME NOT NULL, 
	IsActive BIT NOT NULL
)
GO
INSERT INTO Tasks
VALUES
	('Menu Home','Acesso a página inicial', GETUTCDATE(), GETUTCDATE(), 1),
	('Menu Home','Acesso a página inicial', GETUTCDATE(), GETUTCDATE(), 1)
-----
CREATE TABLE Authorizations (
	PermissionId INT NOT NULL,
	TaskId INT NOT NULL
)


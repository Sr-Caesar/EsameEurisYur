CREATE DATABASE Musei
GO
USE Musei
GO

CREATE TABLE Museum(
Id_Museum INT PRIMARY KEY,
MuseumName VARCHAR(50) NOT NULL,
City VARCHAR(20))

CREATE TABLE Artist(
Id_Artist INT PRIMARY KEY,
Name VARCHAR(50),
Country VARCHAR(50))

CREATE TABLE Character(
Id_Character INT PRIMARY KEY,
Name VARCHAR(50))

CREATE TABLE Artwork(
Id_ArtWork INT PRIMARY KEY,
Name VARCHAR(50),
    Id_Museum INT,
    Id_Artist INT,
    Id_Character INT,
    FOREIGN KEY (Id_Museum) REFERENCES MUSEUM(Id_Museum),
    FOREIGN KEY (Id_Artist) REFERENCES ARTIST(Id_Artist),
    FOREIGN KEY (Id_Character) REFERENCES Character(Id_Character))


	INSERT INTO Museum VALUES (1, 'Santa Maria Gloriosa dei Frari', 'Venezia')
	INSERT INTO Museum VALUES (2, 'Louvre', 'Parigi')
	INSERT INTO Museum VALUES (3, 'Galleria Borghese', 'Roma')
	INSERT INTO Museum VALUES (4, 'Art Institute of Chicago', 'Chicago')

	INSERT INTO Artist VALUES (1, 'Tiziano Vecellio', 'Italia')
	INSERT INTO Artist VALUES (2, 'Caravaggio', 'Italia')
	INSERT INTO Artist VALUES (3, 'Picasso', 'Spagna')

	INSERT INTO Character VALUES (1, 'Flora')
	INSERT INTO Character VALUES (2, 'Davide')
	INSERT INTO Character VALUES (3, 'Chiitarrista')

	INSERT INTO Artwork VALUES (1, 'Flora', 1, 1, 1)
	INSERT INTO Artwork VALUES (2, 'Concerto campestre', 2, 1, NULL)
	INSERT INTO Artwork VALUES (3, 'Davide con la testa di Golia', 3, 2 ,2)
	INSERT INTO Artwork VALUES (4, 'Il vecchio chitarrista cieco', 4, 3, 3)

	SELECT M.Id_Museum, Art.Name AS NomeOpera, C.Name AS NomePersonaggio
	FROM Artwork Art
	JOIN Museum M on M.Id_Museum = Art.Id_Museum
	JOIN Character C on C.Id_Character = Art.Id_Character
	JOIN Artist A on A.Id_Artist = Art.Id_Artist
	WHERE A.Country = 'Italia'

	SELECT A.Name AS NomeArtista
	from Artwork Art
	JOIN Museum M on M.Id_Museum = Art.Id_Museum
	JOIN Artist A on A.Id_Artist = Art.Id_Artist
	WHERE M.City = 'Parigi'

	SELECT M.City
	FROM Artwork Art
	JOIN Museum M on M.Id_Museum = Art.Id_Museum
	WHERE Art.Name = 'Flora'


	select * from Artist
	select * from Artwork
	select * from Museum
	select * from Character


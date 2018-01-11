﻿CREATE TABLE SALON (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	NAZIV varchar(50) NOT NULL,
	ADRESA varchar(50),
	TELEFON varchar(20),
	EMAIL varchar(30),
	WEBSAJT varchar(30),
	PIB INT,
	MATICNI_BR INT,
	BR_RACUNA varchar(30),
	OBRISAN BIT NOT NULL
)
GO


CREATE TABLE TIP_NAMESTAJA (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	NAZIV varchar(50) NOT NULL,
	OBRISAN BIT NOT NULL
)
GO

CREATE TABLE AKCIJA (
	ID INT PRIMARY KEY IDENTITY(0, 1),
	NAZIV varchar(50) NOT NULL,
	DATUM_OD DATE NOT NULL,
	DATUM_DO DATE NOT NULL,
	POPUST NUMERIC(9, 2) NOT NULL,
	OBRISAN BIT NOT NULL
	)
GO

CREATE TABLE NAMESTAJ (
	ID INT PRIMARY KEY IDENTITY(1, 1),	
	NAZIV varchar(50) NOT NULL,
	KOLICINA_MAG INT NOT NULL,
	CENA NUMERIC(9, 2) NOT NULL,
	TIP_NAMESTAJA INT NOT NULL,
	OBRISAN BIT NOT NULL,
	ID_AKCIJE INT,
	FOREIGN KEY (TIP_NAMESTAJA) REFERENCES TIP_NAMESTAJA(ID),
	FOREIGN KEY (ID_AKCIJE) REFERENCES AKCIJA(ID)
)
GO

CREATE TABLE DODATNE_USLUGE (
	ID INT PRIMARY KEY IDENTITY(1, 1),	
	NAZIV varchar(50) NOT NULL,
	CENA NUMERIC(9, 2) NOT NULL,
	OBRISAN BIT NOT NULL
	)
	GO




CREATE TABLE AKCIJA_STAVKE (
	AKCIJA_ID INT NOT NULL,
	NAMESTAJ_ID INT NOT NULL,	
	OBRISAN BIT NOT NULL
	PRIMARY KEY(AKCIJA_ID, NAMESTAJ_ID),
	FOREIGN KEY (AKCIJA_ID) REFERENCES AKCIJA(ID),
	FOREIGN KEY (NAMESTAJ_ID) REFERENCES NAMESTAJ(ID)
)
GO


CREATE TABLE KORISNIK (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	IME varchar(50) NOT NULL,
	PREZIME varchar(50),
	KOR_IME varchar(20),
	LOZINKA varchar(30),
	TIP_KORISNIKA BIT NOT NULL,
	OBRISAN BIT NOT NULL
)
GO


CREATE TABLE RACUN(
	ID INT PRIMARY KEY IDENTITY(1,1),
	ID_KORISNIKA INT,
	IME_KUPCA VARCHAR(50),
	UKUPNA_CENA NUMERIC(9,2),
	DATUM_PRODAJE DATE,
	OBRISAN BIT,
	FOREIGN KEY (ID_KORISNIKA) REFERENCES KORISNIK(ID)
)
GO

CREATE TABLE STAVKE_RACUNA(
	ID INT PRIMARY KEY IDENTITY(1,1),
	ID_RACUNA INT,
	ID_NAMESTAJA INT,
	BROJ_KOMADA INT,
	FOREIGN KEY (ID_RACUNA) REFERENCES RACUN(ID),
	FOREIGN KEY (ID_NAMESTAJA) REFERENCES NAMESTAJ(ID)


)

GO

CREATE TABLE USLUGE_RACUNA(
	ID_RACUNA INT,
	ID_USLUGE INT,
	FOREIGN KEY (ID_RACUNA) REFERENCES RACUN(ID),
	FOREIGN KEY (ID_USLUGE) REFERENCES DODATNE_USLUGE(ID),
	PRIMARY KEY (ID_RACUNA, ID_USLUGE)



)
GO

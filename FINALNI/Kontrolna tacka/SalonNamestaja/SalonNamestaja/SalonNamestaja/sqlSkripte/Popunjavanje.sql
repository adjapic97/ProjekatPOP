﻿INSERT INTO TIP_NAMESTAJA 
	VALUES ('Lezaj', 0),
		   ('Trosed', 0),
		   ('Stolica', 0),
		   ('Polica', 0)
GO


INSERT INTO AKCIJA 
	VALUES ('/', CONVERT(DATE, '25.12.2017', 104), CONVERT(DATE, '05.01.2018', 104), 0.0, 0),
		   ('Zimska', CONVERT(DATE, '06.01.2018', 104), CONVERT(DATE, '08.01.2018', 104), 0.2, 0),
		   ('Prolecna', CONVERT(DATE, '25.12.2017', 104), CONVERT(DATE, '05.01.2018', 104), 0.15, 0),
		   ('Letnja', CONVERT(DATE, '25.12.2017', 104), CONVERT(DATE, '05.01.2018', 104), 0.25, 0)
GO


INSERT INTO NAMESTAJ 
	VALUES ('Bracni Lezaj', 10, 22000, 1, 0, 1),
		   ('Studentski lezaj', 20, 12500, 1, 0, 1),
		   ('Trosed Mona', 31, 8400, 2, 0, 1),
		   ('Kozni Trosed', 18, 8000, 2, 0, 2),
		   ('Barska Stolica', 9, 3600, 3, 0, 1),
		   ('Bastenska stolica', 14, 5100, 3, 0, 1),
		   ('Polica Kent', 7, 46000, 4, 0, 1),
		   ('Polica Mia', 12, 35500, 4, 0, 2)
GO



INSERT INTO DODATNE_USLUGE 
	VALUES ('Preovz', 1000, 0),
		   ('Popravka', 650, 0)
GO





--videti koji je ID namestaja
INSERT INTO AKCIJA_STAVKE 
	VALUES (1, 1, 0),
		   (1, 2, 0),
		   (2, 3, 0),
		   (1, 4, 0)
		   
		   
GO

INSERT INTO KORISNIK
	VALUES('Andrej', 'Djapic', 'a', 'a', 0, 0),
	('Pero','Peric','p','p',1,0)
GO

INSERT INTO RACUN (ID_KORISNIKA, IME_KUPCA, UKUPNA_CENA, DATUM_PRODAJE, OBRISAN) 
VALUES (2, 'Jovan Jovic', 15000,'2018-04-01', 0 );

INSERT INTO RACUN (ID_KORISNIKA, IME_KUPCA, UKUPNA_CENA, DATUM_PRODAJE, OBRISAN) 
VALUES (2, 'Simo Simic', 15000,'2018-04-01', 0 );

INSERT INTO RACUN (ID_KORISNIKA, IME_KUPCA, UKUPNA_CENA, DATUM_PRODAJE, OBRISAN) 
VALUES (2, 'Pero Nikic', 15000,'2018-04-01', 0 );








INSERT INTO STAVKE_RACUNA(ID_RACUNA, ID_NAMESTAJA, BROJ_KOMADA)
VALUES (1,1,5);

INSERT INTO STAVKE_RACUNA(ID_RACUNA, ID_NAMESTAJA, BROJ_KOMADA)
VALUES (1,2,2);

INSERT INTO USLUGE_RACUNA(ID_RACUNA,ID_USLUGE)
VALUES(2,1);
INSERT INTO USLUGE_RACUNA(ID_RACUNA,ID_USLUGE)
VALUES(3,2);

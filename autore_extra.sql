use Biblioteca;

-- Aggiungi 5 nuovi libri di Philip Kotler
INSERT INTO LIBRO(isbn, titolo, anno)
VALUES  (9788838699900, "Principles of Marketing", 2020),
        (9788838699901, "Marketing Management", 2019),
        (9788838699902, "Kotler on Marketing", 2018),
        (9788838699903, "Marketing 4.0: Moving from Traditional to Digital", 2017),
        (9788838699904, "Brand Activism: From Purpose to Action", 2021);
	
-- Collega i nuovi libri all'autore Philip Kotler
INSERT INTO SCRITTO_DA(cod_lib, cod_autore)
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838699900 AND a.cognome = "Kotler"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838699901 AND a.cognome = "Kotler"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838699902 AND a.cognome = "Kotler"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838699903 AND a.cognome = "Kotler"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838699904 AND a.cognome = "Kotler";

-- Aggiungi alcune copie dei nuovi libri nelle succursali di Economia e Management
INSERT INTO COPIA (codice, lingua, isbn, cod_suc)
VALUES  -- Copie in italiano per Economia e Management
        (UUID(), "Italiano", 9788838699900, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788838699901, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788838699902, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788838699903, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788838699904, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        
        -- Copie aggiuntive in inglese
        (UUID(), "Inglese", 9788838699900, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Inglese", 9788838699901, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Inglese", 9788838699903, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management"));


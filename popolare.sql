USE biblioteca;

INSERT INTO SUCCURSALE (id, nome, indirizzo)
VALUES (UUID(), "Architettura", "Via Ghiara, 36 - 44121 Ferrara"),
       (UUID(), "Economia e Management", "Via Voltapaletto n. 11 - 44121 Ferrara"),
       (UUID(), "Fisica e Scienze della Terra", "Via Saragat, 1 - 44122 Ferrara"),
       (UUID(), "Giurisprudenza", "Corso Ercole I d'Este n. 37 - 44121 Ferrara"),
       (UUID(), "Ingegneria", "Via Saragat, 1 - 44122 Ferrara"),
       (UUID(), "Matematica e Informatica", "Via Machiavelli, 30 - 44121 Ferrara"),
       (UUID(), "Medicina Traslazionale e per la Romagna", "Via Luigi Borsari, 46 - 44121 Ferrara"),
       (UUID(), "Neuroscienze e Riabilitazione", "Via Luigi Borsari, 46 - 44121 Ferrara"),
       (UUID(), "Scienze Chimiche, Farmaceutiche ed Agrarie", "Via Luigi Borsari, 46 - 44121 Ferrara"),
       (UUID(), "Scienze dell'Ambiente e della Prevenzione", "Via Luigi Borsari, 46 - 44121 Ferrara"),
       (UUID(), "Scienze della Vita e Biotecnologie", "Via Luigi Borsari, 46 - 44121 Ferrara"),
       (UUID(), "Scienze Mediche", "Via Fossato di Mortara, 64/B - 44121 Ferrara"),
       (UUID(), "Studi Umanistici", "Via Paradiso, 12 - 44121 Ferrara");


INSERT INTO LIBRO(isbn,titolo,anno)
VALUES  (9788868121846, "Itineraries of Social History of Western Education. Vol. 1: From Classical Humanism to Anthropological Humanism.", 2013),
        (9788842063841, "Introduction to the Psychology of Emotions", 2006),
        (9788877114105, "Compendium of Legal Medicine", 2016),
        (9788891906298, "Brock. Biology of Microorganisms. General, Environmental and Industrial Microbiology. MyLab Edition. With Online Updates", 2022),
        (9788842013075, "History of Urban Planning. Vol. 2\2: The Nineteenth Century." , 1977),
        (9788861592506, "History of European Urban Planning", 2008),
        (9788815131256, "Economic History of Pre-Industrial Europe", 2009),
        (9788899302252, "Solved Exercises in Statistics and Probability Calculus",2019),
        (9788880084129, "Statistics for Economic and Business Sciences", 2023),
        (9780750627689, "The Classical Theory of Fields: Volume 2", 1987),
        (9780521829519, "General Relativity: An Introduction for Physicists", 2006),
        (9788815299239, "Anti-Corruption. Policies, Rules, Models", 2023),
        (9788891904652, "Constitutional Law", 2020),
        (9788815287465, "History of Roman Law", 2019),
        (9788838695582, "Organic Chemistry", 2021),
        (9788829007431, "General and Molecular Pharmacology", 2018),
        (9788808621092, "Genetics", 2017),
        (9788838668542, "Biochemistry", 2020),
        (9788808182142, "General Mathematics", 2019),
        (9788838664991, "Algorithms and Data Structures", 2018),
        (9788815139429, "Medieval History", 2016),
        (9788815271853, "Italian Literature", 2020),
        (9788838668016, "General Physics", 2019),
        (9788808621146, "Structural Geology", 2021),
        (9788815286536, "Political Economy", 2022),
        (9788838668559, "Marketing", 2020),
        (9788891904850, "Civil Law", 2021);


INSERT INTO AUTORE(id_autore, nome, cognome, nato_a, data_nascita)
VALUES  (UUID(), "Francesco", "Mattei", "Roma", "1965-03-15"),
        (UUID(), "Alessandro", "Antonietti", "Milano", "1960-07-22"),
        (UUID(), "Giuseppe", "Furnari", "Palermo", "1955-11-08"),
        (UUID(), "Michael T.", "Madigan", "New York", "1949-04-12"),
        (UUID(), "Leonardo", "Benevolo", "Orta San Giulio", "1923-09-25"),
        (UUID(), "Donatella", "Calabi", "Venezia", "1940-06-18"),
        (UUID(), "Carlo M.", "Cipolla", "Pavia", "1922-08-15"),
        (UUID(), "Sheldon M.", "Ross", "New York", "1943-01-20"),
        (UUID(), "Douglas C.", "Montgomery", "Phoenix", "1948-12-06"),
        (UUID(), "Lev D.", "Landau", "Baku", "1908-01-22"),
        (UUID(), "Malcolm S.", "Longair", "Dundee", "1941-05-13"),
        (UUID(), "Raffaele", "Cantone", "Napoli", "1963-07-30"),
        (UUID(), "Roberto", "Bin", "Torino", "1952-10-14"),
        (UUID(), "Mario", "Talamanca", "Roma", "1929-03-08"),
        (UUID(), "William H.", "Brown", "Philadelphia", "1940-09-05"),
        (UUID(), "Antonello", "Venditti", "Roma", "1962-11-30"),
        (UUID(), "Peter J.", "Russell", "San Francisco", "1944-02-28"),
        (UUID(), "Donald", "Voet", "Boston", "1938-04-15"),
        (UUID(), "Marco", "Bramanti", "Milano", "1960-08-12"),
        (UUID(), "Camil", "Demetrescu", "Bucuresti", "1965-05-20"),
        (UUID(), "Giuseppe", "Albertoni", "Bologna", "1935-12-03"),
        (UUID(), "Romano", "Luperini", "Siena", "1940-01-25"),
        (UUID(), "Paolo", "Mazzoldi", "Padova", "1938-06-10"),
        (UUID(), "Carmelo", "Monaco", "Catania", "1955-09-18"),
        (UUID(), "Paul A.", "Samuelson", "Gary", "1915-05-15"),
        (UUID(), "Philip", "Kotler", "Chicago", "1931-05-27");


INSERT INTO SCRITTO_DA(cod_lib, cod_autore)
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788868121846 AND a.cognome = "Mattei"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788842063841 AND a.cognome = "Antonietti"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788877114105 AND a.cognome = "Furnari"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788891906298 AND a.cognome = "Madigan"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788842013075 AND a.cognome = "Benevolo"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788861592506 AND a.cognome = "Calabi"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788815131256 AND a.cognome = "Cipolla"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788899302252 AND a.cognome = "Ross"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788880084129 AND a.cognome = "Montgomery"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9780750627689 AND a.cognome = "Landau"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9780521829519 AND a.cognome = "Longair"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788815299239 AND a.cognome = "Cantone"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788891904652 AND a.cognome = "Bin"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788815287465 AND a.cognome = "Talamanca"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838695582 AND a.cognome = "Brown"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788829007431 AND a.cognome = "Venditti"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788808621092 AND a.cognome = "Russell"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838668542 AND a.cognome = "Voet"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788808182142 AND a.cognome = "Bramanti"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838664991 AND a.cognome = "Demetrescu"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788815139429 AND a.cognome = "Albertoni"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788815271853 AND a.cognome = "Luperini"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838668016 AND a.cognome = "Mazzoldi"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788808621146 AND a.cognome = "Monaco"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788815286536 AND a.cognome = "Samuelson"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788838668559 AND a.cognome = "Kotler"
UNION ALL
SELECT l.isbn, a.id_autore
FROM LIBRO l, AUTORE a
WHERE l.isbn = 9788891904850 AND a.cognome = "Bin";


INSERT INTO UTENTE (cod_matricola, nome, cognome, indirizzo, num_telefono, data_nascita) 
VALUES  (195923, 'Luca', 'Rossi', 'Via Roma 10, Milano', '3201234567', '1995-04-10'),
        (195987, 'Maria', 'Bianchi', 'Via Verdi 22, Torino', '3312345678', '1988-06-21'),
        (195902, 'Marco', 'Esposito', 'Viale Europa 8, Napoli', '3409876543', '1992-09-15'),
        (195915, 'Anna', 'Russo', 'Corso Italia 5, Firenze', '3501928374', '1990-12-01'),
        (195996, 'Giulia', 'Ferrari', 'Piazza Duomo 3, Bologna', '3276543210', '1997-03-25'),
        (195935, 'Francesco', 'Romano', 'Via Napoli 12, Roma', '3284739201', '1985-07-14'),
        (195961, 'Sara', 'Gallo', 'Via Dante 7, Genova', '3451239087', '1999-11-11'),
        (195941, 'Davide', 'Costa', 'Via Po 4, Torino', '3341209876', '1994-05-30'),
        (195912, 'Chiara', 'Fontana', 'Via Mazzini 19, Venezia', '3394561230', '1991-01-20'),
        (195999, 'Alessandro', 'Moretti', 'Via Emilia 1, Parma', '3208765432', '1987-10-10'),
        (195903, 'Elisa', 'Conti', 'Via Garibaldi 45, Bari', '3601237894', '1996-02-17'),
        (195922, 'Stefano', 'Mancini', 'Via Manzoni 12, Lecce', '3129087456', '1993-08-03'),
        (195931, 'Martina', 'Barbieri', 'Via Petrarca 3, Pisa', '3319082736', '1990-12-29'),
        (195964, 'Matteo', 'Rizzo', 'Via Leopardi 88, Pavia', '3337482910', '1989-04-02'),
        (195954, 'Valentina', 'Marino', 'Via Trento 20, Trento', '3229871302', '1998-06-07'),
        (195936, 'Andrea', 'Sartori', 'Via Venezia 11, Mestre', '3489127345', '1992-03-19'),
        (195957, 'Laura', 'Greco', 'Via Bologna 2, Reggio Emilia', '3367892341', '1986-11-05'),
        (195920, 'Giorgio', 'Lombardi', 'Via Firenze 6, Prato', '3463457832', '1994-07-21'),
        (195943, 'Ilaria', 'De Luca', 'Via Bari 9, Andria', '3374567832', '1991-12-13'),
        (195978, 'Riccardo', 'Martini', 'Via Latina 14, Roma', '3498765432', '1983-09-08'),
        (195934, 'Simone', 'Colombo', 'Via Appia 20, Salerno', '3217654321', '1995-01-25'),
        (195950, 'Federica', 'Palmieri', 'Via Udine 7, Udine', '3236547890', '1997-06-15'),
        (195966, 'Gabriele', 'Caruso', 'Via Trieste 33, Trieste', '3357689301', '1989-08-11'),
        (195908, 'Angela', 'Orlando', 'Via Roma 56, Catania', '3387901234', '1992-04-18'),
        (195973, 'Tommaso', 'Fabbri', 'Via Como 2, Como', '3249087123', '1988-02-28'),
        (195990, 'Elena', 'Vitale', 'Via Trento 10, Bolzano', '3264789012', '1990-11-29'),
        (195911, 'Lorenzo', 'Bianco', 'Via Cavour 15, Siena', '3293847561', '1993-10-04'),
        (195967, 'Alessia', 'Ferretti', 'Via Torino 89, Aosta', '3319082735', '1999-09-30'),
        (195977, 'Emanuele', 'Testa', 'Via Milano 23, Lodi', '3250987123', '1985-03-22'),
        (195913, 'Giovanna', 'Grassi', 'Via Napoli 31, Benevento', '3194872031', '1987-12-03'),
        (195959, 'Matilda', 'De Angelis', 'Via Palermo 10, Ragusa', '3123098745', '1996-05-17'),
        (195926, 'Dario', 'Amato', 'Via Foggia 7, Foggia', '3104789201', '1991-07-08'),
        (195994, 'Veronica', 'Gentile', 'Via Taranto 8, Taranto', '3298456712', '1994-02-06'),
        (195944, 'Pietro', 'Longo', 'Via Latina 10, Latina', '3445678910', '1986-06-27'),
        (195905, 'Beatrice', 'Marchetti', 'Via Mantova 15, Mantova', '3390876543', '1995-10-01'),
        (195981, 'Fabio', 'De Santis', 'Via Aquila 3, L’Aquila', '3369801274', '1990-08-19'),
        (195917, 'Silvia', 'Neri', 'Via Piave 14, Vicenza', '3214802931', '1992-01-11'),
        (195951, 'Roberto', 'Ricci', 'Via Brenta 5, Belluno', '3287491032', '1989-03-07'),
        (195937, 'Paola', 'Coppola', 'Via Adda 12, Sondrio', '3328471920', '1988-09-13'),
        (195960, 'Nicola', 'Barone', 'Via Isonzo 6, Caserta', '3309874123', '1993-04-16');


-- Inserimento copie dei libri nelle succursali
INSERT INTO COPIA (codice, lingua, isbn, cod_suc)
VALUES  -- Copie per Architettura
        (UUID(), "Italiano", 9788842013075, (SELECT id FROM SUCCURSALE WHERE nome = "Architettura")),
        (UUID(), "Italiano", 9788861592506, (SELECT id FROM SUCCURSALE WHERE nome = "Architettura")),
        (UUID(), "Italiano", 9788815131256, (SELECT id FROM SUCCURSALE WHERE nome = "Architettura")),
        
        -- Copie per Economia e Management
        (UUID(), "Italiano", 9788815286536, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788838668559, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788899302252, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Italiano", 9788880084129, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        
        -- Copie per Scienze Mediche
        (UUID(), "Italiano", 9788877114105, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Italiano", 9788829007431, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Italiano", 9788808621092, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Italiano", 9788838668542, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Italiano", 9788838695582, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        
        -- Copie per Studi Umanistici
        (UUID(), "Italiano", 9788868121846, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788842063841, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788815139429, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788815271853, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788815299239, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788891904652, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788815287465, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Italiano", 9788891904850, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        
        -- Copie per Matematica e Informatica
        (UUID(), "Italiano", 9788808182142, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Italiano", 9788838664991, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Italiano", 9788899302252, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Italiano", 9788880084129, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Italiano", 9788808182142, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Italiano", 9788838664991, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        
        -- Copie per Fisica e Scienze della Terra
        (UUID(), "Italiano", 9788838668016, (SELECT id FROM SUCCURSALE WHERE nome = "Fisica e Scienze della Terra")),
        (UUID(), "Italiano", 9788808621146, (SELECT id FROM SUCCURSALE WHERE nome = "Fisica e Scienze della Terra")),
        (UUID(), "Inglese", 9780750627689, (SELECT id FROM SUCCURSALE WHERE nome = "Fisica e Scienze della Terra")),
        (UUID(), "Inglese", 9780521829519, (SELECT id FROM SUCCURSALE WHERE nome = "Fisica e Scienze della Terra")),
        (UUID(), "Italiano", 9788808182142, (SELECT id FROM SUCCURSALE WHERE nome = "Fisica e Scienze della Terra"));


-- Aggiungere copie in lingue diverse per varietà internazionale
INSERT INTO COPIA (codice, lingua, isbn, cod_suc)
VALUES  -- Copie in francese
        (UUID(), "Francese", 9788815131256, (SELECT id FROM SUCCURSALE WHERE nome = "Architettura")),
        (UUID(), "Francese", 9788815286536, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Francese", 9788842063841, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        
        -- Copie in spagnolo
        (UUID(), "Spagnolo", 9788838668559, (SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management")),
        (UUID(), "Spagnolo", 9788815139429, (SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici")),
        (UUID(), "Spagnolo", 9788808182142, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        
        -- Copie in tedesco
        (UUID(), "Tedesco", 9788838664991, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Tedesco", 9788838668016, (SELECT id FROM SUCCURSALE WHERE nome = "Fisica e Scienze della Terra")),
        (UUID(), "Tedesco", 9788829007431, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        
        -- Copie aggiuntive in inglese per materie scientifiche
        (UUID(), "Inglese", 9788838664991, (SELECT id FROM SUCCURSALE WHERE nome = "Matematica e Informatica")),
        (UUID(), "Inglese", 9788808621092, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Inglese", 9788838668542, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Inglese", 9788838695582, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche")),
        (UUID(), "Inglese", 9788891906298, (SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche"));


-- Inserimento prestiti
INSERT INTO PRESTITO (cod_suc, cod_copia, cod_matricola, data_prestito, data_restituzione)
VALUES  -- Prestiti in corso (data di restituzione = data prestito + 30 giorni)
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788868121846 LIMIT 1),
         195923, '2024-11-15', '2024-12-15'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management"),
         (SELECT codice FROM COPIA WHERE isbn = 9788815286536 LIMIT 1),
         195987, '2024-12-01', '2024-12-31'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche"),
         (SELECT codice FROM COPIA WHERE isbn = 9788877114105 LIMIT 1),
         195902, '2024-12-10', '2025-01-09'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788842063841 LIMIT 1),
         195915, '2024-12-15', '2025-01-14'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Architettura"),
         (SELECT codice FROM COPIA WHERE isbn = 9788842013075 LIMIT 1),
         195996, '2025-01-05', '2025-02-04'),
         
        -- Prestiti restituiti (mix di restituzioni precoci e tardive)
        ((SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management"),
         (SELECT codice FROM COPIA WHERE isbn = 9788838668559 LIMIT 1),
         195935, '2024-09-15', '2024-10-05'),  -- Restituito 10 giorni prima
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche"),
         (SELECT codice FROM COPIA WHERE isbn = 9788829007431 LIMIT 1),
         195961, '2024-10-01', '2024-11-10'),  -- Restituito 10 giorni dopo
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788815139429 LIMIT 1),
         195941, '2024-08-20', '2024-09-10'),  -- Restituito 10 giorni prima
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Architettura"),
         (SELECT codice FROM COPIA WHERE isbn = 9788861592506 LIMIT 1),
         195912, '2024-07-10', '2024-08-20'),  -- Restituito 11 giorni dopo
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management"),
         (SELECT codice FROM COPIA WHERE isbn = 9788899302252 LIMIT 1),
         195999, '2024-11-01', '2024-11-25'),  -- Restituito 6 giorni prima
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche"),
         (SELECT codice FROM COPIA WHERE isbn = 9788808621092 LIMIT 1),
         195903, '2024-06-15', '2024-07-15'),  -- Restituito puntuale
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788815271853 LIMIT 1),
         195922, '2024-05-20', '2024-06-25'),  -- Restituito 5 giorni dopo
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Architettura"),
         (SELECT codice FROM COPIA WHERE isbn = 9788815131256 LIMIT 1),
         195931, '2024-04-10', '2024-05-02'),  -- Restituito 8 giorni prima
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Economia e Management"),
         (SELECT codice FROM COPIA WHERE isbn = 9788880084129 LIMIT 1),
         195964, '2024-10-25', '2024-12-05'),  -- Restituito 11 giorni dopo
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche"),
         (SELECT codice FROM COPIA WHERE isbn = 9788838668542 LIMIT 1),
         195954, '2024-09-05', '2024-09-25'),  -- Restituito 10 giorni prima
         
        -- Altri prestiti in corso (data di restituzione = data prestito + 30 giorni)
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788815299239 LIMIT 1),
         195936, '2025-01-10', '2025-02-09'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Scienze Mediche"),
         (SELECT codice FROM COPIA WHERE isbn = 9788838695582 LIMIT 1),
         195957, '2025-01-20', '2025-02-19'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788891904652 LIMIT 1),
         195920, '2024-12-28', '2025-01-27'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788815287465 LIMIT 1),
         195943, '2025-02-01', '2025-03-03'),
         
        ((SELECT id FROM SUCCURSALE WHERE nome = "Studi Umanistici"),
         (SELECT codice FROM COPIA WHERE isbn = 9788891904850 LIMIT 1),
         195978, '2025-02-10', '2025-03-12');



DROP SCHEMA IF EXISTS Biblioteca;
CREATE SCHEMA IF NOT EXISTS Biblioteca;
USE Biblioteca;


CREATE TABLE LIBRO (
    isbn     CHAR(13) NOT NULL,
    titolo   VARCHAR(128) NOT NULL,
    anno     YEAR,

    PRIMARY KEY (isbn)
);


CREATE TABLE AUTORE (
    id_autore       CHAR(36) NOT NULL,
    nome            VARCHAR(20) NOT NULL,
    cognome         VARCHAR(20) NOT NULL,
    nato_a          VARCHAR(20),
    data_nascita    DATE,

    PRIMARY KEY (id_autore)
);


CREATE TABLE SCRITTO_DA (
    cod_lib      CHAR(13) NOT NULL,
    cod_autore   CHAR(36) NOT NULL,

    PRIMARY KEY (cod_lib, cod_autore),
    FOREIGN KEY (cod_lib) REFERENCES LIBRO(isbn),
    FOREIGN KEY (cod_autore) REFERENCES AUTORE(id_autore)
);


CREATE TABLE SUCCURSALE (
    id         CHAR(36) NOT NULL,
    nome        VARCHAR(128) NOT NULL,
    indirizzo   VARCHAR(128) NOT NULL,
    
    PRIMARY KEY (id)
);


CREATE TABLE COPIA(
    codice      CHAR(36) NOT NULL,
    lingua      VARCHAR(20) NOT NULL,
    isbn        CHAR(13) NOT NULL,
    cod_suc     CHAR(36) NOT NULL,
    
    PRIMARY KEY (codice),
    FOREIGN KEY (isbn) REFERENCES LIBRO(isbn),
    FOREIGN KEY (cod_suc) REFERENCES SUCCURSALE(id)
);


CREATE TABLE UTENTE (
    cod_matricola   INT NOT NULL,
    nome            VARCHAR(30) NOT NULL,
    cognome         VARCHAR(30) NOT NULL,
    indirizzo       VARCHAR(40),
    num_telefono    VARCHAR(13),
    data_nascita    DATE,
    
    PRIMARY KEY (cod_matricola)
);


CREATE TABLE PRESTITO (
    cod_suc             CHAR(36) NOT NULL,
    cod_copia           CHAR(36) NOT NULL,
    cod_matricola       INT NOT NULL,
    data_prestito       DATE NOT NULL,
    data_restituzione   DATE NOT NULL,
    
    PRIMARY KEY (cod_suc,  cod_copia,cod_matricola, data_prestito),
    FOREIGN KEY (cod_suc) REFERENCES SUCCURSALE(id),
    FOREIGN KEY (cod_copia) REFERENCES COPIA(codice),
    FOREIGN KEY (cod_matricola) REFERENCES UTENTE(cod_matricola)
);


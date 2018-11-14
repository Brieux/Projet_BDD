CREATE TABLE MEMBRES (
    EMAIL VARCHAR(60) NOT NULL, 
	MDP VARCHAR(10) NOT NULL, 
	NOM VARCHAR(20),
	PRENOM VARCHAR(20),
    VILLE VARCHAR(20),
    ADRESSE VARCHAR(60),
    TELEPHONE NUMERIC(10,10),
    ADMINISTRATEUR CHAR(1),
    ETAT VARCHAR(9) CHECK (ETAT IN ('DESACTIVE','ACTIVE')),
    PRIMARY KEY (EMAIL)
);

CREATE TABLE BIEN (
    ID NUMERIC(6) NOT NULL, 
	NOM VARCHAR(20),
	PRIX NUMERIC(1,4),
    PRIMARY KEY (ID)
);


CREATE TABLE SERVICES (
    ID NUMERIC(8) NOT NULL, 
    NOM VARCHAR(20),
    PLAGE_HORAIRE_DEBUT TIMESTAMP,
    PLAGE_HORAIRE_FIN TIMESTAMP,
    PRIX_HORAIRE NUMERIC(1,4),
    DESCRIPTIF VARCHAR(140),
    PRIMARY KEY (ID)
);

CREATE TABLE JOUR(
    JOUR VARCHAR(10) CHECK (JOUR IN ('LUNDI', 'MARDI','MERCREDI', 'JEUDI', 'VENDREDI', 'SAMEDI','DIMANCHE')),
    PRIMARY KEY (JOUR)
);

CREATE TABLE CONSOMMATION(
    EMAIL VARCHAR(60) NOT NULL,
    ID_BIEN NUMERIC(6) ,
    ID_SERVICE NUMERIC(8),
    ID NUMERIC(10) NOT NULL,
    JOUR DATE,
    PRIMARY KEY (ID),
    FOREIGN KEY (EMAIL) REFERENCES MEMBRES(EMAIL),
    FOREIGN KEY (ID_BIEN) REFERENCES BIEN(ID),
    FOREIGN KEY (ID_SERVICE) REFERENCES SERVICES(ID)    
);

CREATE TABLE TAXONOMIE(
    MOT VARCHAR(20) NOT NULL,
    PERE VARCHAR(20),
    PRIMARY KEY (MOT),
    FOREIGN KEY (PERE) REFERENCES TAXONOMIE(MOT)
);

CREATE TABLE PHOTO(
    LIEN VARCHAR(60) NOT NULL,
    ID_BIEN NUMERIC (6) NOT NULL,
    PRIMARY KEY (LIEN, ID_BIEN),
    FOREIGN KEY (ID_BIEN) REFERENCES BIEN(ID)
);

CREATE TABLE NOTIF(
    ID NUMERIC (4) NOT NULL,
    MSG VARCHAR(140) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE MOT_BIEN(
    ID_BIEN NUMERIC(6) NOT NULL,
    MOT VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID_BIEN, MOT),
    FOREIGN KEY (ID_BIEN) REFERENCES BIEN(ID),
    FOREIGN KEY (MOT) REFERENCES TAXONOMIE(MOT)
);

CREATE TABLE MOT_SERVICE(
    ID_SERVICE NUMERIC(8) NOT NULL,
    MOT VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID_SERVICE, MOT),
    FOREIGN KEY (ID_SERVICE) REFERENCES SERVICES(ID),
    FOREIGN KEY (MOT) REFERENCES TAXONOMIE(MOT)
);

CREATE TABLE NOTIF_ADMIN(
    EMAIL_MEMBRE VARCHAR(60) NOT NULL,
    ID_NOTIF NUMERIC(4) NOT NULL,
    PRIMARY KEY (EMAIL_MEMBRE, ID_NOTIF),
    FOREIGN KEY (EMAIL_MEMBRE) REFERENCES MEMBRES(EMAIL),
    FOREIGN KEY (ID_NOTIF) REFERENCES NOTIF(ID)
);

CREATE TABLE JOUR_SERVICE(
    ID_SERVICE NUMERIC(8) NOT NULL,
    JOUR VARCHAR(10) CHECK (JOUR IN ('LUNDI', 'MARDI','MERCREDI', 'JEUDI', 'VENDREDI', 'SAMEDI','DIMANCHE')),
    PRIMARY KEY (ID_SERVICE, JOUR),
    FOREIGN KEY (ID_SERVICE) REFERENCES SERVICES(ID),
    FOREIGN KEY (JOUR) REFERENCES JOUR(JOUR)
);
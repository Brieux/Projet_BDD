/* Effacer les anciennes valeurs */
DELETE FROM JOUR_SERVICE;
DELETE FROM NOTIF_ADMIN;
DELETE FROM MOT_SERVICE;
DELETE FROM MOT_BIEN;
DELETE FROM NOTIF;
DELETE FROM PHOTO;
DELETE FROM TAXONOMIE;
DELETE FROM JOUR;
DELETE FROM SERVICES;
DELETE FROM BIEN;
DELETE FROM MEMBRES;
 
/* Insertion des nouvelles valeurs */

INSERT INTO MEMBRES VALUES ('jackson@gmail.com','sg2456q','Jackson','Ville','Jacksonville','15 rue des lilas',0547789541,'0','ACTIVE');
INSERT INTO MEMBRES VALUES ('germain@gmail.com','fr78as4','Saint','Germain','Saint-Germain','36 rue du marechal Petain',0125478956,'0','ACTIVE');
INSERT INTO MEMBRES VALUES ('pellier@gmail.com','98ae7sq','Mont','Pellier','Montpellier','01 bis allée mario gustavi',0457461238,'0','ACTIVE');

INSERT INTO BIEN VALUES(111111,'Turbine', 5475,'jackson@gmail.com','germain@gmail.com','PRIS');
INSERT INTO BIEN VALUES(111112,'Soupape admission', 875,'jackson@gmail.com','germain@gmail.com','PRIS');
INSERT INTO BIEN VALUES(111113,'Stylo bic', 2,'jackson@gmail.com','pellier@gmail.com','PRIS');
INSERT INTO BIEN VALUES(111114,'Grenouillere', 45,'pellier@gmail.com','germain@gmail.com','PRIS');

INSERT INTO SERVICES VALUES(11111111,'Jardinnage', '2019-01-12 08:00:00', '2019-01-12 17:30:00',30, 'Possibilité de s"occuper de votre jardin et de faire pousser de jolies plantes','pellier@gmail.com','germain@gmail.com');
INSERT INTO SERVICES VALUES(11111112,'Babysitting', '2019-02-01 17:00:00', '2019-02-01 23:30:00',15, 'Babysitting tout age','pellier@gmail.com','germain@gmail.com');
INSERT INTO SERVICES VALUES(11111113,'Programmation', '2019-03-05 14:00:00', '2020-03-05 14:00:00',120, 'Donne des cours de programmation','pellier@gmail.com','germain@gmail.com');

INSERT INTO JOUR VALUES('LUNDI');
INSERT INTO JOUR VALUES('MARDI');
INSERT INTO JOUR VALUES('MERCREDI');
INSERT INTO JOUR VALUES('JEUDI');
INSERT INTO JOUR VALUES('VENDREDI');
INSERT INTO JOUR VALUES('SAMEDI');
INSERT INTO JOUR VALUES('DIMANCHE');


INSERT INTO PHOTO VALUES ('http://lienphoto.com/ude1s/',111111);
INSERT INTO PHOTO VALUES ('http://lienphoto.com/65des/',111112);
INSERT INTO PHOTO VALUES ('http://lienphoto.com/9784s/',111113);
INSERT INTO PHOTO VALUES ('http://lienphoto.com/1xcfd/',111114);


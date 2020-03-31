






CREATE TABLE circonscription (
  idcirconscription SERIAL NOT NULL PRIMARY KEY
);



CREATE TABLE election (
  idelection SERIAL NOT NULL PRIMARY KEY,
  election TEXT NOT NULL
);



CREATE TABLE parti (
  idparti SERIAL NOT NULL PRIMARY KEY,
  parti TEXT  NOT NULL,
  logoparti TEXT  DEFAULT NULL
);

CREATE TABLE candidat (
  idcandidat SERIAL NOT NULL PRIMARY KEY,
  nomcandidat TEXT  NOT NULL,
  idparti INT NOT NULL REFERENCES parti (idparti),
  tetedeliste INT DEFAULT NULL,
  photocandidat TEXT  DEFAULT NULL
);

CREATE TABLE patentes_mairie (
  id_patente SERIAL NOT NULL PRIMARY KEY,
  email_patente TEXT  NOT NULL,
  mdp_patente TEXT  NOT NULL,
  droits_patente TEXT  NOT NULL
);

CREATE TABLE arrondissement (
  idarrondissement SERIAL NOT NULL PRIMARY KEY,
  arrondissement TEXT NOT NULL,
  nombrebureaux INT NOT NULL
);

CREATE TABLE bureau (
  idbureau SERIAL NOT NULL PRIMARY KEY,
  codebureau TEXT NOT NULL,
  lieubureau TEXT DEFAULT NULL,
  adressebureau TEXT DEFAULT NULL,
  latitude float DEFAULT NULL,
  longitude float DEFAULT NULL,
  inscrits INT DEFAULT '0',
  votants INT DEFAULT '0',
  nuls INT DEFAULT '0',
  blancs INT DEFAULT '0',
  exprimes INT DEFAULT '0',
  procurations INT DEFAULT '0',
  idarrondissement INT NOT NULL REFERENCES arrondissement (idarrondissement),
  idcirconscription INT NOT NULL DEFAULT '0' REFERENCES circonscription (idcirconscription)
);

CREATE TABLE role (
  idrole SERIAL NOT NULL PRIMARY KEY,
  role TEXT NOT NULL,
  rang INT DEFAULT NULL
);

CREATE TABLE personne (
  idpersonne SERIAL NOT NULL PRIMARY KEY,
  prenompersonne TEXT  NOT NULL,
  nompersonne TEXT  NOT NULL,
  adressepersonne TEXT DEFAULT NULL,
  datenaissancepersonne date DEFAULT NULL,
  telephonepersonne TEXT  DEFAULT NULL,
  emailpersonne TEXT  DEFAULT NULL,
  mdppersonne TEXT  DEFAULT NULL,
  idrole INT NOT NULL REFERENCES role (idrole),
  idparti INT DEFAULT NULL REFERENCES parti (idparti),
  idarrondissement INT NOT NULL REFERENCES arrondissement (idarrondissement)
);



CREATE TABLE resultat (
  voix INT DEFAULT NULL,
  idcandidat INT NOT NULL REFERENCES candidat (idcandidat),
  idbureau INT NOT NULL REFERENCES bureau (idbureau)
);


CREATE TABLE affecter (
  idpersonne INT NOT NULL REFERENCES personne (idpersonne),
  idbureau INT NOT NULL REFERENCES bureau (idbureau)
);



INSERT INTO circonscription (idcirconscription) VALUES(1);
INSERT INTO circonscription (idcirconscription) VALUES(2);
INSERT INTO circonscription (idcirconscription) VALUES(3);
INSERT INTO circonscription (idcirconscription) VALUES(4);
INSERT INTO circonscription (idcirconscription) VALUES(5);
INSERT INTO circonscription (idcirconscription) VALUES(6);
INSERT INTO circonscription (idcirconscription) VALUES(7);
INSERT INTO circonscription (idcirconscription) VALUES(8);
INSERT INTO circonscription (idcirconscription) VALUES(9);
INSERT INTO circonscription (idcirconscription) VALUES(10);
INSERT INTO circonscription (idcirconscription) VALUES(11);
INSERT INTO circonscription (idcirconscription) VALUES(12);
INSERT INTO circonscription (idcirconscription) VALUES(13);
INSERT INTO circonscription (idcirconscription) VALUES(14);
INSERT INTO circonscription (idcirconscription) VALUES(15);
INSERT INTO circonscription (idcirconscription) VALUES(16);
INSERT INTO circonscription (idcirconscription) VALUES(17);
INSERT INTO circonscription (idcirconscription) VALUES(18);
INSERT INTO circonscription (idcirconscription) VALUES(19);
INSERT INTO circonscription (idcirconscription) VALUES(20);





INSERT INTO election (idelection, election) VALUES(2, 'Européennes 2014');
INSERT INTO election (idelection, election) VALUES(6, 'Européennes 2019');
INSERT INTO election (idelection, election) VALUES(5, 'Législatives 2017');
INSERT INTO election (idelection, election) VALUES(1, 'Municipales 2014');
INSERT INTO election (idelection, election) VALUES(7, 'Municipales 2020');
INSERT INTO election (idelection, election) VALUES(4, 'Présidentielles 2017');
INSERT INTO election (idelection, election) VALUES(3, 'Régionales 2015');





INSERT INTO parti (idparti, parti, logoparti) VALUES(1, 'Parti Socialiste', 'ps.jpg');
INSERT INTO parti (idparti, parti, logoparti) VALUES(2, 'LR', 'lr.jpg');
INSERT INTO parti (idparti, parti, logoparti) VALUES(3, 'Europe Ecologie Les Verts', 'eelv.jpg');
INSERT INTO parti (idparti, parti, logoparti) VALUES(4, 'LFI', 'lfi.jpg');
INSERT INTO parti (idparti, parti, logoparti) VALUES(5, 'LREM', 'lrem.jpg');
INSERT INTO parti (idparti, parti, logoparti) VALUES(6, 'divers', 'default.jpg');


INSERT INTO candidat (idcandidat, nomcandidat, idparti, tetedeliste, photocandidat) VALUES(1, 'Anne Hidalgo', 1, 1, 'anne_hidalgo.jpg');
INSERT INTO candidat (idcandidat, nomcandidat, idparti, tetedeliste, photocandidat) VALUES(2, 'Rachida Dati', 2, 1, 'rachida_dati.jpg');
INSERT INTO candidat (idcandidat, nomcandidat, idparti, tetedeliste, photocandidat) VALUES(3, 'David Belliard', 3, 1, 'david_belliard.jpg');
INSERT INTO candidat (idcandidat, nomcandidat, idparti, tetedeliste, photocandidat) VALUES(4, 'Danielle Simonnet', 4, 1, 'danielle_simonnet.jpg');
INSERT INTO candidat (idcandidat, nomcandidat, idparti, tetedeliste, photocandidat) VALUES(5, 'Agnès Buzyn', 5, 1, 'agnes_buzyn.jpg');





INSERT INTO patentes_mairie (id_patente, email_patente, mdp_patente, droits_patente) VALUES(1, 'tintin@free.fr', 'mdp123', '');
INSERT INTO patentes_mairie (id_patente, email_patente, mdp_patente, droits_patente) VALUES(2, 'pb@free.fr', 'mdp123', '');
INSERT INTO patentes_mairie (id_patente, email_patente, mdp_patente, droits_patente) VALUES(3, 'af@free.fr', 'mdp123', '');


INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(1, '01', 1);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(2, '02', 10);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(3, '03', 15);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(4, '04', 15);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(5, '05', 25);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(6, '06', 22);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(7, '07', 24);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(8, '08', 18);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(9, '09', 25);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(10, '10', 34);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(11, '11', 55);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(12, '12', 61);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(13, '13', 69);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(14, '14', 56);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(15, '15', 95);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(16, '16', 65);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(17, '17', 63);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(18, '18', 65);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(19, '19', 67);
INSERT INTO arrondissement (idarrondissement, arrondissement, nombrebureaux) VALUES(20, '20', 76);


INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1, '01-01', 'Mairie d’arrondissement', '4 Place du Louvre', 48.86, 2.34127, 1002, 700, 2, 10, 698, 10, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(2, '01-02', 'École élémentaire', '19 rue de l’arbre sec', 48.8598, 2.34175, 200, 107, 2, 5, 105, 10, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(3, '01-03', 'École élémentaire', '6 rue Saint Germain l’Auxerrois', 48.8582, 2.34533, 250, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(4, '01-04', 'Bourse de commerce', '2 Rue de Viarmes', 48.8628, 2.34279, 200, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(5, '01-05', 'Bourse de commerce', '2 Rue de Viarmes', 48.8628, 2.34279, 250, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(6, '01-06', 'Bourse de commerce', '2 Rue de Viarmes', 48.8628, 2.34279, 200, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(7, '01-07', 'Collège d’enseignement secondaire Poquelin', '6 rue Molière', 48.8647, 2.33543, 200, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(8, '01-08', 'École élémentaire', '11 rue d’Argenteuil', 48.8649, 2.33356, 200, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(9, '01-09', 'École maternelle', '27 rue de la Sourdière', 48.8668, 2.33278, 200, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(10, '01-10', 'École élémentaire', '28 rue Cambon', 48.868, 2.32717, 200, 107, 2, 5, 105, 0, 1, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(701, '07-01', 'Mairie du 7ème', '116 rue de Grenelle', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(702, '07-02', 'École polyvalente', '27 rue Las Cases', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(703, '07-03', 'Institution nationale des Invalides', '6 boulevard des Invalides', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(704, '07-04', 'Institution d’Études politiques', '13 rue de l’Université', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(705, '07-05', 'Institution d’Études politiques', '13 rue de l’Université', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(706, '07-06', 'Mairie du 7ème', '116 rue de Grenelle', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(707, '07-07', 'Institut d’Études politiques', '27 rue Saint-Guillaume', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(708, '07-08', 'École élémentaire', '8 rue Chomel', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(709, '07-09', 'École élémentaire', '42 avenue Duquesne', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(710, '07-10', 'École maternelle', '48 rue Vaneau', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(711, '07-11', 'École élémentaire', '14 rue Éblé (modifié)', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(712, '07-12', 'École élémentaire', '42 avenue Duquesne', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(713, '07-13', 'École élémentaire', '14 rue Éblé', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(714, '07-14', 'École élémentaire', '10 avenue de La Motte-Picquet', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(715, '07-15', 'École élémentaire', '10 avenue de La Motte-Picquet', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(716, '07-16', 'Collège Jules Romains', '6 rue Cler', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(717, '07-17', 'Collège Jules Romains', '6 rue Cler', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(718, '07-18', 'Collège Jules Romains', '6 rue Cler', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(719, '07-19', 'Conservatoire municipal du 7ème', '135bis rue de l’Université', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(720, '07-20', 'Collège Lycée La Rochefoucauld', '90bis rue Saint-Dominique', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(721, '07-21', 'École maternelle', '28 avenue Rapp', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(722, '07-22', 'École élémentaire', '1 rue du Général Camou', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(723, '07-23', 'École élémentaire', '1 rue du Général Camou', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(724, '07-24', 'Gymnase Camou', '35 avenue de La Bourdonnais', NULL, NULL, 200, 107, 2, 5, 105, 0, 7, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(901, '09-01', 'Mairie d’arrondissement', '6 rue Drouot', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(902, '09-02', 'Mairie d’arrondissement', '6 rue Drouot', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(903, '09-03', 'École maternelle', '11 rue de la Grande Batelière', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(904, '09-04', 'École élémentaire', '32 rue Buffault', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(905, '09-05', 'École élémentaire', '16 rue de la Victoire', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(906, '09-06', 'Lycée Condorcet', '65 rue Caumartin', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(907, '09-07', 'École élémentaire', '10 rue de Clichy', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(908, '09-08', 'École élémentaire', '9 rue Blanche', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(909, '09-09', 'École maternelle', '9 Bis rue Blanche', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(910, '09-10', 'École maternelle', '12 rue Clauzel', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(911, '09-11', 'École maternelle', '12 rue Clauzel', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(912, '09-12', 'Lycée Edgar Quinet', '63 rue des Martyrs', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(913, '09-13', 'École maternelle', '12 rue Chaptal', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(914, '09-14', 'École élémentaire', '12 rue Chaptal', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(915, '09-15', 'École maternelle', '32 rue de Bruxelles', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(916, '09-16', 'Gymnase Paul Gauguin', '35 rue Milton', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(917, '09-17', 'École élémentaire', '10 rue Hippolyte Lebas', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(918, '09-18', 'École maternelle', '22 rue de Rochechouart', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(919, '09-19', 'Lycée Lamartine', '121 rue du Faubourg Poissonnière', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(920, '09-20', 'Gymnase Paul Gauguin', '35 rue Milton', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(921, '09-21', 'École élémentaire', '45 rue de la tour d’Auvergne', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(922, '09-22', 'Lycée Jacques Decour', 'Avenue Trudaine', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(923, '09-23', 'École élémentaire', '15 rue de Turgot', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(924, '09-24', 'École maternelle', '68 rue de Rochechouart', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(925, '09-25', 'École maternelle', '68 rue de Rochechouart', NULL, NULL, 200, 107, 2, 5, 105, 0, 9, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1101, '11-01', 'Mairie d Arrondissement', '12 Place Léon Blum', 48.8585, 2.37937, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1102, '11-02', 'École Élémentaire', '11 bis Av Parmentier', 48.8596, 2.37882, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1103, '11-03', 'École Maternelle', '144 rue de la Roquette', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1104, '11-04', 'École Élémentaire', '35 rue Godefroy Cavaignac', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1105, '11-05', 'École Élémentaire', '35 rue Godefroy Cavaignac', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1106, '11-06', 'École Élémentaire', '33 rue Saint Bernard', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1107, '11-07', 'Collège Anne Franck', '38 rue Trousseau', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1108, '11-08', 'Collège Anne Franck', '38 rue Trousseau', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1109, '11-09', 'École Élémentaire', '10 rue Keller', 48.8538, 2.37673, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1110, '11-10', 'École Élémentaire', '10 rue Keller', 48.8538, 2.37673, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1111, '11-11', 'École Élémentaire', '10 rue Keller', 48.8538, 2.37673, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1112, '11-12', 'École Maternelle', '9 rue Popincourt', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1113, '11-13', 'École Maternelle', '9 rue Popincourt', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1114, '11-14', 'École Élémentaire', '13 rue Froment', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1115, '11-15', 'École Maternelle', '13 Bd Richard Lenoir', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1116, '11-16', 'École Élémentaire', '17 rue Alphonse Baudin', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1117, '11-17', 'École Élémentaire', '17 rue Alphonse Baudin', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1118, '11-18', 'École Élémentaire Saint Sébastien', '17 rue Alphonse Baudin', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1119, '11-19', 'École Élémentaire Saint Sébastien', '17 rue Alphonse Baudin', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1120, '11-20', 'Collège Beaumarchais', '124 rue Amelot', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1121, '11-21', 'Collège Beaumarchais', '124 rue Amelot', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1122, '11-22', 'École Élémentaire', '109 Av Parmentier', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1123, '11-23', 'École Élémentaire', '109 Av Parmentier', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1124, '11-24', 'École Élémentaire', '1 rue Pihet', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1125, '11-25', 'École Élémentaire', '1 rue Pihet', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1126, '11-26', 'École Maternelle', '2 Passage Beslay', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1127, '11-27', 'École Maternelle', '111 Av Parmentier', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1128, '11-28', 'Groupe Scolaire', '39 rue des Trois Bornes', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1129, '11-29', 'Groupe Scolaire', '39 rue des Trois Bornes', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1130, '11-30', 'Groupe Scolaire', '39 rue des Trois Bornes', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1131, '11-31', 'École Élémentaire', '77 Bd de Belleville', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1132, '11-32', 'École Élémentaire', '77 Bd de Belleville', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1133, '11-33', 'Lycée Voltaire', '101 Av de La République', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1134, '11-34', 'Lycée Voltaire', '101 Av de La République', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1135, '11-35', 'École Élémentaire', '98 Av de La République', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1136, '11-36', 'École Élémentaire', '98 Av de La République', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1137, '11-37', 'École Élémentaire', '100 Av de La République', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1138, '11-38', 'École Élémentaire', '100 Av de La République', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1139, '11-39', 'École Élémentaire', '29 rue Sevran', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1140, '11-40', 'École Élémentaire', '22 rue Saint Maur', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1141, '11-41', 'École Maternelle', '14 rue Merlin', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1142, '11-42', 'Collège Alain Fournier', '87 rue Léon Frot', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1143, '11-43', 'Collège Alain Fournier', '87 rue Léon Frot', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1144, '11-44', 'Gymnase Philippe Auguste', '68 Av Philippe Auguste', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1145, '11-45', 'Gymnase Philippe Auguste', '68 Av Philippe Auguste', NULL, NULL, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1146, '11-46', 'École Élémentaire Alexandre Dumas', '30 Passage du Bureau', 48.8541, 2.39374, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1147, '11-47', 'École Élémentaire Alexandre Dumas', '30 Passage du Bureau', 48.8541, 2.39374, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1148, '11-48', 'École Élémentaire', '4 Av de Bouvines', 48.8499, 2.39653, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1149, '11-49', 'École Élémentaire', '4 Av de Bouvines', 48.8499, 2.39653, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1150, '11-50', 'École élémentaire', '16 rue Titon', 48.8519, 2.37762, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1151, '11-51', 'École élémentaire', '16 rue Titon', 48.8519, 2.37762, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1152, '11-52', 'École élémentaire', '16 rue Titon', 48.8519, 2.37762, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1153, '11-53', 'École élémentaire', '16 rue Titon', 48.8519, 2.37762, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1154, '11-54', 'École élémentaire', '8 Cité Voltaire', 48.8526, 2.39015, 200, 107, 2, 5, 105, 0, 11, 1);
INSERT INTO bureau (idbureau, codebureau, lieubureau, adressebureau, latitude, longitude, inscrits, votants, nuls, blancs, exprimes, procurations, idarrondissement, idcirconscription) VALUES(1155, '11-55', 'École élémentaire', '8 Cité Voltaire', 48.8526, 2.39015, 200, 107, 2, 5, 105, 0, 11, 1);


INSERT INTO role (idrole, role, rang) VALUES (1, 'directeur', 1);
INSERT INTO role (idrole, role, rang) VALUES (2, 'assesseur', 2);
INSERT INTO role (idrole, role, rang) VALUES (3, 'préposé aux isoloirs', 3);
INSERT INTO role (idrole, role, rang) VALUES (4, 'agent sécurité', 4);




INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(1, 'Reporter', 'Tintin', '55 rue de Montreuil', '1960-01-01', '01-01-01-01-01', 'tintin@free.fr', 'mdp123', 1, NULL, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(2, 'Chien', 'Milou', '57 rue de Montreuil', '1965-01-01', '02-02-02-02-02', 'milou@free.fr', NULL, 2, 1, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(3, 'Capitaine', 'Haddock', '6 rue Roubo', '1970-02-02', '03-03-03-03-03', 'haddock@free.fr', NULL, 3, 1, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(5, 'Cantatrice', 'Casta', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'ac@free.fr', 'mdp123', 1, 6, 1);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(7, 'Prof', 'Tournesol', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'pt@free.fr', 'mdp123', 1, 3, 2);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(8, 'Rasto', 'Rasto', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'rr@free.fr', 'mdp123', 1, 6, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(9, 'Astérix', 'Astérix', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'aa@free.fr', NULL, 2, 2, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(10, 'Obélix', 'Obélix', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'oo@free.fr', NULL, 2, 2, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(11, 'Idéfix', 'Idéfix', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'ii@free.fr', NULL, 2, 3, 11);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(12, 'Panoramix', 'Panoramix', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'pp@free.fr', NULL, 2, 1, 1);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(13, 'Albert', 'Ribouldingue', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'ar@free.fr', NULL, 4, 1, 1);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(14, 'Maurice', 'Filochard', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'mf@free.fr', NULL, 4, 2, 2);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(15, 'Henri', 'Croquignol', '1, rue de la Paix', '2000-01-31', '01-02-03-04-05', 'hc@free.fr', NULL, 4, 5, 1);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(26, 'Martin', 'Luther King', '1, rue de la Paix', '1938-08-31', NULL, NULL, NULL, 2, NULL, 1);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(27, 'p', 'b', '1, rue de la Paix', '1955-10-03', NULL, NULL, NULL, 2, NULL, 1);
INSERT INTO personne (idpersonne, prenompersonne, nompersonne, adressepersonne, datenaissancepersonne, telephonepersonne, emailpersonne, mdppersonne, idrole, idparti, idarrondissement) VALUES(28, 'a', 'f', 'rue de rivoli', '1981-05-10', NULL, NULL, NULL, 2, NULL, 1);




INSERT INTO affecter (idpersonne, idbureau) VALUES(1, 1101);
INSERT INTO affecter (idpersonne, idbureau) VALUES(2, 2);
INSERT INTO affecter (idpersonne, idbureau) VALUES(5, 1);
INSERT INTO affecter (idpersonne, idbureau) VALUES(7, 1102);
INSERT INTO affecter (idpersonne, idbureau) VALUES(8, 1103);
INSERT INTO affecter (idpersonne, idbureau) VALUES(9, 1);
INSERT INTO affecter (idpersonne, idbureau) VALUES(10, 1);
INSERT INTO affecter (idpersonne, idbureau) VALUES(11, 2);
INSERT INTO affecter (idpersonne, idbureau) VALUES(26, 1);





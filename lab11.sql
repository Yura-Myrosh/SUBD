START TRANSACTION;
 INSERT INTO plane VALUES
 (4, 777, 'MVP', "NewType", '2020-05-01', 300),
 (5, 888, 'MVC', "Boing", '2000-01-01', 350),
 (6, 999, 'MVD', "Rocket", '1991-01-01', 330),
 (/*4*/7, 000, 'MVA', "NewType", '2019-01-01', 250);
 COMMIT;
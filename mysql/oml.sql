-- inserting different profiles into `users`
INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX("d82d712d2a2e448ca59c8f9a82b90a86"), "nananananananananananananananana", "email@email.com", "nanananananananananananananananananananananananananananananananananananananananananananananananaa", "Joe Smith");
INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX("8e8c326f3248414d9d6769f13aff94c4"), "nananananananananananananananana", "email01@email.com", "nanananananananananananananananananananananananananananananananananananananananananananananananaa", "Jane Smith");
INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX("b7d85b6659fd4176a127030b1aa825be"), "nananananananananananananananana", "email02@email.com", "nanananananananananananananananananananananananananananananananananananananananananananananananaa", "Jody Smith");
INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX("8cd8c76744ff4ff6a47d1fe72983cc1f"), "nananananananananananananananana", "email03@email.com", "nanananananananananananananananananananananananananananananananananananananananananananananananaa", "Seemore Butts");

-- inserting different songs into track
INSERT INTO track (trackId, trackLength, trackName, trackPrice) VALUES (UNHEX("8f5eebf4f57e46bc9d4d4e873d0b95c8"), 04.17, "There Will Be Rock", 49.99);
INSERT INTO track (trackId, trackLength, trackName, trackPrice) VALUES (UNHEX("fa0e2fa6037e437a9ed4f01ff2bab197"), 04.38, "The Sound of Noise", 74.99);
INSERT INTO track (trackId, trackLength, trackName, trackPrice) VALUES (UNHEX("5a9ae6f3d29b4b59b6dbca82dc483b3e"), 03.24, "Particles in the Wind", 49.99);
INSERT INTO track (trackId, trackLength, trackName, trackPrice) VALUES (UNHEX("7f5a68481dd34153a94754ae0be64633"), 06.46, "Transpacificism", 49.99);

-- inserting songs into a user favorites playlist
INSERT INTO favorites (favoritesTrackId, favoritesUserId) VALUES (UNHEX("8f5eebf4f57e46bc9d4d4e873d0b95c8"), UNHEX("8e8c326f3248414d9d6769f13aff94c4"));
INSERT INTO favorites (favoritesTrackId, favoritesUserId) VALUES (UNHEX("8f5eebf4f57e46bc9d4d4e873d0b95c8"), UNHEX("b7d85b6659fd4176a127030b1aa825be"));

-- update record in `user` table
UPDATE `user` SET userName = "Marvin Gaye" WHERE userId = UNHEX("8e8c326f3248414d9d6769f13aff94c4");

-- delete record from `user` table
DELETE FROM `user` WHERE userId = UNHEX("d82d712d2a2e448ca59c8f9a82b90a86");

-- select everything in the `user` table
SELECT * FROM `user`;

-- select and count everything in the `user` table where name contains 'smith'
SELECT COUNT(*) FROM `user` WHERE userName LIKE "%smith%";

SELECT favoritesTrackId, favoritesUserId FROM favorites INNER JOIN `user` ON favorites.favoritesUserId = `user`.userId;

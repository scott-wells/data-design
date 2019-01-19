INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX('d82d712d2a2e448ca59c8f9a82b90a86'), 'nananananananananananananananana', 'email@email.com', 'nanananananananananananananananananananananananananananananananananananananananananananananananaa', 'Joe Smith');

INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX('8e8c326f3248414d9d6769f13aff94c4'), 'nananananananananananananananana', 'email01@email.com', 'nanananananananananananananananananananananananananananananananananananananananananananananananaa', 'Jane Smith');

INSERT INTO `user` (userId, userActivationToken, userEmail, userHash, userName) VALUES (UNHEX('b7d85b6659fd4176a127030b1aa825be'), 'nananananananananananananananana', 'email02@email.com', 'nanananananananananananananananananananananananananananananananananananananananananananananananaa', 'Jody Smith');

UPDATE `user` SET userName = 'Marvin Gaye' WHERE userId = UNHEX('8e8c326f3248414d9d6769f13aff94c4');

DELETE FROM `user` WHERE userId = UNHEX('d82d712d2a2e448ca59c8f9a82b90a86');

INSERT INTO track (trackId, trackLength, trackName, trackPrice) VALUES (UNHEX('8f5eebf4f57e46bc9d4d4e873d0b95c8'), 04.17, 'There Will Be Rock', 49.99);

INSERT INTO favorites (favoritesTrackId, favoritesUserId) VALUES (UNHEX('8f5eebf4f57e46bc9d4d4e873d0b95c8'), UNHEX('8e8c326f3248414d9d6769f13aff94c4'));

SELECT * FROM `user` WHERE userId = UNHEX('8e8c326f3248414d9d6769f13aff94c4');
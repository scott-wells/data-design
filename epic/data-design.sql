ALTER DATABASE `data`-design.sql CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS cart;
DROP TABLE IF EXISTS favorites;
DROP TABLE IF EXISTS track;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	userId BINARY(16) NOT NULL,
	userName VARCHAR(32) NOT NULL,
	userEmail VARCHAR(32) NOT NULL,
	userPassword VARCHAR(32) NOT NULL,
	UNIQUE(userId),
	UNIQUE(userEmail),
	PRIMARY KEY(userId)
);

CREATE TABLE track (
	trackId VARCHAR(32) NOT NULL,
	userName VARCHAR(32) NOT NULL,
	userEmail VARCHAR(32) NOT NULL,
	userPassword VARCHAR(32) NOT NULL,
	UNIQUE(userId),
	UNIQUE(userEmail),
	PRIMARY KEY(userId)
);
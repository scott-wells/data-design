ALTER DATABASE swells19 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

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
	trackId BINARY(16) NOT NULL,
	trackLength DEC(5, 2) NOT NULL,
	trackName VARCHAR(32),
	trackPrice DEC(18, 2) NOT NULL,
	UNIQUE(trackId),
	PRIMARY KEY(trackId)
);

CREATE TABLE favorites (
	favoritesTrackId BINARY(16) NOT NULL,
	favoritesUserId BINARY(16) NOT NULL,
	INDEX(favoritesTrackId),
	INDEX(favoritesUserId),
	FOREIGN KEY(favoritesTrackId) REFERENCES track(trackId),
	FOREIGN KEY(favoritesUserId) REFERENCES `user`(userId),
	PRIMARY KEY(favoritesUserId, favoritesTrackId)
);

CREATE TABLE cart (
	cartTrackId BINARY(16) NOT NULL,
	cartUserId BINARY(16) NOT NULL,
	cartTotal DEC(18, 2) NOT NULL,
	INDEX(cartTrackId),
	INDEX(cartUserId),
	FOREIGN KEY(cartTrackId) REFERENCES track(trackId),
	FOREIGN KEY(cartUserId) REFERENCES `user`(userId),
	PRIMARY KEY(cartTrackId, cartUserId)
);
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
	trackId BINARY(16) NOT NULL,
	trackArtistId BINARY(16) NOT NULL,
	trackAlbumId BINARY(16) NOT NULL,
	trackGenreId BINARY(16) NOT NULL,
	trackMoodId BINARY(16) NOT NULL,
	trackVocalsId BINARY(16) NOT NULL,
	trackPriceLicenseId BINARY(16) NOT NULL,
	trackLength DEC(5, 2) NOT NULL,
	trackName VARCHAR(32),
	UNIQUE(trackId),
	INDEX(trackArtistId),
	INDEX(trackAlbumId),
	INDEX(trackGenreId),
	INDEX(trackMoodId),
	INDEX(trackVocalsId),
	INDEX(trackPriceLicenseId),
	FOREIGN KEY(trackArtistId) REFERENCES artist(artistId),
	FOREIGN KEY(trackAlbumId) REFERENCES album(albumId),
	FOREIGN KEY(trackGenreId) REFERENCES genre(genreId),
	FOREIGN KEY(trackMoodId) REFERENCES mood(moodId),
	FOREIGN KEY(trackVocalsId) REFERENCES vocals(vocalsId),
	FOREIGN KEY(trackPriceLicenseId) REFERENCES license(licenseId),
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
	cartLicenseId BINARY(16) NOT NULL,
	cartTrackId BINARY(16) NOT NULL,
	cartUserId BINARY(16) NOT NULL,
	cartVocalsId BINARY(16) NOT NULL,
	cartTotal DEC(M, 2) NOT NULL,
	INDEX(cartLicenseId),
	INDEX(cartTrackId),
	INDEX(cartUserId),
	INDEX(cartVocalsId),
	FOREIGN KEY(cartLicenseId) REFERENCES license(licenseId),
	FOREIGN KEY(cartTrackId) REFERENCES track(trackId),
	FOREIGN KEY(cartUserId) REFERENCES `user`(userId),
	FOREIGN KEY(cartVocalsId) REFERENCES vocals(vocalsId),
	PRIMARY KEY(cartTrackId, cartUserId)
);
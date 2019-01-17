<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8"/>
		<title>Data Design Project</title>
	</head>

	<body>

		<h2>Conceptual Model</h2>

		<p><strong>User</strong></p>
		<ul>
			<li>userId</li>
			<li>userName</li>
			<li>userEmail</li>
			<li>userPassword</li>
		</ul>

		<p><strong>Track</strong></p>
		<ul>
			<li>trackId</li>
			<li>trackArtistId</li>
			<li>trackAlbumId</li>
			<li>trackGenreId</li>
			<li>trackMoodId</li>
			<li>trackVocalsId</li>
			<li>trackLengthId</li>
			<li>trackPrice</li>
		</ul>

		<p><strong>Favorites</strong></p>
		<ul>
			<li>favortiesUserId</li>
			<li>favoritesTrackId</li>
		</ul>

		<p><strong>Cart</strong></p>
		<ul>
			<li>cartIdUserId</li>
			<li>cartTrackId</li>
			<li>cartVocalsId</li>
			<li>cartLicenseId</li>
			<li>cartQuantityTrackId</li>
			<li>cartTotalTrackPrice</li>
		</ul>

	</body>
</html>
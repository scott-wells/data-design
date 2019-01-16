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
			<li>trackInstrumentsId</li>
			<li>trackLengthId</li>
		</ul>

		<p><strong>User Favorites</strong></p>
		<ul>
			<li>userFavortiesId</li>
			<li>userFavoritesIdtrackId</li>
		</ul>

		<p><strong>Cart</strong></p>
		<ul>
			<li>cartId</li>
			<li>userCartId</li>
			<li>userPassword</li>
		</ul>

	</body>
</html>
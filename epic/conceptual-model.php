<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8"/>
		<title>Data Design Project</title>
	</head>

	<body>

		<h2>Conceptual Model</h2>

		<h3>Entities & Attributes:</h3>

		<p><strong>User</strong></p>
		<ul>
			<li>userId (primary key)</li>
			<li>userEmail</li>
			<li>userName</li>
			<li>userPassword</li>
		</ul>

		<p><strong>Track</strong></p>
		<ul>
			<li>trackId (primary key)</li>
			<li>trackAlbumId (foreign key)</li>
			<li>trackArtistId (foreign key)</li>
			<li>trackGenreId (foreign key)</li>
			<li>trackMoodId (foreign key)</li>
			<li>trackVocalsId (foreign key)</li>
			<li>trackPriceLicenseId (foreign key)</li>
			<li>trackLength</li>

		</ul>

		<p><strong>Favorites</strong></p>
		<ul>
			<li>favoritesTrackId (foreign key)</li>
			<li>favortiesUserId (primary key)</li>
		</ul>

		<p><strong>Cart</strong></p>
		<ul>
			<li>cartLicenseId (foreign key)</li>
			<li>cartTrackId (foreign key)</li>
			<li>cartUserId (foreign key)</li>
			<li>cartVocalsId (foreign key)</li>
			<li>cartTotal</li>
		</ul>

		<h3>Relations</h3>
		<ul>
			<li>ONE user selects MANY tracks (1 - M)</li>
			<li>ONE track can be added to ONE cart (1 - 1)</li>
			<li>ONE track can be added to ONE favorites list (1 -1)</li>
		</ul>

		<h2>Entity Relationship Diagram</h2>
		<img src="musicbed-erd-diagram.png" alt="musicbed erd diagram" style="max-width: 50%;"/>

	</body>
</html>
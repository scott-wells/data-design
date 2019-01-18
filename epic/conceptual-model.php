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
			<li>userActivationToken</li>
			<li>userEmail</li>
			<li>userHash</li>
			<li>userName</li>
		</ul>

		<p><strong>Track</strong></p>
		<ul>
			<li>trackId (primary key)</li>
			<li>trackLength</li>
			<li>trackName</li>
			<li>trackPrice</li>
		</ul>

		<p><strong>Favorites</strong></p>
		<ul>
			<li>favoritesTrackId (foreign key)</li>
			<li>favortiesUserId (primary key)</li>
		</ul>

		<p><strong>Cart</strong></p>
		<ul>
			<li>cartTrackId (foreign key)</li>
			<li>cartUserId (foreign key)</li>
			<li>cartTotal</li>
		</ul>

		<h3>Relations</h3>
		<ul>
			<li>ONE user selects MANY tracks (1 - M)</li>
			<li>ONE track can be added to ONE cart (1 - 1)</li>
			<li>ONE favorites list can have MANY tracks (1 - M)</li>
		</ul>

		<h2>Entity Relationship Diagram</h2>
		<img src="musicbed-erd-diagram.png" alt="musicbed erd diagram" style="max-width: 65%;"/>

	</body>
</html>
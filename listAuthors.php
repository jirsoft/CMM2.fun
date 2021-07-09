<!DOCTYPE html>
<!JirSoft 2021, v0.11>
<html>
<head>
	<title>CMM2.fun: AUTHORS</title>
	<meta charset="utf-8">
	<meta name="Description" content="Colour Maximite 2 programs library, list of most of the programs created for this computer">
	<meta name="keywords" content="CMM2,MMBasic,Colour Maximite 2,Color Maximite 2,retro,">
	<meta name="author" content="JirSoft">
	<meta name="robots" content="index,follow">
	<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
	<link rel="manifest" href="/site.webmanifest">
	<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="theme-color" content="#ffffff">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-W51W8H18JG"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'G-W51W8H18JG');
	</script>

	<style>
		body
		{
			background-color: Black;
			font-family: 'Audiowide', sans-serif;
		}
		
		.navbar 
		{
			font-family: 'Audiowide', sans-serif;
			overflow: hidden;
			margin-right: 5px;
			background-image: url("banner.jpg");
			background-repeat: no-repeat;
			background-size: auto;
			background-position: center;
			background-color: Brown;
			position: sticky;
			top: 0;
			height: 60px;
			width: 100%;
		}

		.navbar a 
		{
			float: left;
			display: fixed;
			color: yellow;
			text-align: center;
			margin-top: 32px;
			padding: 5px 16px;
			text-decoration: none;
			font-size: 20px;
		}

		.navbar div 
		{
			float: left;
			display: fixed;
			color: #d0d0d0;
			text-align: center;
			margin-top: 32px;
			padding: 5px 16px;
			text-decoration: none;
			font-size: 20px;
		}

		.navbar a:hover, a:active 
		{
			background: yellow;
			color: black;
		}

		.flex-container
		{
			display: flex;
			flex-wrap: wrap;
			background-color: black;
			justify-content: center;
		}

		.flex-container > a
		{
			background-color: gray;
			color: yellow;
			width: 350px;
			margin: 5px;
			padding: 5px;
			text-align: center;
			line-height: 20px;
			font-size: 17px;
			text-decoration: none;
		}

		.flex-container > a:hover, a:active
		{
			background-color: yellow;
			color: black;
		}

		.flex-row
		{
			display: flex;
			align-items: stretch;
			background-color: brown;
			width: 100%;
			justify-content: center;
		}

		.flex-row > div
		{
			color: black;
			margin: 5px;
			padding: 5px;
			text-align: center;
			font-size: 20px;
		}

		.description
		{
			background-color:black;
			color:white;
			font-family: Arial, Helvetica, sans-serif;
			margin-left: 5px;
			margin-right: 5px;
			margin-top: 10px;
			margin-bottom: 10px;
			padding: 5px;
			text-align: justify;
			text-justify: inter-word;
		}

		.description > a
		{
			color:yellow;
			text-decoration: none;
		}
		
		.description > a:hover, a:active
		{
			color:black;
			background-color: yellow;
		}

	</style>
</head>
<body>
<?php
require_once 'db.php';
$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
   or die('Could not connect: ' . mysql_error());
mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);

$authors = array();
$ids = array();
$items = array();
$id = 1;

//$sql= "SELECT * FROM authors ORDER BY author";
$sql= "SELECT author,id,items FROM authors WHERE id IN (SELECT author FROM apps) ORDER BY authors.author";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
	while ($row = mysql_fetch_assoc($result))
	{
  	$authors[$id] = $row['author'];
  	$ids[$id] = $row['id'];
  	$items[$id] = $row['items'];
  	$id++;
	}
?>

<div class="navbar">
	<a href="index.php">HOME</a>
	<div>AUTHORS</div>
</div>
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -60px;font-size: 32px;">
CMM2 LIBRARY
</div>


<div class="flex-container">
	<?php
		$link = 'index.php';
		for ($i = 1; $i <= count($authors); $i++)
			if ($items[$i] > 1)
				//echo '<a href="listAuthor.php?id=' . $ids[$i] . '">' . strtoupper($authors[$i]) . '<br><span style="color:black">' . $items[$i] . ' contributions</span></a>';
				echo '<a href="listAuthor.php?id=' . $ids[$i] . '">' . $authors[$i] . '<br><span style="color:black">' . $items[$i] . ' contributions</span></a>';
			else
				//echo '<a href="listAuthor.php?id=' . $ids[$i] . '">' . strtoupper($authors[$i]) . '<br><span style="color:black">' . $items[$i] . ' contribution</span></a>';
				echo '<a href="listAuthor.php?id=' . $ids[$i] . '">' . $authors[$i] . '<br><span style="color:black">' . $items[$i] . ' contribution</span></a>';
	?>
</div>

</body>
</html>

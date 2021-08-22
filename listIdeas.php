<!DOCTYPE html>
<!JirSoft 2021, v0.11>
<html>
<head>
	<title>CMM2.fun: LIST IDEAs</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">
	<meta charset="utf-8">
	<meta name="Description" content="Colour Maximite 2 programs library, list of most of the programs created for this computer">
	<meta name="keywords" content="CMM2,MMBasic,Colour Maximite 2,Color Maximite 2,retro,">
	<meta name="author" content="JirSoft">
	<meta name="robots" content="index,follow">
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-W51W8H18JG"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'G-W51W8H18JG');
	</script>
	<style>
		#topButton {
			display: none;
			position: fixed;
			bottom: 20px;
			right: 30px;
			z-index: 99;
			font-size: 18px;
			border: none;
			outline: none;
			background-color: #555;
			color: yellow;
			cursor: pointer;
			padding: 15px;
			border-radius: 4px;
		}

		#topButton:hover {
			background-color: yellow;
			color: black;
		}

		#nextButton {
			display: none;
			position: fixed;
			bottom: 20px;
			right: 100px;
			z-index: 99;
			font-size: 18px;
			border: none;
			outline: none;
			background-color: #555;
			color: yellow;
			cursor: pointer;
			padding: 15px;
			border-radius: 4px;
		}

		#nextButton:hover {
			background-color: yellow;
			color: black;
		}
		body
		{
			background-color: Black;
			font-family: Arial, Helvetica, sans-serif;
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

		.thumbnail:hover {
				position:relative;
				top: 100px;
				left: 100px;
				transform: scale(2);;
				display:block;
				z-index:999;
		}

		.flex-row
		{
			display: flex;
			align-items: stretch;
			background-color: Black;
			width: 400;
			padding: 5px;
		}

		.flex-row > div
		{
			color: Cyan;
			background-color: Black;
			margin: 5px;
			padding: 5px;
			text-align: left;
			font-size: 16px;
		}


		.flex-row > img
		{
			width: 200px;
			max-width: 220px;
			height: 30%;
			display: block;
		}
		
		.flex-total
		{
			font-family: 'Audiowide', sans-serif;
			display: flex;
			align-items: stretch;
			background-color: brown;
			width: 100%;
			justify-content: center;
		}

		.flex-total > div
		{
			color: black;
			margin: 5px;
			padding: 5px;
			text-align: center;
			font-size: 20px;
		}
		
		.description
		{
			text-align: justify;
			color: White;
		}
		
		.description > a, .rating > a
		{
			color: yellow;
			text-decoration: none;
		}

		.description > a:hover, .rating > a:hover
		{
			color: black;
			background-color: yellow;
			text-decoration: none;
		}
		
		.titleAuthor
		{
			color:yellow;
			text-decoration: none;
		}

		.titleAuthor:hover
		{
			color:black;
			background: yellow;
		}
		
		.superScript
		{
			vertical-align: super;
			color:yellow;
			text-decoration: none;
			font-size: 12px;
		}

		.superScript:hover
		{
			color:black;
			background: yellow;
		}
	</style>
</head>
<body>
<button onclick="topFunction()" id="topButton" title="Go to top">Top</button>
<button onclick="nextFunction()" id="nextButton" title="Next Page">>></button>
<script>
	//Get the button
	var topbutton = document.getElementById("topButton");
	var nextbutton = document.getElementById("nextButton");

	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {scrollFunction()};

	function scrollFunction() 
	{
		//nextbutton.style.display = "block";
		if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) 
		{
			topbutton.style.display = "block";
		} 
		else 
		{
			topbutton.style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
	
	function nextFunction() {
		document.body.scrollTop = document.body.scrollTop + window.innerHeight - 100;
		document.documentElement.scrollTop = document.documentElement.scrollTop + window.innerHeight - 100;
	}
</script>

<?php
require_once 'db.php';
$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
   or die('Could not connect: ' . mysql_error());
mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);


if ($limit == 0) 
{
	$sql= "SELECT COUNT(*) AS totalApps FROM apps WHERE category='0' AND enabled>0";
	
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
		if ($row = mysql_fetch_assoc($result))
			//$cnt = 'SHOWN ' . $row['totalApps'] . ' PRG(S)';
			$list = 'IDEAS (SHOWN ' . $row['totalApps'] . ')';
}

?>

<div class="navbar">
	<a href="index.php">HOME</a>
	<a href="newIdea.php">ADD IDEA</a>	<div>
	<?php
	echo $list;
	?>
	</div>
</div>
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -60px;font-size: 32px;">
CMM2 LIBRARY
</div>


<div class="main">

<?php
function replaceLinks($d)
{
	$nd = $d;
	while ($p1 = strpos($nd, '[URL='))
	{
		if ($p2 = strpos($nd, ']', $p1))
		{
			$nn = substr($nd, 0, $p1) . '<a target="_blank" href="' . substr($nd, $p1 + 5, $p2 - $p1 - 5) . '">';
			if ($p3 = strpos($nd, '[/URL]', $p2))
			{
				$nn .= substr($nd, $p2 + 1, $p3 - $p2 - 1) . '</a>' . substr($nd, $p3 + 6);
			}
		}
		$nd = $nn;
	}
	$nd = str_replace("[b]", "<b>", $nd);
	$nd = str_replace("[/b]", "</b>", $nd);
	$nd = str_replace("[i]", "<i>", $nd);
	$nd = str_replace("[/i]", "</i>", $nd);
	$nd = str_replace("[u]", "<u>", $nd);
	$nd = str_replace("[/u]", "</u>", $nd);
	$nd = str_replace("[o]", "&bull;", $nd);
	return ($nd);
}

function isFile($pth)
{
	$ext = substr(strtolower($pth),-4);
	if ($ext == ".zip" or $ext == ".bas" or $ext == ".inc" or $ext == ".txt" or $ext == ".pdf" or $ext == ".zip")
		return (true);
	else
		return (false);
}


//get data from database
$sql= "SELECT * FROM apps WHERE category='0' AND enabled>0 ORDER BY rating DESC, title ASC";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result) {
  while ($row = mysql_fetch_assoc($result))
  {
		echo '<div class="flex-row">';
				
				echo '
				<div style="flex-grow: 3">
					<span><b>
						';
							echo $row['title'] . '</a>';							
						echo ' </b>';
						echo '
					<br></span>
					<span style="font-style: italic;color:white;">
						';
						echo $row['subtitle'];
						echo '
					<br></span>
					';
					$rating = $row['rating'];
					$id = $row['id'];
					$cururi = $_SERVER['REQUEST_URI'];
					$rate = "rateApp.php?id=" . $id . "&url='" . $cururi . "'";
					echo '<div class="rating">';
						if ($rating >= 1)
							echo '<img style="max-width: 16px;" src="smile.png" title="' . $rating . ' wish-point(s)">';
						if ($rating >= 5)
							echo '<img style="max-width: 16px;" src="smile.png" title="' . $rating . ' wish-point(s)">';
						if ($rating >= 25)
							echo '<img style="max-width: 16px;" src="smile.png" title="' . $rating . ' wish-point(s)">';
						if ($rating >= 100)
							echo '<img style="max-width: 16px;" src="smile.png" title="' . $rating . ' wish-point(s)">';
						if ($rating >= 500)
							echo '<img style="max-width: 16px;" src="smile.png" title="' . $rating . ' wish-point(s)">';
						if ($rating >= 1000)
							echo '<img style="max-width: 16px;" src="smile.png" title="' . $rating . ' wish-point(s)">';

						echo " <a class='superScript' href=$rate>ADD 1 wish-point";
						if ($rating==1)
							echo " to first wish</a>";
						elseif ($rating>0)
							echo " to " . $rating . " wishes</a>";
						else
							echo "</a>";
					echo '</div>';

					echo '<p><div class="description">';
					echo replaceLinks($row['description']);
					echo '</div>
				</div>
			</div>
			<hr style="height:1px;border-width:0;color:gray;background-color:gray">			
		';
  }
}
?>
</div>

</body>
</html>

<!DOCTYPE html>
<!JirSoft 2021, v0.10>
<html>
<head>
	<title>CMM2.fun: EDIT ITEM</title>
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
	<script>
		function submitOver()
		{
			var button = document.getElementById('submit');
			button.style.background = "yellow";
			button.style.color = "black";
		}
		
		function submitOut()
		{
			var button = document.getElementById('submit');
			button.style.background = "gray";
			button.style.color = "yellow";
		}
		
		function validateForm()
		{
			if (document.forms["editPrg"]["link"].value == "")
			{
				alert("'Download at' must be filled out");
				return false;
			}
			if ((document.forms["editPrg"]["link"].value.substring(0, 7).toLowerCase() != "http://") && (document.forms["editPrg"]["link"].value.substring(0, 8).toLowerCase() != "https://"))
			{
				alert("'Download at' must start with 'http://' or 'https://'");
				return false;
			}
		}
				
		</script>
	<style>
/* class applies to select element itself, not a wrapper element */
.select-css {
  display: block;
  font-size: 20px;
  font-family: 'Audiowide', sans-serif;
  color: yellow;
  padding: 5px 16px;
  width: 95%;
  box-sizing: border-box;
  margin: 10px;
  border: 1px solid yellow;
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  background-color: gray;
}
/* Hide arrow icon in IE browsers */
.select-css::-ms-expand {
  display: none;
}
/* Hover style */
.select-css:hover {
  background-color: yellow;
  color: black;
}
/* Focus style */
.select-css:focus {
  color: black; 
  background-color: yellow;
  outline: none;
}
/* Set options to normal weight */
.select-css option {
  color: yellow; 
  background-color: gray;
}
/* Disabled styles */
.select-css:disabled, .select-css[aria-disabled=true] {
  color: yellow; 
  background-color: gray;
}
.select-css:disabled:hover, .select-css[aria-disabled=true] {
  color: yellow; 
  background-color: gray;
}

input[type=text]
{
	background-color: gray;
	color: cyan;
	width: 100%;
	padding: 5px 16px;
	border: 1px solid yellow;
	box-sizing: border-box;
	font-size: 20px;
}
textarea
{
	width: 100%;
	height: 200px;
	padding: 5px 16px;
	box-sizing: border-box;
	border: 1px solid yellow;
	color: cyan;
	font-size: 20px;
	background-color: gray;
	resize: none;
}
input[type="submit"]
{
	background-color: gray;
	border: none;
	color: yellow;
	padding: 5px 16px;
	text-decoration: none;
	font-size: 20px;
	cursor: pointer;
	font-family: 'Audiowide', sans-serif;
}
.file-name
{
	font-size: 16px;
	color: cyan;
}
.customFile::-webkit-file-upload-button
{
	visibility: hidden;
}

.customFile::before
{
	content: 'Screenshot file';
	label: 'max 500kB';
	background-color: gray;
	padding: 5px 40px;
	margin: 5px;
	color: yellow;
	outline: none;
	white-space: nowrap;
	-webkit-user-select: none;
	cursor: pointer;
	font-size: 20px;
	font-family: 'Audiowide', sans-serif;
}
.customFile:hover::before
{
	background-color: yellow;
	color: black;
	cursor: pointer;
}
.customFile:active::before
{
	background-color: black;
	color: yellow;
	cursor: pointer;
}
body
{
	background-color: Black;
	color: White;
	font-family: 'Audiowide', sans-serif;
}

.navbar 
{
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
.navbar a:hover 
{
	background: yellow;
	color: black;
}
.flex-container {
	display: flex;
	flex-wrap: wrap;
	background-color: black;
	justify-content: center;
}
.flex-container > div {
	background-color: gray;
	color: cyan;
	width: 150px;
	margin: 10px;
	text-align: center;
	line-height: 40px;
	font-size: 20px;
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
	color: yellow;
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
}
</style></head>
<body>
<div class="navbar">
	<a href="index.php">HOME</a>
	<div>EDIT ITEM</div>
</div>
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -60px;font-size: 32px;">
CMM2 LIBRARY
</div>
	<?php
		require_once 'db.php';
		$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
			 or die('Could not connect: ' . mysql_error());
		mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);
		
		if(isset($_GET['id']))
		{
			$id = intval($_GET['id']);
			$sql= "SELECT * FROM apps WHERE id=" . $id;
			$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
			if ($result)
				if ($row = mysql_fetch_assoc($result))
				{
					$title = $row['title'];
					$subtitle = $row['subtitle'];
					$version = $row['version'];
					$scr_path = $row['scr_path'];
					$description = $row['description'];
					$description = str_replace("<br>", "\n", $description);
					$description = str_replace("<p>", "\n\n", $description);
					$link = $row['link'];
					$author = '???';
					
					$sql= 'SELECT * FROM authors WHERE id=' . $row['author'];
					$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
					if ($result)
						if ($row1 = mysql_fetch_assoc($result))
							$author = $row1['author'];
							
					echo '<br>';
					echo $title . ' by ' . $author . '<br>';

					echo '<hr>';
					
					$cururi = $_SERVER['REQUEST_URI'];
					echo '<form name="editPrg" action="editExistingApp.php?id=' . $id . '&url=' . $cururi . '" onsubmit="return validateForm()" method="post" enctype="multipart/form-data">';
					echo 'Subtitle<br><input type="text" name="subtitle" value="' . $subtitle . '">&nbsp;&nbsp;&nbsp;<br>';
					echo 'Version<br><input type="text" name="version" value="' . $version . '">&nbsp;&nbsp;&nbsp;<br>';
					echo 'Description<br><textarea name="description" rows="25" cols="80" style="resize:none">' . $description . '</textarea><br>';
					echo 'Download<br><input type="text" name="link" value="' . $link . '">&nbsp;&nbsp;&nbsp;<br>';
					echo '<input id="submit" type="submit" value="Update record in DB" onmouseover="submitOver()" onmouseout="submitOut()">';
					echo '</form>';
							
				}
  	}
  ?>
  		
  		
</body>
</html>					
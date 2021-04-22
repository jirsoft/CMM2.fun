<!DOCTYPE html>
<!JirSoft 2021, v0.10>
<html>
<head>
	<title>CMM2.fun ADD APP</title>
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
			if (document.forms["addPrg"]["title"].value == "")
			{
				alert("'Title' must be filled out");
				return false;
			}
			if (document.forms["addPrg"]["link"].value == "")
			{
				alert("'Download at' must be filled out");
				return false;
			}
			if ((document.forms["addPrg"]["link"].value.substring(0, 7).toLowerCase() != "http://") && (document.forms["addPrg"]["link"].value.substring(0, 8).toLowerCase() != "https://"))
			{
				alert("'Download at' must start with 'http://' or 'https://'");
				return false;
			}
			if (document.forms["addPrg"]["author"].value == 1)
			{
				if (document.forms["addPrg"]["new_author"].value == "")		
				{
					alert("'New name' must be filled out when 'NEW AUTHOR' selected");
					return false;
				}
			}
		}
		
		function validateFile()
		{
			const fi = document.getElementById('screen');
			// Check if any file is selected.
			if (fi.files.length > 0)
			{
				for (const i = 0; i <= fi.files.length - 1; i++)
				{
 					const fsize = fi.files.item(i).size;
 					const fname = fi.files.item(i).name;
					const file = Math.round((fsize / 1024));
					// The size of the file.
					if (file > 500)
					{
						alert("File too big, please select a file less than 500kB, this one has " + file + "kB!");
					}
					else
						document.getElementById('fileInfo').innerHTML = '   ' + fname + ' (' + file + 'kB)';
				}
			}
		}
		
		function authorSelected()
		{
			txt = document.getElementById("author").options[document.getElementById("author").selectedIndex].text;
			ind = txt.indexOf('{');
			if (ind < 0)
			{
				auth = txt;
				cnt = '';
			}
			else
			{
				auth = txt.substr(0, ind - 1);
				cnt = txt.substr(ind + 1, txt.length - ind - 2);
			}
			document.getElementById('new_author').value = auth;
			document.getElementById('contact').value = cnt;
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
	padding: 5px 16px;
	border: 1px solid yellow;
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
	<div>ADD ITEM</div>
</div>
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -60px;font-size: 32px;">
CMM2 LIBRARY
</div>
	<?php
		require_once 'db.php';
		$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
			 or die('Could not connect: ' . mysql_error());
		mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);
		$authors = array();
		$contacts = array();
    $ids = array();
    $id = 2;
		$sql= 'SELECT * FROM authors ORDER BY author ASC';
		$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
		if ($result)
		{
			while ($row = mysql_fetch_assoc($result))
			{
				$authors[$id] = $row['author'];
				$ids[$id] = $row['id'];
				$contacts[$id] = $row['contact'];
				$id++;
				//echo $authors[$row['id']] . ':' . $contacts[$row['id']] . '<br>';
			}
		}
		$authors[1] = 'NEW AUTHOR';
		$contacts[1] = '';
	?>
	<br> * REQUIRED FIELDs<br><br>
	<form name="addPrg" action="insertNewApp.php"  onsubmit="return validateForm()" method="post" enctype="multipart/form-data">
		Title *<br><input type="text" name="title">&nbsp;&nbsp;&nbsp;<br>
		Version <br><input type="text" name="version">&nbsp;&nbsp;&nbsp;<br>
		Subtitle <br><input type="text" name="subtitle"><br><br>
		Description <br><textarea name="description" rows="25" cols="80" style="resize:none"></textarea><br>
		<br>Choose a file (max 500kB)<span class="file-name" id="fileInfo"></span><br>
		<input type="file" id="screen" name="screen" class="customFile" onchange="validateFile()">
		<br><br>
		Download at (link to file) *<br><input type="text" name="link" width=200px><br><br>
		Category (check all that apply)<br>
			<?php
				$countCat = 1;
				$sql= 'SELECT * FROM categories ORDER BY id ASC';
				$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
				echo '<table style="width:100%"><tr>';
				if ($result)
					while ($row = mysql_fetch_assoc($result))
					{
						echo '<td>';
						echo '<input type="checkbox" name="category' . $row['id'] . '" value="' . $row['id'] . '"';
						if ($row['id'] == 1)
							echo ' checked>';
						else
							echo '>';
						echo '<span class="checkmark"></span>';
						echo '<label for category' . $row['id'] . ' class "container"> ' . strtoupper($row['category']);
						echo '</label></td>';
						//<input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
						//<label for="vehicle3"> I have a boat</label>
						$countCat++;
						if ($countCat == 5)
						{
							$countCat = 1;
							echo '</tr>';
						}
					}
				echo '</table>';
			?>
		<hr>
			<label for="author">Author </label>
			<?php
			echo '<select class="select-css" id="author" name="author" onchange="authorSelected()">';
				for ($i = 1; $i <= count($authors); $i++)
				{
					$au = $authors[$i]; if ($contacts[$i] != '') $au .= ' {' . $contacts[$i] . '}';
					echo '<option value="' . $ids[$i] . '">' . $au . '</option>';
				}
			echo '</select><br>';
			?>		
			New name <input style="left:150px;position:absolute;width:500px" type="text" name="new_author" id="new_author"><br>
			<br>(required only if <span style="color:cyan;">NEW AUTHOR</span> selected)<br>
			<br>New contact <input style="left:150px;position:absolute;width:500px" type="text" name="contact" id="contact"><br><br>
		<hr>
		<input id="submit" type="submit" value="Upload new record into DB" onmouseover="submitOver()" onmouseout="submitOut()">
	</form>
</body>
</html>					
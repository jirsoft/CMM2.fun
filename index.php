<!DOCTYPE html>
<html>
<head>
<title>CMM2.fun HOME</title>
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
	overflow: hidden;
	margin-right: 5px;
	background-image: url("banner.jpg");
	background-repeat: no-repeat;
	background-size: auto;
	background-position: center;
	background-color: Brown;
	position: sticky;
	top: 0;
	height: 274px;
	width: 100%;
}

.navbar a 
{
	float: left;
	display: fixed;
	color: White;
	text-align: center;
	margin-top: 244px;
	padding: 5px 16px;
	text-decoration: none;
	font-size: 20px;
}

.navbar div 
{
	float: left;
	display: fixed;
	color: Gray;
	text-align: center;
	margin-top: 244px;
	padding: 5px 16px;
	text-decoration: none;
	font-size: 20px;
}

.navbar a:hover 
{
  background: Gray;
  color: White;
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

</style>
</head>
<body>
<?php
require_once 'db.php';
$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
   or die('Could not connect: ' . mysql_error());
mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);

$cats = array();
$links = array();

$sql= "SELECT * FROM categories ORDER BY id";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  while ($row = mysql_fetch_assoc($result))
  {
  	$cats[$row['id']] = $row['category'];
  	$links[$row['id']] = 'listApps.php?cat=' . $row['id'];
	}

$cnt = 'TOTAL ';
$sql= "SELECT COUNT(*) AS totalApps FROM apps";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  if ($row = mysql_fetch_assoc($result))
  	$cnt .= $row['totalApps'] . ' PRG(S)';
  	
$sql= "SELECT COUNT(*) AS totalAuthors FROM authors";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  if ($row = mysql_fetch_assoc($result))
  	$cnt .= ' FROM ' . ($row['totalAuthors'] - 1) . ' AUTHOR(S)';
?>

<div class="navbar">
	<div>HOME</div>
	<a href="newApp.php">ADD PRG</a>
</div>
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -260px;;font-size: 64px;">
CMM2 PRG LIBRARY
<span style="font-size: 32px;"><br>Food for your pet</span>
</div>

<div class="description">
	This site should be something like <b>INDEX</b> to most of the programs written for	<a href="https://geoffg.net/maximite.html" target="_blank">Colour Maximite 2 computer</a>. 
	The link is pointing to the home page of CMM2's <i>father</i>, Geoff Graham, where you can find all the details, 
	so now just short introduction of this computer:
	<br>
	<br>
	<div style="margin:20px;">
		<hr>
		The Colour Maximite 2 is a small self contained computer inspired by the home computers of the early 80's such as the Tandy TRS-80, Commodore 64 and Apple II. It uses a USB keyboard and outputs to a standard VGA monitor.  Programs are saved on a full size SD card and it boots straight into its own sophisticated BASIC interpreter with a full screen program editor.<br>
		<br>The Colour Maximite 2 is designed to be simple to use, easy to program and provide endless hours of fun.<br>
		<br>While the concept of the Colour Maximite 2 is borrowed from the computers of the 80's the technology used is very much up to date.  Its CPU is an ARM Cortex-M7 32-bit RISC processor running at 480MHz and it generates a VGA output at resolutions up to 1280x720 pixels with up to 65,536 colours.<br>
		<br>
		<div style="text-align: center;"><i>Geoff Graham</i></div>
		<hr>
	</div>
	<br>
	If you are enjoying this site, take a look also to the <a href="https://www.thebackshed.com/forum/ViewForum.php?FID=16" target="_blank">The Back Shed forum</a>, there you will find everything else...
	<br>
	<img src="JirSoft.png" style="width:80px; float:right;">
	<br>
	<br>
</div>

<div class="flex-row">
	<div>
<?php
		echo $cnt;	
?>
	</div>
</div>


<div class="flex-container">
<div><a href="listApps.php" style="color:cyan;text-decoration: none;">ALL</div>
<div><a href="listApps.php?sort=1&limit=5" style="color:cyan;text-decoration: none;">LAST 5</div>

<?php
	for ($i = 1; $i <= count($cats); $i++)
		echo '<div><a href="' . $links[$i] . '" style="color:cyan;text-decoration: none;">' . strtoupper($cats[$i]) . '</div>';	
?>
</div>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
<style>
body
{
	background-color: Black;
	font-family: Copperplate, Papyrus, fantasy;
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
  font-size: 25px;
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
  font-size: 25px;
}
</style>
</head>
<body>
<?php
$link = mysql_connect('wm135.wedos.net', 'w25758_cmm2', 'phP_phP_phP_1')
   or die('Could not connect: ' . mysql_error());
     
mysql_select_db('d25758_cmm2') or die('Could not select database');

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
  	$cnt .= $row['totalApps'] . ' APP(S)';
  	
$sql= "SELECT COUNT(*) AS totalAuthors FROM authors";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  if ($row = mysql_fetch_assoc($result))
  	$cnt .= ' FROM ' . ($row['totalAuthors'] - 1) . ' AUTHOR(S)';
?>

<div class="navbar">
	<div>HOME</div>
</div>
<div style="line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -260px;;font-size: 64px;">
CMM2 APP LIBRARY
<span style="line-height: 50%;font-size: 32px;"><br>Food for your Colour Maximite 2</span>
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

<?php
	for ($i = 1; $i <= count($cats); $i++)
		echo '<div><a href="' . $links[$i] . '" style="color:cyan;text-decoration: none;">' . strtoupper($cats[$i]) . '</div>';	
?>
</div>

</body>
</html>

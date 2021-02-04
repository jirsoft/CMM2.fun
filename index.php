<!DOCTYPE html>
<html>
<head>
<style>
body
{
	background-color: Black;
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

.main 
{
  
}
.flex-container {
  display: flex;
  flex-wrap: wrap;
  background-color: black;
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
  background-color: Black;
  width: 400;
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
  width: 30%;
  max-width: 200px;
  height: 30%;
  padding: 5px;
  display: block;
}
</style>
</head>
<body>

<div class="navbar">
	<div>HOME</div>
</div>
<div style="line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -260px;;font-size: 64px;">
CMM2 APP LIBRARY
<span style="line-height: 50%;font-size: 32px;"><br>Food for your Colour Maximite 2</span>
</div>

<div class="flex-container">
<div><a href="listApps.php" style="color:cyan;text-decoration: none;">ALL</div>
<?php
$link = mysql_connect('wm135.wedos.net', 'w25758_cmm2', 'phP_phP_phP_1')
   or die('Could not connect: ' . mysql_error());
     
mysql_select_db('cmm2') or die('Could not select database');

$cats = array();
$sql= "SELECT * FROM categories ORDER BY id";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  while ($row = mysql_fetch_assoc($result))
  {
  	$cats[$row['id']] = $row['category'];
  	$box = strtoupper($row['category']);
  	echo '<div><a href="listApps.php?cat=' . $row['id'] . '" style="color:cyan;text-decoration: none;">' . $box . '</div>';
	}
?>
</div>

</body>
</html>

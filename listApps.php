<!DOCTYPE html>
<html>
<head>
<title>CMM2.fun APP LIST</title>
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
	height: 274px;
	width: 100%;
}

.navbar a 
{
	float: left;
	display: fixed;
	color: Yellow;
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
	color: White;
	text-align: center;
	margin-top: 244px;
	padding: 5px 16px;
	text-decoration: none;
	font-size: 20px;
}

.navbar a:hover 
{
  background: Gray;
  color: Yellow;
}

.thumbnail:hover {
    position:relative;
    top: 0px;
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

.flex-row a:hover 
{
  background: black;
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
  color: yellow;
  margin: 5px;
  padding: 5px;
  text-align: center;
  font-size: 20px;
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
$sql= "SELECT * FROM categories ORDER BY id";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  while ($row = mysql_fetch_assoc($result))
  {
  	$cats[$row['id']] = $row['category'];
	}
	
$list = '';
$order = 'title ASC';			// alphabet
if(isset($_GET['sort']))
	$sort = $_GET['sort'];
if($sort > 0)
{
	$list .= 'NEWEST ';
	$order = 'changed DESC';  // newest
}
	
$limit - 0;
if(isset($_GET['limit']))
	$limit = $_GET['limit'];
if ($limit > 0)
{
	$list .= $limit . ' PROGRAMS';
	$order .= ' LIMIT ' . $limit;
	$cnt = 'SHOWN ' . $limit . ' PRG(S)';
}
else
	$list .= 'PROGRAMS';

$cat = 0;
if(isset($_GET['cat']))
	$cat = $_GET['cat'];

if ($cat > 0)
	$list .= ' FROM CATEGORY ' . strtoupper($cats[$cat]);
	
if ($list == 'PROGRAMS')
	$list = 'ALL PROGRAMS';

if ($limit == 0) 
{
	if ($cat > 0 )
		$sql= "SELECT COUNT(*) AS totalApps FROM apps WHERE category=" . $cat . " ORDER BY " . $order;
	else
		$sql= "SELECT COUNT(*) AS totalApps FROM apps ORDER BY " . $order;
	
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
		if ($row = mysql_fetch_assoc($result))
			$cnt = 'SHOWN ' . $row['totalApps'] . ' PRG(S)';
}

?>

<div class="navbar">
	<a href="index.php">HOME</a>
	<div>
	<?php
	echo $list;
	?>
	</div>
</div>
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -260px;;font-size: 64px;">
CMM2 PRG LIBRARY
<span style="font-size: 32px;"><br>Food for your pet</span>
</div>

<div class="flex-total">
	<div>
<?php
		echo $cnt;	
?>
	</div>
</div>

<div class="main">

<?php
    
$cats = array();

$sql= "SELECT * FROM categories ORDER BY id";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  while ($row = mysql_fetch_assoc($result))
  	$cats[$row['id']] = $row['category'];

//get data from database
if ($cat > 0 )
	$sql= "SELECT * FROM apps WHERE category=" . $cat . " ORDER BY " . $order;
else
	$sql= "SELECT * FROM apps ORDER BY " . $order;
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result) {
  while ($row = mysql_fetch_assoc($result))
  {
		echo '<div class="flex-row">';
				if ($row['scr_path'] != '')
				{
					echo '<a href="screens/' . $row['scr_path'] . '" target="_blank">';
					echo '<img style="max-width: 200px;" class="thumbnail" src="screens/' . $row['scr_path'] . '">';
					echo '</a>';
				}
				else
					echo '<img style="max-width: 200px;" src="screens/MissingScreenshot.jpg">';
				
				echo '
				<div style="flex-grow: 3">
					<span><b>
						'; echo '<a href="' . $row['link'] .'" style="color:cyan;" target="_blank" title="Go to download">';
						echo $row['title'] . ' ' . $row['version'] . '</a>';
						if ($row['author'] != 1)
						{
							$sql1= "SELECT * FROM authors WHERE id=" . $row['author'];
							$result1 = mysql_query($sql1) or die('Query failed: ' . mysql_error());
							if ($result1)
								if ($row1 = mysql_fetch_assoc($result1))
									if ($row1['contact'] != '')
										echo '</b> by <b><a href="' . $row1['contact'] . '" style="color:cyan;" target="_blank" title="Visit author">' . $row1['author'] . '</a>';
									else
										echo '</b> by <b>' . $row1['author'];
						}
						echo ' </b>(' . strtoupper($cats[$row['category']]) . ', updated ' . date("d-m-Y H:i:s", strtotime($row['changed'])) . ')';
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
					$rate = 'rateApp.php?id=' . $id;
					if ($rating >= 1)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add STAR to app"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add STAR to app"></a>';
					if ($rating >= 10)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add STAR to app"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add STAR to app"></a>';
					if ($rating >= 100)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add STAR to app"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add STAR to app"></a>';
					if ($rating >= 500)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add STAR to app"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add STAR to app"></a>';
					if ($rating >= 1000)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add STAR to app"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add STAR to app"></a>';
					
					echo '
					<div style="text-align: justify;color: White;">
						';
						echo $row['description'];
						echo '
					</div>
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

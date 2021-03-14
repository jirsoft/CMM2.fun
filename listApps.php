<!DOCTYPE html>
<!JirSoft 2021, v0.10>
<html>
<head>
	<title>CMM2.fun APP LIST</title>
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
			background: black;
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
		
		.description > a
		{
			color: yellow;
			text-decoration: none;
		}

		.description > a:hover
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
if ($sort == 1)
{
	$list .= 'NEWEST ';
	$order = 'changed DESC';  // newest
}
elseif ($sort == 2)
{
	$list .= 'TOP LIKED ';
	$order = 'rating DESC';  // best rated
}
	
$limit - 0;
if(isset($_GET['limit']))
	$limit = $_GET['limit'];
if ($limit > 0)
{
	$list .= $limit . ' ITEMS';
	$order .= ' LIMIT ' . $limit;
	//$cnt = 'SHOWN ' . $limit . ' PRG(S)';
}
else
	$list .= 'ITEMS';

$cat = 0;
if(isset($_GET['cat']))
	$cat = $_GET['cat'];

if ($cat > 0)
	$list .= ' FROM CATEGORY ' . strtoupper($cats[$cat]);
	
if ($list == 'ITEMS')
	$list = 'ALL ITEMS';

if ($limit == 0) 
{
	if ($cat > 0 )
		$sql= "SELECT COUNT(*) AS totalApps FROM apps WHERE enabled>0 AND FIND_IN_SET(" . $cat . ", category)>0";
	else
		$sql= "SELECT COUNT(*) AS totalApps FROM apps WHERE enabled>0";
	
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
		if ($row = mysql_fetch_assoc($result))
			//$cnt = 'SHOWN ' . $row['totalApps'] . ' PRG(S)';
			$list .= ' (SHOWN ' . $row['totalApps'] . ')';
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
<div style="text-shadow: 2px 2px brown;font-family: 'Audiowide', sans-serif;line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -60px;font-size: 32px;">
CMM2 LIBRARY
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
	//$sql= "SELECT * FROM apps WHERE enabled>0 AND category=" . $cat . " ORDER BY " . $order;
	$sql= "SELECT * FROM apps WHERE enabled>0 AND FIND_IN_SET(" . $cat . ", category)>0 ORDER BY " . $order;
else
	$sql= "SELECT * FROM apps WHERE enabled>0 ORDER BY " . $order;
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
						'; echo '<a class="titleAuthor" href="' . $row['link'] .'" target="_blank" title="Go to download">';
						echo $row['title'] . ' ' . $row['version'] . '</a>';
						if ($row['author'] != 1)
						{
							$sql1= "SELECT * FROM authors WHERE id=" . $row['author'];
							$result1 = mysql_query($sql1) or die('Query failed: ' . mysql_error());
							if ($result1)
								if ($row1 = mysql_fetch_assoc($result1))
									if ($row1['contact'] != '')
										echo '</b> by <b><a class="titleAuthor" href="' . $row1['contact'] . '" target="_blank" title="Visit author">' . $row1['author'] . '</a>';
									else
										echo '</b> by <b>' . $row1['author'];
						}
						echo ' </b>(';
						$cat = explode(',', $row['category']);
						$catlist = '';
						foreach ($cat as $catid)
							$catlist .= $cats[$catid] . '/';
						if (substr($catlist, -1) == '/')
							$catlist = substr($catlist, 0, strlen($catlist) - 1);				
						echo strtoupper($catlist);
						echo ', updated ' . date("d-m-Y H:i:s", strtotime($row['changed'])) . ')';
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
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="smile.png" title="Add 1 smiling point (already ' . $rating . ')"></a>';
					if ($rating >= 5)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="smile.png" title="Add 1 smiling point (already ' . $rating . ')"></a>';
					if ($rating >= 25)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="smile.png" title="Add 1 smiling point (already ' . $rating . ')"></a>';
					if ($rating >= 100)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="smile.png" title="Add 1 smiling point (already ' . $rating . ')"></a>';
					if ($rating >= 500)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="smile.png" title="Add 1 smiling point (already ' . $rating . ')"></a>';
					if ($rating >= 1000)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="smile.png" title="Add 1 smiling point (already ' . $rating . ')"></a>';
					/*
					if ($rating >= 1)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add 1 point to rating"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add 1 point to rating"></a>';
					if ($rating >= 5)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add 1 point to rating"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add 1 point to rating"></a>';
					if ($rating >= 25)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add 1 point to rating"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add 1 point to rating"></a>';
					if ($rating >= 100)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add 1 point to rating"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add 1 point to rating"></a>';
					if ($rating >= 500)
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="fullStar.png" title="Add 1 point to rating"></a>';
					else
						echo '<a href="' . $rate . '"><img style="max-width: 16px;" src="emptyStar.png" title="Add 1 point to rating"></a>';
						*/
					//echo '<span style="color: gray;"> (' . $rating . ')</span>';
					echo '<div class="description">';
						echo $row['description'];
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

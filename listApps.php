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

.main 
{
  
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
	$list .= $limit . ' APPLICATIONS';
	$order .= ' LIMIT ' . $limit;
}
else
	$list .= 'APPLICATIONS';

$cat = 0;
if(isset($_GET['cat']))
	$cat = $_GET['cat'];

if ($cat > 0)
	$list .= ' FROM CATEGORY ' . strtoupper($cats[$cat]);
	
if ($list == 'APPLICATIONS')
	$list = 'ALL APPLICATIONS';

?>

<div class="navbar">
	<a href="index.php">HOME</a>
	<div>
	<?php
	echo $list;
	?>
	</div>
</div>
<div style="line-height: 90%;padding-left: 100px;position: fixed; color: White; margin-top: -260px;;font-size: 64px;">
CMM2 APP LIBRARY
<span style="line-height: 50%;font-size: 32px;"><br>Food for your Colour Maximite 2</span>
</div>


<div class="main">

<?php
    
//get data from database
if ($cat > 0 )
	$sql= "SELECT * FROM apps WHERE category=" . $cat . " ORDER BY " . $order;
else
	$sql= "SELECT * FROM apps ORDER BY " . $order;
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result) {
  while ($row = mysql_fetch_assoc($result))
  {
		echo '
			<div class="flex-row">
					<img style="max-width: 200px;" src="data:image/jpg;charset=utf8;base64,
					';
					echo base64_encode($row['screen']); 
					echo '
					">
				</a>
				<div style="flex-grow: 3">
					<span><b>
						'; echo '<a href="' . $row['link'] .'" style="color:cyan;text-decoration: none;" target="_blank" title="Visit page with code">';
						echo $row['title'] . ' v' . $row['version'] . '</a>';
						if ($row['author'] != 1)
						{
							$sql1= "SELECT * FROM authors WHERE id=" . $row['author'];
							$result1 = mysql_query($sql1) or die('Query failed: ' . mysql_error());
							if ($result1)
								if ($row1 = mysql_fetch_assoc($result1))
									if ($row1['contact'] != '')
										echo '</b> by <b><a href="' . $row1['contact'] . '" style="color:cyan;text-decoration: none;" target="_blank" title="Visit author">' . $row1['author'] . '</a>';
									else
										echo '</b> by <b>' . $row1['author'];
						}
						echo ' </b>(last update ' . date("d-m-Y H:i:s",strtotime($row['changed'])) . ')';
						echo '
					<br></span>
					<span style="font-style: italic;">
						';
						echo $row['subtitle'];
						echo '
					<br><br></span>
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

<!DOCTYPE html>
<html>
<head>
</head>
<body>

<?php
require_once 'db.php';
$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
   or die('Could not connect: ' . mysql_error());
mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);

$sql= "SELECT * FROM apps WHERE enabled=0";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result)
  while ($row = mysql_fetch_assoc($result))
  {
  	echo $row['id'] . ',' . $row['title'] . ',' . $row['version'] . ',' . $row['subtitle'] . ',' . $row['description'];
  	echo ',' . $row['changed'] . ',' . $row['scr_path'] . ',' . $row['author'] . ',' . $row['link'] . ',' . $row['category'] . '<br><br>';
	}
?>

</body>
</html>

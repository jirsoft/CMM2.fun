<!DOCTYPE html>
<!JirSoft 2021, v0.10>
<html>
<head<
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-W51W8H18JG"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-W51W8H18JG');
</script>
</head>

<body>
<?php
	$id = $_GET["id"];
	//echo $id . '<br>';
	require_once 'db.php';
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
		 or die('Could not connect: ' . mysql_error());
	mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);
  
	$sql = 'UPDATE apps SET rating=rating+1 WHERE id=' . $id;
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	
	echo "<script>window.location = 'listApps.php'</script>";
?>
</body>
</html>

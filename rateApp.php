<!DOCTYPE html>
<!JirSoft 2021, v0.11>
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
	$ip = $_SERVER['REMOTE_ADDR'];
	$id = $_GET["id"];
	$url = $_GET["url"];
	$url = 'https://cmm2.fun' . substr($url, 1);
	if (substr($url, -1) == "'")
		$url = substr($url, 0, -1);
	require_once 'db.php';
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
		 or die('Could not connect: ' . mysql_error());
	mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);
  
	$sql = 'UPDATE apps SET rating=rating+1 WHERE id=' . $id;
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
	{
		require_once 'insertEvent.php';
		insertEvent('R+', $id, $ip);
	}
	echo "<script>window.location = '" . $url . "'</script>";
	//echo $url;
?>
</body>
</html>

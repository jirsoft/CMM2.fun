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
	$ok = false;
	$ip = $_SERVER['REMOTE_ADDR'];
	$id = $_GET["id"];
	$url = $_GET["url"];
	$url = 'https://cmm2.fun' . substr($url, 1);
	//$url = 'http://10.0.13.20' . substr($url, 1);
	if (substr($url, -1) == "'")
		$url = substr($url, 0, -1);
	require_once 'db.php';
	
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
		 or die('Could not connect: ' . mysql_error());
	mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);
  
  $sql= 'SELECT changed,dest FROM events WHERE src=' . $id . ' AND event="R+" ORDER BY id DESC LIMIT 1';
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
	{
		if ($row = mysql_fetch_assoc($result))
  	{
 			$now = date('Y-m-d H-i-s');
			$arnow = date_parse($now);
			$arlast = date_parse($row['changed']);

			//echo $url . ', ' . $ip . '<br>';			
			//echo $row['dest'] . ', ' . $ip . '<br>';
			//echo $row['changed'] . ', ' . $now . '<br>';
  		if ($row['dest']!=$ip)
  			$ok = true;
  		else
  		{
				if ($arnow['day']!=$arlast['day'])
					$ok = true;
				else
					echo '<br>You have already voted today!!!<br>';
  		}
  		
			if ($row['changed']==$now)
			{
				$ok = false;
				echo '<br>You have voted just now!!!<br>';
			}
  	}
	}
	else
		$ok = true;
		
		
	if ($ok)
	{
		$sql = 'UPDATE apps SET rating=rating+1 WHERE id=' . $id;
		$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
		if ($result)
		{
			require_once 'insertEvent.php';
			insertEvent('R+', $id, $ip);
		}
		echo "<script>window.location = '" . $url . "'</script>";
	}
		
	//echo $url;
?>
</body>
</html>

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
	require_once 'db.php';
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
		 or die('Could not connect: ' . mysql_error());
	mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);
	$rows = -1;
	$sql= 'SELECT COUNT(*) AS rows FROM shadow';
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
		if ($row = mysql_fetch_assoc($result))
			$rows = $row['rows'];
	if ($rows < 20)
	{
		$title = substr($_POST["title"], 0, 200);
		$title = htmlspecialchars($title, ENT_QUOTES);
		$subtitle = substr($_POST["subtitle"], 0, 200);
		$subtitle = htmlspecialchars($subtitle, ENT_QUOTES);
		$description = substr($_POST["description"], 0, 2000);
		$description = htmlspecialchars($description, ENT_QUOTES);
	
		if ($title != '')
		{
			{	
				$sql = 'INSERT INTO shadow (action,title,subtitle,description,category,author) ';
				$sql .= 'VALUES("N","' . $title . '","' . $subtitle . '","' . $description . '","0",2)';
				$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
				if ($result)
				{
					echo '<br>NEW RECORD added into DB and is waiting for approval as record #' . ($rows + 1) . ':<br>';
					echo '<b>' . $title . ' ' . $version . '</b><br>';
					echo '<b>Subtitle: </b>' . $subtitle . '<br><br>';
					echo '<b>Description: </b>' . $description . '<br>';					
					// send email
					$msg = "NEW IDEA added (" . $title . ") into shadow DB. Please approve or deny it\r\n";
					$msg = wordwrap($msg, 70);
					$mailto = "jirsoft@cmm2.fun";
					mail($mailto, "NEW IDEA added (" . $title . ") into shadow DB", $msg);
					echo "Mail was sent to " . $mailto . "<br>";
				}
			}
		}
	}
	else
		echo $rows . ' records are already waiting for approval. If you think it\'s mistake, contact JirSoft...<br>';
?>
<script>
	setTimeout(function(){
		window.location.href = '/';
	}, 15000);
</script>
</body>
</html>		
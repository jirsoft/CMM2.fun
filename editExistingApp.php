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
	if(isset($_GET['id']))
	{
		$id = intval($_GET['id']);
		$version = substr($_POST["version"], 0, 200);
		$version = htmlspecialchars($version, ENT_QUOTES);
		$subtitle = substr($_POST["subtitle"], 0, 200);
		$subtitle = htmlspecialchars($subtitle, ENT_QUOTES);
		$title = substr($_POST["title"], 0, 200);
		$title = htmlspecialchars($title, ENT_QUOTES);
		$author = substr($_POST["author"], 0, 200);
		$author = htmlspecialchars($author, ENT_QUOTES);
		$description = substr($_POST["description"], 0, 2000);
		$description = htmlspecialchars($description, ENT_QUOTES);
		$description = str_replace("\r\n", "\n", $description);
		$description = str_replace("\n\r", "\n", $description);
		$description = str_replace("\r", "\n", $description);
		$description = str_replace("\n", "<br>", $description);
		$description = str_replace("[B]", "[b]", $description);
		$description = str_replace("[U]", "[u]", $description);
		$description = str_replace("[I]", "[i]", $description);
		$description = str_replace("[O]", "[o]", $description);
		$description = str_replace("[/B]", "[/b]", $description);
		$description = str_replace("[/U]", "[/u]", $description);
		$description = str_replace("[/I]", "[/i]", $description);
		$link = substr(addslashes($_POST["link"]), 0, 200);
		
				
		$sql = "INSERT INTO shadow (id,action,subtitle,version,description,link) ";
		$sql .= "VALUES (" . $id . ",'U','" . $subtitle . "','" . $version . "','" . $description . "','" . $link . "') ";
		$sql .= "ON DUPLICATE KEY UPDATE subtitle='" . $subtitle . "',version='" . $version . "',description='" . $description . "',link='" . $link . "'";
		echo '<br>' . $sql . '<br>';
		$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
		echo '<br>RECORD updated in DB and is waiting for approval as record #' . $id . '<br>';

		// send email
		$msg = $author . " UPDATED record (" . $title . " " . $version . ") in shadow DB. Please approve or deny it\r\n";
		$msg = wordwrap($msg, 70);
		$mailto = "jirsoft@cmm2.fun";
		mail($mailto, $author . " UPDATED record (" . $title . " " . $version . ") in shadow DB", $msg);
		echo "Mail was sent to " . $mailto . "<br>";
	}
?>
<script>
	setTimeout(function(){
		window.location.href = '/';
	}, 15000);
</script>
</body>
</html>		
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
	$category = '';	
	foreach ($_POST as $key => $value)
	{
		//echo $key . '=' . $value . '<br>';
		if (substr($key, 0, 8) == 'category')
			$category .= $value . ',';
	}

	if ($rows < 20)
	{
		$title = substr(addslashes($_POST["title"]), 0, 200);
		$subtitle = substr(addslashes($_POST["subtitle"]), 0, 200);
		$version = substr(addslashes($_POST["version"]), 0, 200);
		$author = $_POST["author"];
		$new_author = substr(addslashes($_POST["new_author"]), 0, 200);
		$contact = substr(addslashes($_POST["contact"]), 0, 200);
		$description = substr(addslashes($_POST["description"]), 0, 2000);
		$link = substr(addslashes($_POST["link"]), 0, 200);
		if (substr($category, -1) == ',')
			$category = substr($category, 0, strlen($category) - 1);
		if ($category == '')
			$category = '1';
		$name = '';
	
		if ($title != '')
		{
			if ($author != 1)
			{
				$sql= 'SELECT * FROM authors WHERE id=' . $author;
				$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
				if ($result)
					if ($row = mysql_fetch_assoc($result))
					{
						$new_author = addslashes($row['author']);
						$contact = addslashes($row['contact']);
					} 
			}
			if ($new_author == '')
				echo 'New author have to have name!';			
			else
			{	
				if ($_FILES['screen']['tmp_name'] != '')
				{
					if (getimagesize($_FILES['screen']['tmp_name']) == false)
						echo "<br>Screenshot needs to be an IMAGE!";
					else 
					{
						//declare variables
						$image = $_FILES['screen']['tmp_name'];
						$name = basename($_FILES['screen']['name']);
						$image = base64_encode(file_get_contents(addslashes($image)));
						$target_dir = "new_screens/";
						//date("YmdHis")
						$ext = '.' . end(explode('.', $name));
						$name = basename($name, $ext);
						$name =  $name . '_' . date("YmdHis") . $ext;
						$target_file = $target_dir . $name;
						$uploadOk = 1;
						$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
						// Check if image file is a actual image or fake image
						if(isset($_POST["submit"]))
						{
							$check = getimagesize($image);
							if($check != false)
								$uploadOk = 1;
							else
							{
								echo "Screenshot is not an image.<br>";
								$uploadOk = 0;
							}
						}
						// Check file size
						if ($_FILES["screen"]["size"] > 524288)
						{
							echo "Sorry, your screenshot is too large (max 500kB)<br>";
							$uploadOk = 0;
						}
						// Allow certain file formats
						if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
						&& $imageFileType != "gif" )
						{
							echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed as screenhot<br>";
							$uploadOk = 0;
						}
						// Check if $uploadOk is set to 0 by an error
						if ($uploadOk != 0)
						{
							if (move_uploaded_file($_FILES["screen"]["tmp_name"], $target_file)) 
							{
								echo "The sceenshot ". htmlspecialchars( basename($name)). " has been uploaded<br>";
							}
						}
					}
				}				

				if ($uploadOk == 0)
					$name = '';
				$sql = 'INSERT INTO  shadow (title,version,author,new_author,contact,scr_path,subtitle,description,link,category) ';
				$sql .= 'VALUES("' . $title . '","' . $version . '",' . $author . ',"' . $new_author . '","' . $contact . '","' . $name .'","' . $subtitle . '","' . $description . '","' . $link . '","' . $category . '")';
				//echo '<hr>' . $sql;
				$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
				if ($result)
				{
					echo '<br>NEW RECORD added into DB and is waiting for approval as record #' . ($rows + 1) . ':<br>';
					echo '<b>' . $title . ' ' . $version . '</b><br>';
					echo '<b>Subtitle: </b>' . $subtitle . '<br><br>';
					echo '<b>Description: </b>' . $description . '<br>';
					echo '<b>Link: </b>' . $link . '<br><br>';
					echo '<b>Category: </b>' . $category . '<br><br>';
					if ($name != '' && $uploadOk)
						echo '<b>Screenshot: </b>' . $name . '<br>';
					echo '<b>Author: </b>' . $author . ' (' . $new_author . ',' . $contact . ')<br>';
					
					// send email
					$msg = "Somebody added new record into shadow DB. Please approve or deny it\r\n";
					$msg = wordwrap($msg, 70);
					$mailto = "jirsoft@cmm2.fun";
					mail($mailto, "Somebody added new record into shadow DB. Please approve or deny it",$msg);
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
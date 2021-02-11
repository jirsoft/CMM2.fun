<html>
<head>
<title>CMM2.fun ADD APP</title>
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

	$authors = array();
	$contacts = array();
	$sql= 'SELECT * FROM authors ORDER BY author ASC';
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
	{
		while ($row = mysql_fetch_assoc($result))
		{
			$authors[$row['id']] = $row['author'];
			$contacts[$row['id']] = $row['contact'];
			//echo $authors[$row['id']] . ':' . $contacts[$row['id']] . '<br>';
		}
	}
	$authors['1'] = 'NEW AUTHOR';
	$contacts['1'] = '???';
?>

<form action="insertNewApp.php" method="post" enctype="multipart/form-data">
Title      : <input type="text" name="title"><br>
Version    : <input type="text" name="version"><br>
Subtitle   : <input type="text" name="subtitle"><br>
Description: <textarea name="description" rows="12" cols="80"></textarea><br>
Screenshot : <input type="file" name="screen"><br>

Download at: <input type="text" name="link"><br>

<label for="category">Category:</label>
<select id="category" name="category">
  <option value="1">GENERAL</option>
  <option value="2">DEMO</option>
  <option value="3">GAME</option>
  <option value="4">MUSIC</option>
  <option value="5">TOOL</option>
  <option value="6">GRAPHIC</option>
  <option value="7">SCIENCE</option>
  <option value="8">SCHOOL</option>
  <option value="9">COMM</option>
  <option value="10">BUSINESS</option>
  <option value="11">ELECTRO</option>
</select>
<hr>
<label for="author">Author:</label>
<select id="author" name="author">
<?php
	for ($i = 1; $i <= count($authors); $i++)
		echo '<option value="' . $i . '">' . $authors[$i] . '</option>';			
	echo '</select><br>';
	echo 'Name   : <input type="text" name="new_author"> (if NEW AUTHOR selected)<br>';
	echo 'Contact: <input type="text" name="contact"> (if NEW AUTHOR selected)<br>';
?>
<hr>
<input type="submit" value="Upload">
</form>

</body>
</html>
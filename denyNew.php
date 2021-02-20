<!DOCTYPE html>
<html>
<head>
</head>
<body>

<?php
require_once 'db.php';
if(isset($_GET['id']))
	$id = $_GET['id'];

if ($id != '')
{
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASS)
		 or die('Could not connect: ' . mysql_error());
	mysql_select_db(DB_NAME) or die('Could not select database ' . DB_NAME);

	$sql= "SELECT * FROM shadow WHERE id=" . $id;
	$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
	if ($result)
	{
		if ($row = mysql_fetch_assoc($result))
		{
			$file = $row['scr_path'];
			if ($file != '')
			{
				echo '<br>Delete "new_screens/' . $file . '"';
				unlink('new_screens/' . $file);
			}
			$sql = 'DELETE FROM shadow WHERE id=' . $id;
			echo '<hr>' . $sql . '<br>';
			$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
			if ($result1)
				echo '<br>App deleted from shadow';
		}
		else
			echo 'Record id=' . $id . ' not found!';
	}
}
?>
<script>
	setTimeout(function(){
		window.location.href = 'listNew.php';
	}, 3000);
</script>
</body>
</html>

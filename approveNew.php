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
			if ($row['author'] == 1)
			{
				$author = -1;
				//new autthor
				$sql = 'SELECT * FROM authors WHERE author="' . $row['new_author'] . '"';
				echo '<hr>' . $sql . '<br>';
				$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
				if ($result1)
					if ($row1 = mysql_fetch_assoc($result1))
						$author = $row1['id'];
						
				if ($author < 0)
				{
					$sql = 'SELECT COUNT(*) AS lastId FROM authors';
					//echo '<hr>' . $sql . '<br>';
					$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
					if ($result1)
						if ($row1 = mysql_fetch_assoc($result1))
							$author = $row1['lastId'] + 1;
							
					$sql = 'INSERT INTO  authors (id, author, contact) VALUES (' . $author . ',"' . $row['new_author'] . '","' . $row['contact'] . '")';
					echo '<hr>' . $sql . '<br>';
					$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
					if ($result1)
					{
						$author = mysql_insert_id();
						echo '<br>Added new author (' . $author . '):' . $row['new_author'] . ', ' . $row['contact'];
					}
				}
			}
			else
				$author = $row['author'];
			
			$sql = 'SELECT COUNT(*) AS lastId FROM apps';
			$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
			$new_id = '';
			if ($result1)
				if ($row1 = mysql_fetch_assoc($result1))
					$new_id = $row1['lastId'] + 1;
					
			$sql = 'INSERT INTO apps (id,title,version,author,scr_path,subtitle,description,link,category) VALUES (' . $new_id . ',';
			$sql .= '"' . $row['title'] . '","' . $row['version'] . '",' . $author . ',"' . $row['scr_path'] . '","' . $row['subtitle'] . '",';
			$sql .= '"' . $row['description'] . '","' . $row['link'] . '","' . $row['category'] . '")';
			echo '<hr>' . $sql . '<br>';
			$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
			if ($result1)
			{
				if ($row['scr_path'] != '')
				{
					echo '<br>Move "new_screens/' . $row['scr_path'], '" to "screens/' . $row['scr_path'] . '"';
					rename('new_screens/' . $row['scr_path'], 'screens/' . $row['scr_path']);
				}
				echo '<br>App copied from shadow to apps';
				$sql = 'DELETE FROM shadow WHERE id=' . $id;
				echo '<hr>' . $sql . '<br>';
				$result1 = mysql_query($sql) or die('Query failed: ' . mysql_error());
				if ($result1)
					echo '<br>App deleted from shadow';
			}			
		}
		else
			echo 'Record id=' . $id . ' not found!';
	}
}
?>
<script>
	setTimeout(function(){
		window.location.href = 'listNew.php';
	}, 5000);
</script>
</body>
</html>

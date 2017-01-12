<?php
$conn = mysql_connect("localhost", "restapi", "restapi123");
if (!$conn) {
	$json = array("Error 500" => 'Could not connect: ' . mysql_error());
}
mysql_select_db('restdb', $conn);
?>
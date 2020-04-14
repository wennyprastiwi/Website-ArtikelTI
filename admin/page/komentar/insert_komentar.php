<?php
include ("koneksi.php");

$sql = "INSERT INTO komentar VALUES(
	'',
	'" . addslashes($_POST[name]) . "',
	'" . addslashes($_POST[email]) ."',
	'" . addslashes($_POST[comment]) ."'
	)";	
$result = $koneksi->query($sql);

header("location:../index.php");

?>
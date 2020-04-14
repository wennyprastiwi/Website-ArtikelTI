<?php
defined('INDEX') OR exit('akses ditolak');

include ("koneksi.php");

$kat            = $_POST[kategori];
$nama           = $_POST['keterangan'];

$sql = "INSERT INTO kategori VALUES(
	'',
	'$_POST[kategori]',
	'$_POST[keterangan]')";
$result = $koneksi->query($sql);

header("location:index.php?page=data-kategori");
?>
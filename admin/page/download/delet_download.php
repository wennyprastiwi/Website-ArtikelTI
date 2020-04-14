<?php
include("koneksi.php");

$id = !empty($_GET['id']) ? $_GET['id'] : null;

$sql_select	= "select nama_file from download where id='$id'";
$data		= $koneksi->query($sql_select)->fetch_array();
$folder		= 'download';
unlink($folder . '/' . $data['nama_file']);

$sql_delete = "delete from download where id='$id' ";

$result = $koneksi->query($sql_delete);
header("location:index.php?page=data-download")
?>
<?php
defined('INDEX') OR exit('akses ditolak');
include("koneksi.php");

$id = !empty($_GET['id']) ? $_GET['id'] : null;

$sql_delete = "delete from kategori where id='$id' ";

$result = $koneksi->query($sql_delete);
header("location:index.php?page=data-kategori")
?>
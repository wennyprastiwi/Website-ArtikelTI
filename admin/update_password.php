<?php
session_start();
include("koneksi.php");

$username			=$_SESSION['web-b']['username'];
$password_lama		=md5($_POST['password_lama']);
$password_baru		=$_POST['password_baru'];
$ulangi_password	=$_POST['ulangi_password'];
$sql_user = "select * from `user` where username = '$username' and password = '$password_lama'";

$result				=$koneksi->query($sql_user);

if ($result->num_rows < 1) {
	$_SESSION['error'] = "Password Lama Salah!";
	header("location:index.php?page=ganti-password");
	exit();
}

if (strlen($password_baru) < 6) {
	$_SESSION['error'] = "Password Baru Minimal 6 Karakter";
	header("location:index.php?page=ganti-password");
	exit();
}

if ($password_baru != $ulangi_password) {
	$_SESSION['error'] = "Password Baru Tidak Sama";
	header("location:index.php?page=ganti-password");
	exit();
}

$sql_update = "update `user` set password='".md5($password_baru)."' where username='$username'";
$result = $koneksi->query($sql_update);
header("location:index.php?page=ganti-password&status=sukses");
?>
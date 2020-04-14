<?php
defined('INDEX') OR exit('akses ditolak');

include("koneksi.php");

?>

<div class="panel panel-danger">
	<div class="panel-heading">Tambah File</div>
	<div class="panel-body">
		<form action="action.php?page=insert-download" method="post" class="form-horizontal"
				enctype="multipart/form-data">
			<div class="form-group">
				<label class="col-md-1 control-label">Judul
				</label>
				<div class="col-md-11">
					<input type="text" name="judul" id="judul" class="form-control">
				</div>
			</div>
			<div class="form-group">
			<label class="col-md-1 control-label">File</label>
				<div class="col-sm-10">
            <label class="file-upload btn btn-danger">
			<span class="file-upload-text"></span><input type="file"
			name="file" id="file">
            </label>
        </div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-1 col-md-3">
					<input type="submit" name="submit" class="btn btn-success" value="Kirim">
				</div>
			</div>

		</form>
	</div>
</div>
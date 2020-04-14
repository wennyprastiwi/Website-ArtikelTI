<?php
defined('INDEX') OR exit('akses ditolak');
?>

<div class="panel panel-primary">
	<div class="panel-heading">Tambah Kategori</div>
	<div class="panel-body">
		<form action="action.php?page=insert-kategori" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-md-1 control-label">Kategori
				</label>
				<div class="col-md-11">
					<input type="text" name="kategori" id="kategori" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-1 control-label">Keterangan
				</label>
				<div class="col-md-11">
					<textarea name="keterangan" id="keterangan" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class-"col-md-offset-1 col-md-3">
					<input type="submit" name="submit" class="btn btn-primary" value="Kirim">
				</div>
			</div>

		</form>
	</div>
</div>
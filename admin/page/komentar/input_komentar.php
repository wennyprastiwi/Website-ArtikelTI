
<div class="panel panel-danger">
	<div class="panel-heading">Komentar</div>
	<div class="panel-body">
		<form action="action.php?page=insert-komentar" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-md-1 control-label">Nama Lengkap
				</label>
				<div class="col-md-11">
					<input type="text" name="name" id="name" class="form-control" placeholder="Masukan Nama Anda">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-1 control-label">Alamat Email
				</label>
				<div class="col-md-11">
					<input type="text" name="email" id="email" class="form-control" placeholder="Masukan Alamat Email Anda">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-1 control-label">Komentar
				</label>
				<div class="col-md-11">
					<textarea name="comment" id="comment" class="form-control"></textarea>
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
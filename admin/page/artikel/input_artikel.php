<?php
defined('INDEX') OR exit('akses ditolak');

include("koneksi.php");

?>

<div class="panel panel-danger">
	<div class="panel-heading">Tambah Artikel</div>
	<div class="panel-body">
		<form action="action.php?page=insert-artikel" method="post" class="form-horizontal"
				enctype="multipart/form-data">
			<div class="form-group">
				<label class="col-md-1 control-label">Judul
				</label>
				<div class="col-md-11">
					<input type="text" name="judul" id="judul" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-1 control-label">Kategori
				</label>
				<div class="col-md-11">
					<select name="kategori" id="kategori" class="form-control">
						<option value="">-Pilih Kategori-
						</option>
						<?php
						$list_kategori = $koneksi->query("SELECT * FROM kategori ORDER BY kategori ASC");
						
						while ($kategori = $list_kategori->fetch_array()){
							
						if ($kategori['kategori'] == $data['kategori']){
							echo '<option selected="selected" value="' .$kategori['kategori']. '">' . $kategori['kategori'] . '</option>';
						}else{
							echo '<option value="' .$kategori['kategori']. '">' . $kategori['kategori'] . '</option>';
						}
						}
						?>
					</select>
				</div>
			</div>
			<div class="form-group">
			<label class="col-md-1 control-label">Foto</label>
				<div class="col-sm-10">
            <label class="file-upload btn btn-danger">
			<span class="file-upload-text"></span><input type="file"
			name="foto" id="foto" accept="image/*">
            </label>
        </div>
			</div>
			<div class="form-group">
				<label class="col-md-1 control-label">Konten
				</label>
				<div class="col-md-11">
					<textarea name="konten" id="konten" class="form-control"></textarea>
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
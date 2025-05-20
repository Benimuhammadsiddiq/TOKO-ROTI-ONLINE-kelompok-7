<?php 
include 'header.php';
$kd = mysqli_real_escape_string($conn,$_GET['kode_cs']);
$cs = mysqli_query($conn, "SELECT * FROM customer WHERE kode_customer = '$kd'");
$rows = mysqli_fetch_assoc($cs);
?>

<div class="container" style="padding-bottom: 200px">
	<h2 class="mb-4" style="border-bottom: 4px solid rgb(255, 94, 0);"><b>Checkout</b></h2>

	<div class="row">
		<div class="col-12 col-md-6">
			<h4>Daftar Pesanan</h4>
			<div class="table-responsive">
				<table class="table table-striped">
					<tr>
						<th>No</th>
						<th>Nama</th>
						<th>Harga</th>
						<th>Qty</th>
						<th>Sub Total</th>
					</tr>
					<?php 
					$result = mysqli_query($conn, "SELECT * FROM keranjang WHERE kode_customer = '$kd'");
					$no = 1;
					$hasil = 0;
					while($row = mysqli_fetch_assoc($result)){
					?>
					<tr>
						<td><?= $no; ?></td>
						<td><?= $row['nama_produk']; ?></td>
						<td>Rp.<?= number_format($row['harga']); ?></td>
						<td><?= $row['qty']; ?></td>
						<td>Rp.<?= number_format($row['harga'] * $row['qty']);  ?></td>
					</tr>
					<?php 
						$total = $row['harga'] * $row['qty'];
						$hasil += $total;
						$no++;
					}
					?>
					<tr>
						<td colspan="5" class="text-end fw-bold">Grand Total = Rp.<?= number_format($hasil); ?></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<div class="row mb-3">
        <div class="col-md-6">
            <div class="alert alert-success mb-2 p-2">
                <h5 class="mb-0">Pastikan Pesanan Anda Sudah Benar</h5>
            </div>
            <div class="alert alert-warning p-2">
                <h5 class="mb-0">Isi Form di bawah ini</h5>
            </div>
        </div>
    </div>

	<form action="proses/order.php" method="POST">
		<input type="hidden" name="kode_cs" value="<?= $kd; ?>">

		<div class="mb-3">
			<label for="nama">Nama</label>
			<input type="text" class="form-control" id="nama" placeholder="Nama" name="nama" value="<?= isset($rows['nama']) ? $rows['nama'] : ''; ?>">
		</div>

		<div class="row">
			<div class="col-12 col-md-6 mb-3">
				<label for="provinsi">Provinsi</label>
				<input type="text" class="form-control" id="provinsi" placeholder="Provinsi" name="prov">
			</div>
			<div class="col-12 col-md-6 mb-3">
				<label for="kota">Kota</label>
				<input type="text" class="form-control" id="kota" placeholder="Kota" name="kota">
			</div>
		</div>

		<div class="row">
			<div class="col-12 col-md-6 mb-3">
				<label for="alamat">Alamat</label>
				<input type="text" class="form-control" id="alamat" placeholder="Alamat" name="almt">
			</div>
			<div class="col-12 col-md-6 mb-3">
				<label for="kopos">Kode Pos</label>
				<input type="text" class="form-control" id="kopos" placeholder="Kode Pos" name="kopos">
			</div>
		</div>

		<button type="submit" class="btn btn-success mb-3"><i class="glyphicon glyphicon-shopping-cart"></i> Order Sekarang</button>
		<a href="keranjang.php" class="btn btn-danger mb-3">Cancel</a>
	</form>
</div>

<?php include 'footer.php'; ?>

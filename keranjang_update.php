<?php
include 'koneksi/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $qty = $_POST['qty'];
    $qty = max(1, intval($qty)); // minimal qty = 1

    // Update database untuk qty yang baru
    $update = mysqli_query($conn, "UPDATE keranjang SET qty = '$qty' WHERE id_keranjang = '$id'");
    
    // Jika update berhasil, bisa lanjutkan tanpa perlu kirim respons
    if (!$update) {
        echo "Error: " . mysqli_error($conn);
    }
}
?>
<?php
$isNota = ($_SERVER['REQUEST_METHOD'] == 'POST');
if ($isNota) {
    $nomor_transaksi = "INV" . date("YmdHis");
    $waktu = date("d-m-Y H:i:s");
    $nama_pelanggan = $_POST['nama_pelanggan'];
    $alamat_pengiriman = $_POST['alamat_pengiriman'];
    $metode_pembayaran = $_POST['metode_pembayaran'];
    $detail_pembayaran = $_POST['detail_pembayaran'] ?? '';
    
    // Generate random barcode number
    $barcode_number = rand(100000000000, 999999999999);
    
    // Generate barcode image URL using a barcode generator API
    $barcode_url = "https://barcode.tec-it.com/barcode.ashx?data=" . $barcode_number . "&code=Code128&dpi=96&dataseparator=";
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title><?= $isNota ? "Struk Pembelian" : "Form Pemesanan" ?></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            color: #000;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
        }
        .container {
            width: 350px;
            background: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        .header {
            text-align: center;
            margin-bottom: 15px;
        }
        .logo {
            font-weight: bold;
            font-size: 22px;
            margin-bottom: 5px;
            color: #333;
        }
        .alamat {
            font-size: 14px;
            color: #555;
            margin-bottom: 15px;
            line-height: 1.4;
        }
        .divider {
            border-top: 2px dashed #000;
            margin: 15px 0;
        }
        .info-table {
            width: 100%;
            font-size: 16px;
            margin-bottom: 20px;
            border-collapse: collapse;
        }
        .info-table td {
            padding: 8px 0;
            vertical-align: top;
        }
        .info-table td:first-child {
            width: 40%;
            font-weight: bold;
            text-align: left;
        }
        .info-table td:last-child {
            text-align: left;
        }
        .footer {
            font-size: 14px;
            color: #555;
            line-height: 1.5;
            margin-top: 20px;
        }
        .btn-group {
            margin-top: 25px;
            display: flex;
            justify-content: center;
            gap: 15px;
        }
        .btn {
            background: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #45a049;
        }
        .btn-print {
            background: #2196F3;
        }
        .btn-print:hover {
            background: #0b7dda;
        }
        form {
            text-align: left;
        }
        input, textarea, select {
            width: 100%;
            margin: 8px 0 20px;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button[type="submit"] {
            background: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background 0.3s;
        }
        button[type="submit"]:hover {
            background: #45a049;
        }
        label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        .barcode {
            margin: 15px 0;
            padding: 10px;
            background: white;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .barcode img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        .barcode-number {
            font-family: monospace;
            font-size: 18px;
            letter-spacing: 3px;
            margin: 10px 0;
            text-align: center;
        }
        .bank-details {
            margin-top: 10px;
            padding: 10px;
            background: #f9f9f9;
            border-radius: 5px;
            text-align: left;
            font-size: 14px;
        }
        #detailPembayaranContainer {
            display: none;
            margin-top: 10px;
        }
        .no-print {
            display: block;
        }
        
        /* Print-specific styles */
        @media print {
            body {
                background: none;
                padding: 0;
                margin: 0;
                font-size: 18px;
            }
            .container {
                box-shadow: none;
                width: 100%;
                max-width: 400px;
                padding: 20px;
                margin: 0 auto;
                border: none;
            }
            .btn-group {
                display: none;
            }
            .logo {
                font-size: 24px;
            }
            .alamat {
                font-size: 16px;
            }
            .info-table {
                font-size: 18px;
            }
            .info-table td {
                padding: 10px 0;
            }
            .footer {
                font-size: 16px;
            }
            .divider {
                border-top-width: 2px;
                margin: 20px 0;
            }
            .barcode {
                border: 1px solid #000;
                page-break-inside: avoid;
            }
            .barcode img {
                max-width: 80%;
            }
            .no-print {
                display: none;
            }
            .print-only {
                display: block !important;
            }
        }
        .print-only {
            display: none;
        }
    </style>
</head>
<body>

<div class="container">
<?php if (!$isNota): ?>
    <h2 style="text-align: center; margin-bottom: 25px; font-size: 24px;">Form Pemesanan</h2>
    <form method="post">
        <label for="nama_pelanggan">Nama Pelanggan:</label>
        <input type="text" name="nama_pelanggan" placeholder="Nama Pelanggan" required>
        
        <label for="alamat_pengiriman">Alamat Pengiriman:</label>
        <textarea name="alamat_pengiriman" placeholder="Alamat Pengiriman" rows="4" required></textarea>
        
        <label for="metode_pembayaran">Metode Pembayaran:</label>
        <select name="metode_pembayaran" id="metodePembayaran" required onchange="showPaymentDetails()">
            <option value="">Pilih Pembayaran</option>
            <option value="Transfer Bank - BCA">Transfer Bank - BCA</option>
            <option value="Transfer Bank - BRI">Transfer Bank - BRI</option>
            <option value="Transfer Bank - BNI">Transfer Bank - BNI</option>
            <option value="QRIS">QRIS</option>
            <option value="E-Wallet - Dana">E-Wallet - Dana</option>
            <option value="E-Wallet - OVO">E-Wallet - OVO</option>
            <option value="E-Wallet - Gopay">E-Wallet - Gopay</option>
            <option value="COD">COD (Bayar di Tempat)</option>
        </select>
        
        <div id="detailPembayaranContainer">
            <label for="detail_pembayaran">Detail Pembayaran:</label>
            <select name="detail_pembayaran" id="detailPembayaran">
                <!-- Options will be populated by JavaScript -->
            </select>
        </div>
        
        <button type="submit">Proses Pesanan</button>
    </form>
    
    <script>
        function showPaymentDetails() {
            const metodePembayaran = document.getElementById('metodePembayaran').value;
            const container = document.getElementById('detailPembayaranContainer');
            const detailSelect = document.getElementById('detailPembayaran');
            
            // Clear previous options
            detailSelect.innerHTML = '';
            
            if (metodePembayaran.includes('Transfer Bank')) {
                container.style.display = 'block';
                
                // Add bank account options
                if (metodePembayaran.includes('BCA')) {
                    addOption(detailSelect, 'BCA - 1234567890 (UNESA CAKE BAKERY)', 'BCA - 1234567890 (UNESA CAKE BAKERY)');
                    addOption(detailSelect, 'BCA - 0987654321 (UNESA CAKE BAKERY)', 'BCA - 0987654321 (UNESA CAKE BAKERY)');
                } else if (metodePembayaran.includes('BRI')) {
                    addOption(detailSelect, 'BRI - 1122334455 (UNESA CAKE BAKERY)', 'BRI - 1122334455 (UNESA CAKE BAKERY)');
                    addOption(detailSelect, 'BRI - 5566778899 (UNESA CAKE BAKERY)', 'BRI - 5566778899 (UNESA CAKE BAKERY)');
                } else if (metodePembayaran.includes('BNI')) {
                    addOption(detailSelect, 'BNI - 3344556677 (UNESA CAKE BAKERY)', 'BNI - 3344556677 (UNESA CAKE BAKERY)');
                    addOption(detailSelect, 'BNI - 7788990011 (UNESA CAKE BAKERY)', 'BNI - 7788990011 (UNESA CAKE BAKERY)');
                }
            } else if (metodePembayaran === 'QRIS') {
                container.style.display = 'block';
                addOption(detailSelect, 'QRIS UNESA CAKE BAKERY', 'QRIS UNESA CAKE BAKERY');
            } else if (metodePembayaran.includes('E-Wallet')) {
                container.style.display = 'block';
                if (metodePembayaran.includes('Dana')) {
                    addOption(detailSelect, 'DANA - 081234567890 (UNESA CAKE)', 'DANA - 081234567890 (UNESA CAKE)');
                } else if (metodePembayaran.includes('OVO')) {
                    addOption(detailSelect, 'OVO - 081234567890 (UNESA CAKE)', 'OVO - 081234567890 (UNESA CAKE)');
                } else if (metodePembayaran.includes('Gopay')) {
                    addOption(detailSelect, 'GOPAY - 081234567890 (UNESA CAKE)', 'GOPAY - 081234567890 (UNESA CAKE)');
                }
            } else {
                container.style.display = 'none';
            }
        }
        
        function addOption(selectElement, text, value) {
            const option = document.createElement('option');
            option.text = text;
            option.value = value;
            selectElement.add(option);
        }
    </script>
<?php else: ?>
    <div class="header">
        <div class="logo">UNESA-CAKE BAKERY</div>
        <div class="alamat">
            Jl. Ketintang, Surabaya<br>
            Telp: +62 858-5509-4087
        </div>
    </div>
    
    <div class="divider"></div>
    
    <table class="info-table">
        <tr><td>No. Transaksi</td><td>: <?= $nomor_transaksi ?></td></tr>
        <tr><td>Tanggal</td><td>: <?= $waktu ?></td></tr>
        <tr><td>Nama</td><td>: <?= $nama_pelanggan ?></td></tr>
        <tr><td>Alamat</td><td>: <?= $alamat_pengiriman ?></td></tr>
        <tr><td>Pembayaran</td><td>: <?= $metode_pembayaran ?></td></tr>
        <?php if ($detail_pembayaran): ?>
        <tr><td>Detail</td><td>: <?= $detail_pembayaran ?></td></tr>
        <?php endif; ?>
    </table>
    
    <?php if (strpos($metode_pembayaran, 'Transfer Bank') !== false || 
              strpos($metode_pembayaran, 'QRIS') !== false || 
              strpos($metode_pembayaran, 'E-Wallet') !== false): ?>
    <div class="divider"></div>
    
    <div class="barcode">
        <h3>Kode Pembayaran</h3>
        <div class="barcode-number"><?= $barcode_number ?></div>
        
        <!-- Barcode image -->
        <img src="<?= $barcode_url ?>" alt="Barcode <?= $barcode_number ?>">
        
        <div class="print-only">
            <p style="text-align: center; font-size: 14px; margin-top: 5px;">
                Scan barcode untuk pembayaran
            </p>
        </div>
        
        <?php if (strpos($metode_pembayaran, 'Transfer Bank') !== false): ?>
        <div class="bank-details">
            <strong>Instruksi Transfer:</strong><br>
            1. Masuk ke aplikasi mobile banking<br>
            2. Pilih transfer ke <?= explode(' - ', $metode_pembayaran)[1] ?><br>
            3. Masukkan nomor rekening <?= explode(' - ', $detail_pembayaran)[1] ?><br>
            4. Masukkan jumlah pembayaran<br>
            5. Masukkan kode pembayaran di atas<br>
            6. Konfirmasi transfer
        </div>
        <?php elseif (strpos($metode_pembayaran, 'QRIS') !== false): ?>
        <div class="bank-details">
            <strong>Instruksi Pembayaran:</strong><br>
            1. Buka aplikasi e-wallet atau mobile banking<br>
            2. Pilih fitur scan QRIS<br>
            3. Arahkan kamera ke QR code berikut<br>
            4. Masukkan jumlah pembayaran<br>
            5. Konfirmasi pembayaran
        </div>
        <?php elseif (strpos($metode_pembayaran, 'E-Wallet') !== false): ?>
        <div class="bank-details">
            <strong>Instruksi Pembayaran:</strong><br>
            1. Buka aplikasi <?= explode(' - ', $metode_pembayaran)[1] ?><br>
            2. Pilih transfer ke nomor <?= explode(' - ', $detail_pembayaran)[1] ?><br>
            3. Masukkan jumlah pembayaran<br>
            4. Masukkan kode pembayaran di atas<br>
            5. Konfirmasi pembayaran
        </div>
        <?php endif; ?>
    </div>
    <?php endif; ?>
    
    <div class="divider"></div>
    
    <div class="footer">
        <strong>Terima kasih telah berbelanja di UNESA-CAKE BAKERY</strong><br>
        Barang yang sudah dibeli tidak dapat dikembalikan<br>
        Simpan struk ini sebagai bukti transaksi
    </div>
    
    <div class="btn-group no-print">
        <a href="index.php" class="btn">Kembali</a>
        <a href="#" onclick="window.print()" class="btn btn-print">Cetak</a>
    </div>
<?php endif; ?>
</div>

</body>
</html>
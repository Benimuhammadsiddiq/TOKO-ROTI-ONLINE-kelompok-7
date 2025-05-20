<?php
// Data koneksi
$servername = "sql307.infinityfree.com"; // MySQL Host Name
$username = "if0_38798937";               // MySQL User Name
$password = "ha1sjkrz";       // Gunakan password vPanel kamu
$dbname = "if0_38798937_dbpw192_18410100054"; // MySQL DB Name

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
} 
// Jika berhasil
// echo "Koneksi berhasil"; // Optional: aktifkan ini untuk cek koneksi
?>

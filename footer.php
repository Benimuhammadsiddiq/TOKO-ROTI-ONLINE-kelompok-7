<footer style="border-top: 4px solid rgb(255, 128, 0); background-color:#f8f9fa; padding-top:20px;">
    <div class="container" style="padding-bottom: 50px;">
        <div class="row">
            <!-- Info Toko -->
            <div class="col-md-4 mb-3">
                <h4 style="color:rgb(0, 0, 0)"><b>UNESA-CAKE BAKERY</b></h4>
                <p>Jl. Ketintang, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur</p>
                <p><i class="glyphicon glyphicon-earphone"></i> +6285855094087</p>
                <p><i class="glyphicon glyphicon-envelope"></i> unesa-cakebakery@gmail.com</p>
            </div>

            <!-- Menu Navigasi -->
            <div class="col-md-4 mb-3">
                <h5><b>Menu</b></h5>
                <ul style="list-style: none; padding: 0;">
                    <li><a href="#" style="color: #000; text-decoration: none;">Produk</a></li>
                    <li><a href="#" style="color: #000; text-decoration: none;">Tentang Kami</a></li>
                    <li><a href="#" style="color: #000; text-decoration: none;">Hubungi Kami</a></li>
                </ul>
            </div>

            <!-- Kosongkan / Sosial Media -->
            <div class="col-md-4 mb-3">
                <h5><b>Ikuti Kami</b></h5>
                <p>
                    <a href="#" style="color: #000;"><i class="glyphicon glyphicon-globe"></i> https://unesa-bakery.42web.io/?i=1</a><br>
                    <a href="#" style="color: #000;"><i class="glyphicon glyphicon-camera"></i> Instagram</a><br>
                </p>
            </div>
        </div>
    </div>

    <div class="copy" style="background-color:rgb(255, 111, 0); padding: 8px; color: #fff; text-align: center;">
        <span>Copyright &copy; Universitas Negeri Surabaya</span>
    </div>
</footer>


         <script>
            document.querySelectorAll('.qty-input').forEach(input => {
                input.addEventListener('input', function() {
                    const harga = parseInt(this.dataset.price);
                    const qty = parseInt(this.value) || 0;
                    const subtotal = harga * qty;
                    const subtotalId = this.dataset.subtotalId;

                    // Update subtotal tampilannya
                    document.getElementById(subtotalId).innerText = 'Rp.' + subtotal.toLocaleString();

                    // Update grand total
                    hitungGrandTotal();

                    // Kirim update qty ke server
                    updateQty(this.dataset.id, qty);
                });
            });

            function hitungGrandTotal() {
                let total = 0;
                document.querySelectorAll('.qty-input').forEach(input => {
                    const harga = parseInt(input.dataset.price);
                    const qty = parseInt(input.value) || 0;
                    total += harga * qty;
                });
                document.getElementById('grand-total').innerText = 'Grand Total = Rp.' + total.toLocaleString();
            }

            function updateQty(id, qty) {
                fetch('keranjang_update.php', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                    body: 'id=' + id + '&qty=' + qty
                });
            }
        </script>

</body>
</html>
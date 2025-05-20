<?php include 'header.php'; ?>

<div class="container" style="padding-bottom: 250px;">
	<h2><b>Login</b></h2>

	<form action="proses/login.php" method="POST">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="username">Username</label>
					<input type="text" class="form-control" id="username" placeholder="Username" name="username" required>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" id="password" placeholder="Password" name="pass" required>
				</div>
			</div>
		</div>

		<button type="submit" class="btn btn-success">Login</button>
		<a href="register.php" class="btn btn-primary">Daftar</a>
	</form>
</div>

<?php include 'footer.php'; ?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Login - Admin</title>
	<link href="<?= base_url('assets/template/dist/') ?>css/styles.css" rel="stylesheet" />
	<script src="<?= base_url('assets/') ?>js/all.min.js" crossorigin="anonymous"></script>
</head>

<body class="bg-dark">

	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Admin Login</h3>
								</div>
								<?php if ($error == True) { ?>
									<div class="alert alert-warning alert-dismissible fade show">
										<strong><?= $isi_pesan ?> </strong>
										<button type="button" class="close" data-dismiss="alert">&times;</button>
									</div>
								<?php } ?>
								<div class="card-body">
									<form method="post" action="<?= base_url('admin/auth/masuk') ?>">
										<div class="form-group">
											<label class="small mb-1" for="inputUsername">Username</label>
											<input class="form-control py-4" id="inputUsername" type="text" placeholder="Enter Username" name="username" required />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Password</label>
											<input class="form-control py-4" id="inputPassword" type="password" placeholder="Enter password" name="password" required />
										</div>
										<div class="form-group d-flex mt-4 mb-0 float-center">
											<button type="submit" class="btn btn-dark btn-block">Login</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<script src="<?= base_url('assets/') ?>js/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="<?= base_url('assets/') ?>js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<?= base_url('assets/template/dist/') ?>js/scripts.js"></script>
</body>

</html>
<?php include('server.php'); ?>

<!DOCTYPE html>
<html>
<head>
	<title>Student signup</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="header">
		<h2>Sign up</h2>
	</div>

	<form method="post" action="signup.php">
		<!-- display validation error here -->
		<?php include('errors.php'); ?>
		<div class="input-group">
			<label>Name</label>
			<input type="text" name="username" value="">
		</div>
		<div class="input-group">
			<label>College Reg. No.</label>
			<input type="text" name="regno" value="">
		</div>
		<div class="input-group">
			<label>Email</label>
			<input type="text" name="email" value="">
		</div>
		<div class="input-group">
			<label>Phone No</label>
			<input type="text" name="phoneno" value="">
		</div>
		<div class="input-group">
			<label>Department</label>
			<input type="text" name="dept" value="">
		</div>
		<div class="input-group">
			<button type="submit" name="signup" class="btn">Sign up</button>
		</div>
	</form>

</body>
</html>
<?php 
	session_start();

	$q_no=1;
	$username = "";
	$email = "";
	$regno = "";
	$dept ="";
	$phoneno=0;
	$errors = array();
	// connect to the db
	$db = mysqli_connect('localhost', 'root', '', 'db_exam');

	// if the signup button is clicked
	if (isset($_POST['signup'])) {
		$q_no=1;
		$username = $_POST['username'];
		$email = $_POST['email'];
		$regno = $_POST['regno'];
		$phoneno = $_POST['phoneno'];
		$dept = $_POST['dept'];

		// ensure form fields are not empty
		if (empty($username)) {
			array_push($errors, "Username is required");
		}

		if (empty($email)) {
			array_push($errors, "Email is required");
		}
		if (empty($regno)) {
			array_push($errors, "Registration number is required");
		}
		if (empty($phoneno)) {
			array_push($errors, "Phone number is required");
		}
		if (empty($dept)) {
			array_push($errors, "Department name is required");
		}

		// if there are no errors, save user to database
		if (count($errors) == 0) {
			$sql = "INSERT INTO t_student (username, regno, email, phoneno, dept) VALUES ('$username', '$regno', '$email', '$phoneno', '$dept')"; 
			mysqli_query($db, $sql);
			$_SESSION['q_id']=0;
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "Signup successful";
			header('location: index.php'); // redirect to home page
		}
	}

	

	if(empty($query)) {
		echo "ok";
		
		$query = "";
		$text = "";
		$db_host = 'localhost'; // Server Name
	    $db_user = 'root'; // Username
	    $db_pass = ''; // Password
	    $db_name = 'db_exam'; // Database Name

	    $conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
	    if (!$conn) {
	        die ('Failed to connect to MySQL: ' . mysqli_connect_error());  
	    }

	    $sql = 
	            "SELECT * FROM t_question";
	            
	    $query = mysqli_query($conn, $sql);

	    if (!$query) {
	        die ('SQL Error: ' . mysqli_error($conn));
		}

        
	}

	// logout
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header('location: signup.php');
	}

	

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <meta name="description" content="">
    <meta name="author" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="css/style.css">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Registration</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Custom styles for this template -->
    <style type="text/css">
        body {
            padding-top: 50px;
            text-align: center;
           
        }

        .starter-template {
            padding-top: 70px;
            padding-left: 250px;
            padding-right: 250px;
            text-align: center;
            font-family:sans-serif;
            font-size: 20px;
        }
        .myBut{
            align-self: center
        }
    </style>

    <link href="css/bootstrap.css" rel="stylesheet" />

<link href="css/bootstrap-theme.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>
</head>

    
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top ">
<ul class="nav navbar-nav centered-navbar">
  <li><img src="college.png" height="75px"></li>
  <ul style="list-style: none;" >
    <br>
    <li style="color: white; font-size: 20px;">ST.THOMAS' COLLEGE OF ENGINNERING AND TECHNOLOGY</li>
    <li style="color: white; text-align: left;">4 D.H ROAD, KOLKATA-700023</li>
  </ul>
</ul>

<ul style="list-style: none" class="navbar-nav ml-auto">
    <li style="color: white;">ONLINE EXAMINATION SYSTEM</li>
</ul>
</nav>


    
<main role="main" class="container">
<div>
 <div style="padding-top: 70px;" >
        <h1 style="text-align: center">Registration Form</h1>
      </div>
      
     <div style="text-align: center; padding-left: 230px;padding-right: 230px; padding-bottom: 70px;">
        <form  action="includes/register.inc.php" method="post" class="w3-card-2 w3-container w3-light-grey" >
           
           <?php include_once 'includes/errors.inc.php'; ?>
           
                 <div class="form-group">
                 <label for="name">Name:</label>
            <input placeholder="Name" type="text" class="form-control" id="name" name="name">
            </div>
            
            <div class="form-group">
                 <label for="regno">College Registration No:</label>
            <input placeholder="Reg No" type="text" class="form-control" id="regno" name="regno">
            </div>
                       <div class="form-group">
                 <label for="email">Email Id:</label>
            <input placeholder="Email" type="email" class="form-control" id="email" name="email">
            </div>
            <div class="form-group">
                 <label for="phone">Phone No:</label>
                <input placeholder="Phone" type="text" class="form-control" id="phone" name="phone">
            </div>
            
             <div class="form-group">
                 <label for="dept">Department:</label>
                <select class="form-control" id="dept" name="dept">
                   <option>-------</option>
                    <option value="CSE">Computer Science and Engineering</option>
                    <option value="ECE">Electronics and Communication Engineering</option>
                    <option value="EE">Electrical Engineering</option>
                    <option value="IT">Information Technology</option>
                </select>
            </div>
             <div style="text-align: center">
           	<input type="submit" name="submit" value="Submit" class="btn-success btn-lg">
        </div>
       </form>
      </div>
       
        
</div>
</main>           
    <!-- /.container -->


 <footer class="page-footer font-small  navbar-dark bg-dark" style="bottom: 0;margin-bottom: 0; position: fixed;width: 100%;">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3" style="color: white">© 2018 Copyright:
    <a>Designed By Akshay,Abhilash,Avinash,Nishat,Rishabh,Sourav | CSE DEPARTMENT</a>
  </div>
  <!-- Copyright -->

    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>

</body>
</html>
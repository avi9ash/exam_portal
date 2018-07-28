<?
include('server.php')
    
    if (empty($_SESSION['regno'])) {
		header('location: login.php');
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Instructions</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <style type="text/css">
        body {
            padding-top: 5rem;
        }

        .starter-template {
            padding: 3rem 1.5rem;
            text-align: center;
        }
        .square {
            height: 30px;
            width: 30px;
            border-style: groove;
            border-color: black;
            border-radius: 50%;
            
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
        <div style="overflow-y: scroll;width: auto; height:560px; padding-top: 90px; background-color: azure; padding-left: 70px; padding-right: 70px; ">
          <a href="exam.php"><button  name="start" class="btn-success btn-lg" style="float: right;">Enter Exam!</button></a>
          <br>
        <ul style="list-style: none;text-align: justify">
            <h3 style="text-align: center">Instruction for Examination</h3>
            <ol>
                <li style="text-align: left;text-decoration: underline;font-size: 20px">There are a total of 75 questions.</li>
                 <li style="text-align: left;font-size: 20px">Total Time: 90 minutes.</li>
                <li style="text-align: left;font-size: 20px">Each question carry 1 marks each.</li>
                <li style="text-align: left;font-size: 20px">No negative marking</li>
            </ol>
            
        </ul>
  <table  class="table table-hover">
    <thead><tr>
        <th>Section</th>
        <th>Questions</th>
        <th>Marks</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Physics</td>
        <td>20</td>
        <td>20</td>
      </tr>
      <tr>
        <td>Chemistry</td>
        <td>15</td>
        <td>15</td>
      </tr>
      <tr>
        <td>Maths</td>
        <td>20</td>
        <td>20</td>
      </tr>
       <tr>
        <td>English</td>
        <td>20</td>
        <td>20</td>
      </tr>
    </tbody>
  </table>
   
  
   <h4 style="text-align: center">Color Codes for Questions</h4>
   <table  class="table table-striped">
    <thead>
      <tr>
        <th>Color</th>
        <th>Meaning</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><div class="square" style="background-color: #17EE42;align-self: center;"></div></td>
        <td>Answered</td>
    </tr>
     <tr>
        <td><div class="square" style="background-color: #FFFFFF "></div></td>
        <td>Unanswered</td>
    </tr>
     <tr>
        <td><div class="square" style="background-color: #0B73DB"></div></td>
        <td>Current Question</td>
    </tr>
     
    </tbody>
  </table>
  <br>
  <br>
</div>

    </main>
            
  <footer class="page-footer font-small  navbar-dark bg-dark" style="bottom: 0;margin-bottom: 0; position: absolute;width: 100%; top=-100px;">

  <div class="footer-copyright text-center py-3" style="color: white;">© 2018 Copyright:
    <a>Designed By CSE DEPARTMENT</a>
  </div>
  </footer>

  <!-- Copyright -->

    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>

</body>
</html>
<?php

session_start();

  // If session variable is not set it will redirect to login page

    if(isset($_SESSION['username']) || !empty($_SESSION['username'])){

      header("location: login.php");

      exit;
    }else{
?>
        
            <!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/skeleton.css">

  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="icon" type="image/png" href="images/favicon.png">

</head>
<body>
<div class="container">
        <br>
            <br>

            <h1><b>Dobrodosli</b></h1>

            <a href="login.php" class="button">Login</a><br>
            <a href="register.php" class="button">Register</a>
    </div>
    </body>

    </html>
    
    <?php

    }

?>
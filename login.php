

    <?php

    // Include config file

    require_once 'config.php';

     

    // Define variables and initialize with empty values

    $username = $password = "";

    $username_err = $password_err = "";

     

    // Processing form data when form is submitted

    if($_SERVER["REQUEST_METHOD"] == "POST"){

     

        // Check if username is empty

        if(empty(trim($_POST["username"]))){

            $username_err = 'Please enter username.';

        } else{

            $username = trim($_POST["username"]);

        }

        

        // Check if password is empty

        if(empty(trim($_POST['password']))){

            $password_err = 'Please enter your password.';

        } else{

            $password = trim($_POST['password']);

        }

        

        // Validate credentials

        if(empty($username_err) && empty($password_err)){

            // Prepare a select statement

            $sql = "SELECT username, password FROM users WHERE username = :username";

            

            if($stmt = $pdo->prepare($sql)){

                // Bind variables to the prepared statement as parameters

                $stmt->bindParam(':username', $param_username, PDO::PARAM_STR);

                

                // Set parameters

                $param_username = trim($_POST["username"]);

                

                // Attempt to execute the prepared statement

                if($stmt->execute()){

                    // Check if username exists, if yes then verify password

                    if($stmt->rowCount() == 1){

                        if($row = $stmt->fetch()){

                            $hashed_password = $row['password'];

                            if(password_verify($password, $hashed_password)){

                                /* Password is correct, so start a new session and

                                save the username to the session */

                                session_start();

                                $_SESSION['username'] = $username;      

                                header("location: maticna_knjiga");

                            } else{

                                // Display an error message if password is not valid

                                $password_err = 'The password you entered was not valid.';

                            }

                        }

                    } else{

                        // Display an error message if username doesn't exist

                        $username_err = 'No account found with that username.';

                    }

                } else{

                    echo "Oops! Something went wrong. Please try again later.";

                }

            }

            

            // Close statement

            unset($stmt);

        }

        

        // Close connection

        unset($pdo);

    }

    ?>

     

 <!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta charset="utf-8">
  <title>E-maticna knjiga</title>
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
        <div class="container">

       <br><br>

            <h2>E-maticna knjiga</h2>

            <p>Molimo Vas ispunite formo da biste se ulogovali</p>

            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">

                <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">

                    <label>Username:<sup>*</sup></label>

                    <input type="text" name="username"class="u-full-width" value="<?php echo $username; ?>">

                    <p><?php echo $username_err; ?></p>

                </div>    

                <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">

                    <label>Password:<sup>*</sup></label>

                    <input type="password" name="password" class="u-full-width">

                    <p><?php echo $password_err; ?></p>

                </div>

                <div class="form-group">

                    <input type="submit" class="btn btn-primary" value="Potvrdi">

                </div>

                <p>Nemate nalog? <a href="register.php">Registrujte se</a>.</p>

            </form>

        </div>
</div>
    </body>

    </html>


<?php 
    session_start();
    
    if (isset($_SESSION['username'])) {
        header("location: index.php");
    } else {
        session_destroy();
        include('server.php');
    }
?>

<!DOCTYPE html>
<html>
   
    <head>
        <meta charset="utf-8">
        <title>Register</title>
        <link rel="stylesheet" href="style.css">
    </head>
    
    <body>
        <div class="container">
            <?php include('tab-menus.php') ?>
            
            <div id="content">
            </div>
            
            <?php include('login-form.php') ?>
            <?php include('register-form.php') ?>
        </div>
    </body>

    <script type="text/javascript">
        var content = document.getElementById('login');
        content.style.display = 'block';
    </script>
</html>
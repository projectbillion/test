<?php 
    session_start();
    
    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['username']);
        header("location: index.php");
    }
?>

<!DOCTYPE html>
<html>
   
    <head>
        <meta charset="utf-8">
        <title>Website buôn bán hoa quả & sữa hàng đầu Việt Nam</title>
        <link rel="stylesheet" href="style.css">
    </head>
   
    <body>
        <div class="container">
            <?php include('tab-menus.php') ?>

            <div id="content">
                <div id="homePage" class="tabContent">
                    <h3>Giới thiệu</h3>
                    <p>
                        Chào mừng các bạn đến với website buôn bán hoa quả & sữa lớn nhất vịnh Bắc Bộ. Tập đoàn chúng tôi cam kết cung cấp các sản phẩm thơm ngon và bổ dưỡng.
                    </p>
                    <h3>Một số hình ảnh</h3>
                    <img src="https://www.muralswallpaper.com/app/uploads/clean-white-brick-wall-textures-room-820x532.jpg" width="100%" alt="Fuck">
                </div>
            </div>

            <?php include('login-form.php') ?>
            <?php include('register-form.php') ?>
            
        </div>
   </body>

    <script type="text/javascript">
        focusTab('tabHome');
    </script>

</html>
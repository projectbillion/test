<?php 
    session_start();
    
    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['username']);
        header("location: index.php");
    }

    function display_data($category) {    
        $productdb = mysqli_connect('localhost', 'root', '', 'productdb');
        // Check connection
        if ($productdb->connect_error) {
            die("Connection failed: " . $productdb->connect_error);
        } 
        
        $item_check_query = "SELECT name, price, quality, imgs FROM items WHERE category='$category'";
        $items = mysqli_query($productdb, $item_check_query);
        if (!$items) { 
            die("Query Failed.");
        }

        $output = '<table><tr>';
        $count = 0;
        while($row = mysqli_fetch_array($items)) {   //Creates a loop to loop through results
            if ($count > 0 && $count % 3 == 0) {
                $output .= '</tr><tr>';
            }
            $output .= '<td><div class="card-item"><div class="card-item-image"><img class="item-image" src="' . $row["imgs"] 
            . '"></div> <div class="card-item-infor"><div class="card-item-name">' . $row["name"] 
            . '</div><div class="card-item-price">Giá: ' . $row["price"] 
            . ' VND</div><div class="card-item-quality">Chất lượng: ' . $row["quality"] . '</div></div></div></td>';
            $count++;
        }
        $output .= '</tr></table>';
        $productdb->close();
        echo $output;
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
                <?php 
                    $category = $_GET['c'];
                    display_data($category);
                ?>
            </div>

            <?php include('login-form.php') ?>
            <?php include('register-form.php') ?>
            
        </div>
   </body>

    <script type="text/javascript">
        focusTab('tabPlum');
    </script>

</html>
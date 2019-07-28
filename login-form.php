<form id="login" class="inforForm" method="post" action="/test/login.php">
    <?php include('errors.php'); ?>
    <div class="inforContainer">
        <h1>Đăng nhập</h1>
        <p>Nhập tên tài khoản (hoặc email) và mật khẩu.</p>
        <hr>

        <table class="center">
            <tr>
                <td>Tài khoản</td>
                <td>:</td>
                <td>
                    <input type="text" placeholder="Tài khoản / email" name="username" required>
                </td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td>:</td>
                <td>
                    <input type="password" placeholder="Mật khẩu" name="password" required>
                </td>
            </tr>
        </table>
        <hr>
        <button type="submit" class="center registerbtn" name="login_user">Đăng nhập</button>
    </div>
    
    <div class="container signin">
        <p>Bạn chưa có tài khoản? <a href="register.php">Đăng ký</a>.</p>
    </div>
</form>
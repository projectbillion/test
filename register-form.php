<form id="register" class="inforForm" method="post" action="/test/register.php">
    <?php include('errors.php') ?>
    <div class="inforContainer">
        <h1>Đăng ký</h1>
        <p>Điền thông tin vào mẫu dưới đây để đăng ký tài khoản.</p>
        <hr>

        <table class="center">
            <tr>
                <td>Tài khoản</td>
                <td>:</td>
                <td>
                    <input type="text" placeholder="Nhập tên tài khoản" name="username" required>
                </td>
            </tr>
            <tr>
                <td>Địa chỉ email</td>
                <td>:</td>
                <td>
                    <input type="text" placeholder="Nhập email" name="email" required>
                </td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td>:</td>
                <td>
                    <input type="password" placeholder="Nhập mật khẩu" name="password" required>
                </td>
            </tr>
            <tr>
                <td>Xác nhận mật khẩu</td>
                <td>:</td>
                <td>
                    <input type="password" placeholder="Xác nhận mật khẩu" name="password_confirm" required>
                </td>
            </tr>
        </table>

        <hr>
        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

        <button type="submit" class="center registerbtn" name="reg_user">Đăng ký</button>
    </div>
    
    <div class="container signin">
        <p>Bạn đã có tài khoản? <a href="login.php">Đăng nhập</a>.</p>
    </div>
</form>
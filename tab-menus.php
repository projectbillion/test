<div class="tab">
    <div id="tabHome" class="tabMenu">
        <button data-id="homePage" class="tabBtn" onclick="goHome()">Trang chủ</button>
    </div>
    <div id="tabPlum" class="tabMenu">
        <button data-id="plum" class="tabBtn">Mận</button>
        <div class="dropdown-content">
            <a href="plum.php?c=man hau">Mận hậu</a>
            <a href="plum.php?c=man anh em">Mận anh em</a>
            <a href="plum.php?c=man tam hoa">Mận tam hoa</a>
        </div>
    </div>
    <div id="tabAvocado" class="tabMenu">
        <button data-id="avocado" class="tabBtn">Bơ</button>
        <div class="dropdown-content">
            <a href="avocado.php?c=bo sap">Bơ sáp</a>
            <a href="avocado.php?c=bo tu quy">Bơ tứ quý</a>
            <a href="avocado.php?c=bo hass">Bơ Hass</a>
            <a href="avocado.php?c=bo kim cuong">Bơ kim cương</a>
        </div>
    </div>
    <div id="tabMilk" class="tabMenu">
        <button data-id="milk" class="tabBtn">Sữa</button>
        <div class="dropdown-content">
            <a href="milk.php?c=sua co duong">Sữa có đường</a>
            <a href="milk.php?c=sua khong duong">Sữa không đường</a>
            <a href="milk.php?c=sua chua">Sữa chua</a>
        </div>
    </div>
    <?php  if (isset($_SESSION['username'])) : ?>
        <div class="tabMenu">
            <strong><?php echo $_SESSION['username']; ?></strong>
            <a href="index.php?logout='1'" style="color: red;">logout</a>
        </div>
    <?php  else : ?>
        <button id="loginButton" data-id="login" class="tabMenu accLink">Đăng nhập</button>
    <?php endif ?>
    <button id="registerButton" data-id="register" class="tabMenu accLink">Đăng ký</button>
</div>

<script type="text/javascript">
    function goHome() {
        location.replace('index.php');
    }
    
    var accButtons = document.getElementsByClassName('accLink');

    function focusTab(id) {
        var tabs = document.getElementsByClassName('tabMenu');
        for (var i = 0; i < tabs.length; i++) {
            tabs[i].classList.remove("active");
        }

        document.getElementById(id).className += " active";
    }

    function showAccountPopup(id) {
        var forms = document.getElementsByClassName('inforForm');
        for (var i = 0; i < forms.length; i++) {
            forms[i].style.display = 'none';
        }

        document.getElementById('content').className += ' blur';
        var content = document.getElementById(id);
        content.style.display = 'block';
    }
    
    for (var i = 0; i < accButtons.length; i++) {
        accButtons[i].addEventListener("click", function(){
            showAccountPopup(this.getAttribute("data-id"));
        });
    }
</script>
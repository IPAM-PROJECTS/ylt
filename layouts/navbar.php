
<nav class="navbar navbar-expand-lg navbar-hd shadow-sm p-3 fixed-top" style="background-color:green; ">
    <div class="container">
    
        <img class="navbar-brand mb-0 h1" id="imgh" onclick="redirectToIndex()" style="height:10%; width:10%;" src="./images/Yeama-Leone-Tours.png" alt="ylt">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ml-auto">
    <li class="nav-item <?php if ($page == "index") echo 'active'; ?>">
        <a class="nav-link home <?php if ($page == "index") echo 'active-link'; ?>" href="index.php">Home</a>
    </li>
    <li class="nav-item <?php if ($page == "agencies") echo 'active'; ?>">
        <a class="nav-link <?php if ($page == "agencies") echo 'active-link'; ?>" href="agencies.php">Agencies</a>
    </li>
    <li class="nav-item <?php if ($page == "packages") echo 'active'; ?>">
        <a class="nav-link <?php if ($page == "packages") echo 'active-link'; ?>" href="packages.php">Packages</a>
    </li>
    <li class="nav-item <?php if ($page == "about") echo 'active'; ?>">
        <a class="nav-link <?php if ($page == "about") echo 'active-link'; ?>" href="about.php">About</a>
    </li>
    <li class="nav-item <?php if ($page == "contact") echo 'active'; ?>">
        <a class="nav-link <?php if ($page == "contact") echo 'active-link'; ?>" href="contact.php">Contact</a>
    </li>
</ul>


            <?php
                if(isset($_SESSION['tourist_email']) && ($_SESSION['tourist_status'] == 'approved')){
                        
            ?>
            <ul class="navbar-nav ml-auto float-right">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <?php echo $_SESSION['tourist_username']; ?>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="profile.php" >Profile</a>
                        <a class="dropdown-item" href="mybookings.php" >My Bookings</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="includes/logout.php" >Log Out</a>
                    </div>
                </li>
            </ul>

            <?php
                }elseif(isset($_SESSION['agency_login'])){
                    
                ?>

                <ul class="navbar-nav ml-auto float-right">
                    <li class="nav-item">
                        <a class="nav-link gradient-text" href="agency/index.php"><?php echo $_SESSION['agency_name']; ?></a>
                    </li>
                </ul>

                <?php
                    }elseif(isset($_SESSION['admin_email']) && ($_SESSION['admin_status'] == 'approved')) {
                        
                ?>
                
                <ul class="navbar-nav ml-auto float-right">
                    <li class="nav-item">
                        <a class="nav-link gradient-text" href="admin/dashboard.php"><?php echo $_SESSION['username']; ?></a>
                    </li>
                </ul>

                <?php

                    }else{
            ?>
            <!-- Registration & Log In -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <!-- <a class="nav-link" href="includes/login.php">Log In</a> -->
                    <a class="nav-link" href="./admin/index.php">Log In</a>

                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Register
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="tourist/registration.php" >Tourist</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="agency/register.php">Agency</a>
                    </div>
                </li>
            </ul>

            <?php
                }
            ?>
        </div>
    </div>
</nav>

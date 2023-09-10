<?php
include '../includes/db.php';
include 'layouts/admin_header.php';

if (isset($_POST['login'])) {
    $email = htmlentities($_POST['email']);
    $password = htmlentities($_POST['password']);

    if($email == '' || $password == ''){
        $_SESSION['error'] = 'All Fields are Required';
        header('Location: index.php');
        return;
    }
    // Admin login
    $stmt = $pdo->prepare('SELECT * FROM admins WHERE admin_email = :admin_email');
    $stmt->execute([':admin_email' => $email]);
    $admin = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($admin && password_verify($password, $admin['admin_password']) ){
        $_SESSION['admin_id'] = $admin['admin_id'];
        $_SESSION['username'] = $admin['username'];
        $_SESSION['admin_email'] = $admin['admin_email'];
        $_SESSION['admin_status'] = $admin['admin_status'];
        
        // Admin login successful
        $_SESSION['admin_login'] = 'admin';
        header('Location: dashboard.php');
        return;
    }

    // Agency login
    $stmt = $pdo->prepare('SELECT * FROM agencies WHERE agency_email = :agency_email');
    $stmt->execute([':agency_email' => $email]);
    $agency = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($agency && password_verify($password, $agency['agency_password'])) {
        $_SESSION['agency_id'] = $agency['agency_id'];
        $_SESSION['agency_name'] = $agency['agency_name'];
        $_SESSION['owner_firstname'] = $agency['owner_firstname'];
        $_SESSION['agency_email'] = $agency['agency_email'];
        $_SESSION['agency_status'] = $agency['agency_status'];

        if ($_SESSION['agency_status'] == 'unapproved') {
            $_SESSION['error'] = 'You need Admin\'s Approval';
            header('Location: index.php');
            return;
        } else {
            // Agency owner login successful
            $_SESSION['agency_login'] = "AgencyOwner";
            header('Location: ../agency');
            return;
        }
    }

    // Agency employee login
    $stmt = $pdo->prepare('SELECT * FROM agency_employees WHERE employee_email = :employee_email');
    $stmt->execute([':employee_email' => $email]);
    $employee = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($employee && password_verify($password, $employee['employee_password'])) {
        $_SESSION['employee_id'] = $employee['employee_id'];
        $_SESSION['agency_id'] = $employee['agency_id'];
        $_SESSION['employee_firstname'] = $employee['employee_firstname'];
        $_SESSION['role'] = $employee['role'];
        $_SESSION['employee_email'] = $employee['employee_email'];

        // Fetch agency details
        $stmt = $pdo->prepare('SELECT * FROM agencies WHERE agency_id = :agency_id');
        $stmt->execute([':agency_id' => $_SESSION['agency_id']]);
        $agency = $stmt->fetch(PDO::FETCH_ASSOC);

        $_SESSION['agency_name'] = $agency['agency_name'];
        $_SESSION['agency_status'] = $agency['agency_status'];

        if ($_SESSION['agency_status'] == 'unapproved') {
            $_SESSION['error'] = 'You need Admin\'s Approval';
            header('Location: index.php');
            return;
        } else {
            // Agency employee login successful
            $_SESSION['agency_login'] = "AgencyEmployee";
            header('Location: ../agency');
            return;
        }
    }

    // Tourist login
    $email = htmlentities($_POST['email']);
    $password = htmlentities($_POST['password']);

    $stmt = $pdo->prepare('SELECT * FROM tourists WHERE tourist_email = :tourist_email');
    $stmt->execute([':tourist_email' => $email]);
    $tourist = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($tourist && password_verify($password, $tourist['tourist_password'])) {
        $_SESSION['tourist_id'] = $tourist['tourist_id'];
        $_SESSION['tourist_username'] = $tourist['tourist_username'];
        $_SESSION['tourist_email'] = $tourist['tourist_email'];
        $_SESSION['tourist_status'] = $tourist['tourist_status'];

        if ($_SESSION['tourist_status'] == 'unapproved') {
            $_SESSION['error'] = 'You need Admin\'s Approval';
            header('Location: index.php');
            return;
        } else {
            // Tourist login successful
            $_SESSION['tourist_login'] = "Tourist";
            header('Location: ../index.php');
            return;
        }
    }
    
    // Login failed for all user types
    $_SESSION['error'] = 'Wrong Email or Password';
    header('Location: index.php');
    return;


}

?>

<!-- Rest of your HTML and form code remains the same -->
<div class="container-fluid">
    <div class="card mx-auto col-sm-6" style="border: none;">
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="p-5 font-italic text-center font-weight-bold" style="font-size: 3rem; margin-bottom:-40px;"> Login</h2>
                
                </div>
            </div>
        

        <?php
            include '../includes/flash_msg.php';
        ?>

        <form action="" method="post" class="col-md-12 pt-5">
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control" id="" placeholder="example@mail.com" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" placeholder="password" id="" name="password">
            </div>
            <div class="form-group">
                <input type="submit" value="Log In" name="login" class="btn btn-primary">

                <a href="../index.php" type="button" class="btn btn-secondary float-right">Cancel</a>
            </div>
        </form>
        </div>
    </div>
</div>

<?php
    include 'layouts/admin_footer.php';
?>

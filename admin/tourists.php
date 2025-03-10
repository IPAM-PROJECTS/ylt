<?php
    include '../includes/db.php';
    include 'layouts/admin_header.php';
    include 'layouts/admin_navbar.php';
   // require '../vendor/autoload.php';

    // Stripe API Key
    // $stripe = new \Stripe\StripeClient(
    // 'sk_test_51I2VszFRq96Mv30adt48SkZsYWrICf1xCl47sv40GxlV9GFZWcu3O0e9fsUaIZy6fBhKgRGLuQcUxDGEh8xd0iEC000wfHTLWc'
    // );

    if(empty($_SESSION['admin_login']) || $_SESSION['admin_login'] == ''){
        header('Location: index.php');
        return;
    }
?>

<div id="layoutSidenav">
    <?php
        include 'layouts/admin_sidenav.php';
    ?>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h1 class="mt-4">Welcome to Admin ...</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Tourist Information</li>
                </ol>
                <div class="row">
                    <div class="col-lg-12">
                        <?php
                            if(isset($_GET['page'])){
                                $page = $_GET['page'];
                            }else{
                                $page = '';
                            }
                            switch($page){
                                case 'add_tourist':
                                    include 'includes/add_tourist.php';
                                break;
                                case 'edit_tourist':
                                    include 'includes/edit_tourist.php';
                                break;
                                default:
                                    include 'includes/view_all_tourists.php';
                            break;
                            }
                        ?>
                    </div>
                </div>
            </div>
        </main>
        <footer class="py-3 bg-light mt-auto">
            <div class="container-fluid">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Yeama Leone Tours &copy; 20223</div>
                </div>
            </div>
        </footer>
    </div>
</div>

<?php
    include 'layouts/admin_footer.php';
?>

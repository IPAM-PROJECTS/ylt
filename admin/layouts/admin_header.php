<?php
    ob_start();
    session_start();

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <!-- <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/cdn.jsdelivr.net_npm_bootstrap@4.5.3_dist_css_bootstrap.min.css"> -->
   
        <!-- Font Awesome 5 -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
        <!-- <link rel="stylesheet" href="./css/fontawesome/css/all.css"> -->

        <!--JQuery CDN -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.js" integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin="anonymous"></script>
        <!-- <script src="./js/ajax.googleapis.com_ajax_libs_jquery_3.5.1_jquery.min.js"></script> -->


        <!-- Google Charts -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <!-- <script src="../../js/gstatic.com_charts_loader.js"></script> -->

        <!-- CK Editor -->
        <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
         <!-- <script src="./js/cdn.ckeditor.com_ckeditor5_23.0.0_classic_ckeditor.js"></script> -->


        <title>Yeama Leone Tours</title>
    <link rel="icon" href="../images/ylt.png" type="image/x-icon">
        <style>
    /* Create a linear gradient with green, white, and blue */
    /* Adjust the angle, color stops, and positioning as needed */
    .gradient-text {
      background-image: linear-gradient(45deg, green, white, blue);
      background-clip: text; /* This property clips the gradient to the text */
      -webkit-background-clip: text; /* For Safari support */
      color: transparent; /* Make the text transparent to show the gradient */
    }

    /* Optional styling to make the text stand out */
   h5 span {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top:10px;    
    
    }
  </style>
        
    </head>
    <body class="sb-nav-fixed">
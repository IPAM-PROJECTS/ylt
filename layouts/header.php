<?php
    ob_start();
    session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/cdn.jsdelivr.net_npm_bootstrap@4.5.3_dist_css_bootstrap.min.css"> -->
   
    <!-- Font Awesome 5 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
      <!-- <link rel="stylesheet" href="./css/fontawesome/css/all.css"> -->

      <!--JQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> 
   
    <!-- <script src="./js/ajax.googleapis.com_ajax_libs_jquery_3.5.1_jquery.min.js"></script>
    <script src="./js/code.jquery.com_jquery-3.2.1.min.js"></script> -->


    <!-- CK Editor -->
    <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
    <!-- <script src="./js/cdn.ckeditor.com_ckeditor5_23.0.0_classic_ckeditor.js"></script> -->
    

    <!-- Animation Library -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="./css/unpkg.com_aos@2.3.1_dist_aos.css"> -->
   

    <title>Yeama Leone Tours</title>
    <link rel="icon" href="./images/ylt.png" type="image/x-icon">
    <style>
        /* Optional CSS styles for the image */
        /* Adding padding and a border around the image */
        #imgh {
            
            padding: 5px;
            cursor: pointer; /* Changing the cursor to a pointer when hovering over the image */
        }
    
    /* Create a linear gradient with green, white, and blue */
    /* Adjust the angle, color stops, and positioning as needed */
    .gradient-text {
      background-image: linear-gradient(45deg, green, white, blue);
      /* background-image: linear-gradient(to bottom, green 35%, white 70%, blue 40%); */
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
    /* CSS for active link styles */
    .nav-link {
      text-decoration: none; /* Remove default underline */
      color: white; /* Default link color */
    }
    .nav-link:hover {
     
      border-bottom: 2px solid skyblue; /* Remove default underline */
      color: white; /* Default link color */
    }


    .nav-item.active a {
        color: white;
        border-bottom: 2px solid skyblue;
    }

    

    </style>
    <script>
        function redirectToIndex() {
            window.location.href = "index.php";
        }
    </script>

</head>
<body>
<?php
    $page = 'contact';
    include 'layouts/header.php';
    include 'layouts/navbar.php';

?>
<head>
    <style>
        .about{
            /* background-image: url("images/view/contact.jpg"); */
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            height: 86vh;
        }
        body {
            background: #e8cbc0;
            background: -webkit-linear-gradient(to right, green, white, blue);
            background: linear-gradient(to right, green, white, blue);
            min-height: 100vh;
        }

        .icon {
    color: blue; /* Replace with your desired color code */
}

    </style>



    <script>


    
    </script>
</head>

<br><br><br>
<div class="container-fluid about">
    <br><br>
    <h1 class="text-center my-5 ">Contact Us</h1>
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-4">
                <!-- <div class="card border-primary">
                    <div class="card-body">
                        <h5 class="card-title"><i class="far fa-envelope icon"></i></h5>
                        <p class="card-text pt-4"> yeamaleonetours@gmail.com</p>
                    </div>
                </div> -->

                <div class="card border-primary">
    <div class="card-body">
        <h5 class="card-title"><i class="far fa-envelope icon"></i></h5>
        <p class="card-text pt-4">
            <a href="mailto:yeamaleonetours@gmail.com" data-toggle="tooltip" data-placement="top" title="Click to contact us">
                yeamaleonetours@gmail.com
            </a>
        </p>
    </div>
</div>

                <br> <br>
                <div class="card border-success">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-phone icon"></i></h5>
                        <p class="card-text pt-4">+232 78 240398</p>
                        
                    </div>

             

               
            </div>
                
            </div>
            <div class="col-sm-8">
                <div class="card border-danger">
                       
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.2524675817194!2d-13.248429425334647!3d8.474813591566052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xf04c3759fe0b979%3A0x357eb8ba5136d77d!2s58%20Bath%20St%2C%20Freetown!5e0!3m2!1sen!2ssl!4v1691969232289!5m2!1sen!2ssl" height="350px" style="border:0; " allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            
                </div>
            </div>
            
            
        </div>
    </div>
</div>


<?php
    include 'layouts/footer.php';
?>
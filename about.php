<?php
    $page = 'about';
    include 'layouts/header.php';
    include 'layouts/navbar.php';

?>
<head>
    <style>
        .about{
            /* background-image: url("./images/view/about.png"); */
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            /* background-color:  ; */
            /* height: 120vh; */
        }
        body {
            background: #e8cbc0;
            background: -webkit-linear-gradient(to right, green, white, blue);
            background: linear-gradient(to right, green, white, blue);
            min-height: 100vh;
        }

.social-link {
    width: 30px;
    height: 30px;
    border: 1px solid #ddd;
    display: flex;
    align-items: center;
    justify-content: center;
    color: blue;
    border-radius: 50%;
    transition: all 0.3s;
    font-size: 0.9rem;
}

.social-link:hover, .social-link:focus {
    background: #ddd;
    text-decoration: none;
    color: green;
}

    </style>
</head>

<br><br><br>
<div class="container-fluid about">
<div class="row">
    <br>
        <h1 class="text-white col-xl-12 col-sm-12 text-center text-dark my-5">About Us</h1>
            <div class="col-xl-6 col-sm-6 mb-5 py-3">
            <div class="bg-white  rounded shadow-sm py-5 px-4">
                 <h4 class="text-center text-black"><b>About Us</b></h4>
                <p class="mb-0 text-justify">Welcome to Yeama Leone Tours - Your Gateway to Unforgettable Adventures!
                At Yeama Leone Tours, we are passionate about creating exceptional travel experiences that leave lasting memories. With a deep love for exploration and a commitment to delivering top-notch service, we take pride in being your trusted partner for all your travel aspirations. Whether you're an avid adventurer seeking thrilling escapades or a leisure traveler in pursuit of
                relaxation, we have carefully curated packages that cater to your every desire.</p>
                
            </div>
        </div>
        <div class="col-xl-6 col-sm-6 mb-5 py-3">
            <div class="bg-white rounded shadow-sm py-5 px-4">
                <h4 class="text-center"><b>What Sets Us Apart</b></h4>
            <p class="mb-0 text-justify text-white">

<ul ><li><b>Local Expertise: </b>Our team comprises local experts who possess an in-depth knowledge of Sierra Leone's hidden gems, allowing us to offer you insider insights and authentic experiences.
</li><li>
<b>Personalized Approach:</b> We understand that every traveler is unique. That's why we take the time to understand your interests, preferences, and travel style to create a personalized itinerary that resonates with you.
</li><li>
<b>Quality and Safety:</b> Your safety and satisfaction are our top priorities. We work tirelessly to ensure that every aspect of your journey is of the highest quality and adheres to strict safety standards.
</li><li>
<b>Sustainable Travel: </b>We are committed to responsible and sustainable travel practices. By supporting local communities and minimizing our environmental impact, we aim to leave a positive footprint on the places we visit.
</li>
</ul>
</p>             
            </div>
        </div>

        <div class="col-xl-6 col-sm-6 mb-5 py-3">
            <div class="bg-white rounded shadow-sm py-5 px-4">
                <h4 class="text-center"><b>Our Story</b></h4>
            <p class="mb-0 text-justify">
          Founded in 2019, Yeama Leone Tours started as a dream to showcase the breathtaking beauty and rich cultural heritage of Sierra Leone to the world. What began as a humble endeavor has blossomed into a premier travel company dedicated to crafting bespoke itineraries
         and providing unparalleled support every step of the way.</p>             
            </div>
        </div>
        
        <div class="col-xl-6 col-sm-6 mb-5 py-3">
            <div class="bg-white  rounded shadow-sm py-5 px-4">
                 <h4 class="text-center"><b>Our Mission</b></h4>
                <p class="mb-0 text-justify">At Yeama Leone Tours, our mission is simple yet profound: to transform your travel dreams into reality. We are driven by the belief that every journey should be unique, immersive, and tailored to your preferences. Our team of experienced travel enthusiasts is dedicated to curating experiences that capture the essence of Sierra Leone, 
                    allowing you to connect with its people, landscapes, and traditions on a deeper level.</p>
                
            </div>
        </div>
        
</div>
</div>

<!-- Our Team Section -->
<div class="container py-5">
    <div class="row text-center text-black">
        <div class="col-lg-8 mx-auto">
            <h1 class="display-4"> <b> Our Team </b></h1>
        </div>
    </div>


<div class="container">
    <div class="row text-center">

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Adama Yeama Fowai.</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                <ul class="social mb-0 list-inline mt-3">
                    <li class="list-inline-item"><a href="#" class="social-link"><i class="fab fa-facebook"></i></a></li>
                </ul>
            </div>
        </div><!-- End -->

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Jennifer Harding</h5><span class="small text-uppercase text-muted">Events Coordinator</span>
                <ul class="social mb-0 list-inline mt-3">
                    <li class="list-inline-item"><a href="#" class="social-link"><i class="fab fa-facebook"></i></a></li>
                </ul>
            </div>
        </div><!-- End -->

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Mohamed Koroma</h5><span class="small text-uppercase text-muted">Tour Guide Coordinator</span>
                <ul class="social mb-0 list-inline mt-3">
                    <li class="list-inline-item"><a href="#" class="social-link"><i class="fab fa-facebook"></i></a></li>
                </ul>
            </div>
        </div><!-- End -->

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Tom Sesay</h5><span class="small text-uppercase text-muted">Tourism Officer</span>
                <ul class="social mb-0 list-inline mt-3">
                    <li class="list-inline-item"><a href="#" class="social-link"><i class="fab fa-facebook"></i></a></li>
                </ul>
            </div>
        </div><!-- End -->
    </div>
</div>
</div>
<?php
    
    include 'layouts/footer.php';

?>
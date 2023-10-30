<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="libs/angular.min.js"></script>
    <script src="libs/angular-route.min.js"></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>

<body ng-app="myApp">
<header>
    <nav class="navbar navbar-expand-lg bg-danger" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Travellokal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#!/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#!/booking">Flight booking</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#!/contact">Contacts</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control bg-light me-2" style="border:none" type="search"
                           placeholder="Tìm kiếm" aria-label="Tìm kiếm">
                    <button type="button" class="btn btn-primary">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="row">
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner1.jpg"
                             alt="Responsive image">
                    </div>
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;;height:250px;" src="img/banner1.2.jpg"
                             alt="Responsive image">
                    </div>
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;;height:250px;" src="img/banner1.4.jpg"
                             alt="Responsive image">
                    </div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Hanoi hustle</h5>
                    <p>If you love street food, love hustle, and classical,So book a ticket to travel that city now
                        <br>
                        <p2 style="font-size:12px;">Click to banner to know detail</p2>
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row">
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner2.jpg"
                             alt="Responsive image">
                    </div>
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner2.1.jpg"
                             alt="Responsive image">
                    </div>
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner2.2.jpg"
                             alt="Responsive image">
                    </div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Hoi An</h5>
                    <p>What a good vibe place for your vacation.
                        <br>
                        <p2 style="font-size:12px;">Click to banner to know detail</p2>
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row">
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner3.jpg"
                             alt="Responsive image">
                    </div>
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner3.1.jpg"
                             alt="Responsive image">
                    </div>
                    <div class="col-4 md-4 sm-4" style="padding: 0;">
                        <img class="d-block w-100" style="width: auto;height:250px;" src="img/banner3.2.jpg"
                             alt="Responsive image">
                    </div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>New york</h5>
                    <p>If you love the film about wall street drama, let discover the big head finance city of the
                        world
                        <br>
                        <p2 style="font-size:12px;">Click to banner to know detail</p2>
                    </p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</header>
<!-- <div class="col-f" style="width:700px;margin-left: auto;margin-right: auto;"> -->
<main ng-view style="width:700px;margin-left: auto;margin-right: auto;">

</main>
<footer id="footer" style="margin-top: 60px;">
    <div class="container">
        <div class="row" style="width:750px;margin-left: auto;margin-right: auto;">
            <div class="col-4 md-4">
                <div class="useful-link">
                    <h2 style="color:white;">Useful Links</h2>
                    <img src="./assets/images/about/home_line.png" alt="" class="img-fluid">
                    <div class="use-links">
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> Home</a></li>
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> About Us</a>
                        </li>
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> Gallery</a>
                        </li>
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> Contact</a>
                        </li>
                    </div>
                </div>
            </div>
            <div class="col-4 md-4">
                <div class="social-links">
                    <h2 style="color: white;">Follow Us</h2>
                    <img src="./assets/images/about/home_line.png" alt="">
                    <div class="social-icons">
                        <li><a href=""><i class="fa-brands fa-facebook-f"></i> Facebook</a></li>
                        <li><a href=""><i class="fa-brands fa-instagram"></i> Instagram</a></li>
                        <li><a href=""><i class="fa-brands fa-linkedin-in"></i> Linkedin</a></li>
                    </div>
                </div>

            </div>
            <div class="col-4 md-4">
                <div class="address">
                    <h2 style="color: white">Address</h2>
                    <img src="./assets/images/about/home_line.png" alt="" class="img-fluid">
                    <div class="address-links">
                        <li class="address1"><i class="fa-solid fa-location-dot"></i>FPT
                            Nam Từ Liêm-
                            Hà Nội
                            Việt Nam</li>
                        <li><a href=""><i class="fa-solid fa-phone"></i> +84374223222</a></li>
                        <li><a href=""><i class="fa-solid fa-envelope"></i> phucloc@gmail.com</a></li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="controllers/HomeController.js"></script>
<script src="controllers/BookingController.js"></script>
<script src="controllers/ContactController.js"></script>
</body>
</html>
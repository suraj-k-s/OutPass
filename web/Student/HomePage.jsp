<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>OutPass</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

        <!-- Favicon -->
        <link href="../Assets/Template/Main/img/favicon.ico" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com"  />
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
            rel="stylesheet"
            />

        <!-- Icon Font Stylesheet -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
            />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet"
            />

        <!-- Libraries Stylesheet -->
        <link href="../Assets/Template/Main/lib/animate/animate.min.css" rel="stylesheet" />
        <link href="../Assets/Template/Main/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="../Assets/Template/Main/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="../Assets/Template/Main/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="../Assets/Template/Main/css/style.css" rel="stylesheet" />
    </head>

    <body>
        <!-- Spinner Start -->
        <div
            id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
            >
            <div
                class="spinner-grow text-primary"
                style="width: 3rem; height: 3rem"
                role="status"
                >
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
            <a href="HomePage.jsp"  class="navbar-brand d-flex align-items-center px-4 px-lg-5" >
                <h2 class="m-0 text-primary">OutPass</h2>
            </a>
            <button
                type="button"
                class="navbar-toggler me-4"
                data-bs-toggle="collapse"
                data-bs-target="#navbarCollapse"
                >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="HomePage.jsp" class="nav-item nav-link active">Home</a>
                    <a href="MyProfile.jsp" class="nav-item nav-link active">Profile</a>
                    <a href="EditProfile.jsp" class="nav-item nav-link active">Edit Profile</a>
                    <a href="ChangePassword.jsp" class="nav-item nav-link active">Change Password</a>
                    <a href="OutPass.jsp" class="nav-item nav-link active">Outpass</a>
                    <a href="Leave.jsp" class="nav-item nav-link active">Leave</a>
                    <a href="Complaint.jsp" class="nav-item nav-link active">Complaint</a>
                </div>
                <a href="../Guest/Login.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">LOGOUT<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->

        <!-- Carousel Start -->
        <div class="container-fluid p-0 pb-5">
            <div class="owl-carousel header-carousel position-relative">
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="../Assets/Template/Main/img/carousel-1.jpg" alt="" />
                    <div
                        class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
                        style="background: rgba(53, 53, 53, 0.7)"
                        >
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-8 text-center">
                                    <h5
                                        class="text-white text-uppercase mb-3 animated slideInDown"
                                        >
                                        Welcome To OutPass
                                    </h5>
                                    <h1 class="display-3 text-white animated slideInDown mb-4">
                                        OUTPASS
                                    </h1>
                                    <p class="fs-5 fw-medium text-white mb-4 pb-2">
                                        Make Your Choice.
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="../Assets/Template/Main/img/carousel-2.jpg" alt="" />
                    <div
                        class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
                        style="background: rgba(53, 53, 53, 0.7)"
                        >
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-8 text-center">
                                    <h5
                                        class="text-white text-uppercase mb-3 animated slideInDown"
                                        >
                                        Welcome To OutPass
                                    </h5>
                                    <h1 class="display-3 text-white animated slideInDown mb-4">
                                        MILESTONE
                                    </h1>
                                    <p class="fs-5 fw-medium text-white mb-4 pb-2">
                                        One Day You May Look Back And Realise They Were The Big Things.
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="../Assets/Template/Main/img/carousel-3.jpg" alt="" />
                    <div
                        class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
                        style="background: rgba(53, 53, 53, 0.7)"
                        >
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-8 text-center">
                                    <h5
                                        class="text-white text-uppercase mb-3 animated slideInDown"
                                        >
                                        Welcome To OutPass
                                    </h5>
                                    <h1 class="display-3 text-white animated slideInDown mb-4">
                                        HAPPY FACES
                                    </h1>
                                    <p class="fs-5 fw-medium text-white mb-4 pb-2">
                                        Warm Your Heart.
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- About Start -->
        <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
            <div class="container about px-lg-0">
                <div class="row g-0 mx-lg-0">
                    <div class="col-lg-6 ps-lg-0" style="min-height: 400px">
                        <div class="position-relative h-100">
                            <img
                                class="position-absolute img-fluid w-100 h-100"
                                src="../Assets/Template/Main/img/about.jpg"
                                style="object-fit: cover"
                                alt=""
                                />
                        </div>
                    </div>
                    <div
                        class="col-lg-6 about-text py-5 wow fadeIn"
                        data-wow-delay="0.5s"
                        >
                        <div class="p-lg-5 pe-lg-0">
                            <div class="section-title text-start">
                                <h1 class="display-5 mb-4">About Us</h1>
                            </div>
                            <p class="mb-4 pb-2">
                                "Welcome to our college hostel, where community thrives and academic excellence meets a home away from home. Nestled in the heart of campus life, our hostel offers a vibrant, supportive environment for students to flourish. With modern facilities, dedicated staff, and a commitment to fostering a sense of belonging, we strive to provide a safe, inclusive space where students can grow both academically and personally. Join us in creating lasting memories, forging lifelong friendships, and embracing the journey of higher education."
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Feature Start -->
        <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
            <div class="container feature px-lg-0">
                <div class="row g-0 mx-lg-0">
                    <div
                        class="col-lg-6 feature-text py-5 wow fadeIn"
                        data-wow-delay="0.5s"
                        >
                        <div class="p-lg-5 ps-lg-0">
                            <div class="section-title text-start">
                                <h1 class="display-5 mb-4">Why Choose Us</h1>
                            </div>
                            <p class="mb-4 pb-2">
                                performance of our hostel warden has been exceptional. The feedback from residents has been overwhelmingly positive, highlighting your attentiveness, approachability, and dedication to creating a comfortable living environment. Keep up the great work!"
                            </p>

                        </div>
                    </div>
                    <div class="col-lg-6 pe-lg-0" style="min-height: 400px">
                        <div class="position-relative h-100">
                            <img
                                class="position-absolute img-fluid w-100 h-100"
                                src="../Assets/Template/Main/img/feature.jpg"
                                style="object-fit: cover"
                                alt=""
                                />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature End -->

        <!-- Testimonial Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="section-title text-center">
                    <h1 class="display-5 mb-5">Testimonial</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item text-center">
                        <img
                            class="img-fluid bg-light p-2 mx-auto mb-3"
                            src="../Assets/Template/Main/img/testimonial-1.jpg"
                            style="width: 90px; height: 90px"
                            />
                        <div class="testimonial-text text-center p-4">
                            <p>
                                Keep up the great work in fostering a supportive and comfortable environment for everyone!"
                            </p>
                            <h5 class="mb-1">Sabrina</h5>
                            <span class="fst-italic">student</span>
                        </div>
                    </div>
                    <div class="testimonial-item text-center">
                        <img
                            class="img-fluid bg-light p-2 mx-auto mb-3"
                            src="../Assets/Template/Main/img/testimonial-2.jpg"
                            style="width: 90px; height: 90px"
                            />
                        <div class="testimonial-text text-center p-4">
                            <p>
                                Your efforts in creating a welcoming and supportive environment are clearly appreciated. Keep up the excellent work!
                            </p>
                            <h5 class="mb-1">John</h5>
                            <span class="fst-italic">student</span>
                        </div>
                    </div>
                    <div class="testimonial-item text-center">
                        <img
                            class="img-fluid bg-light p-2 mx-auto mb-3"
                            src="../Assets/Template/Main/img/testimonial-3.jpg"
                            style="width: 90px; height: 90px"
                            />
                        <div class="testimonial-text text-center p-4">
                            <p>
                                Students satisfaction is a testament to your hard work and dedication. Keep up the good work in maintaining a supportive and enjoyable living environment for everyone in the hostel!
                            </p>
                            <h5 class="mb-1">Alex</h5>
                            <span class="fst-italic">student</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->

        <!-- Footer Start -->
        <div
            class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn"
            data-wow-delay="0.1s"
            >
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 col-md-6">
                        <h4 class="text-light mb-4">Address</h4>
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-phone-alt me-3"></i>+012 345 67890
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-envelope me-3"></i>info@example.com
                        </p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-twitter"></i
                                ></a>
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-facebook-f"></i
                                ></a>
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-youtube"></i
                                ></a>
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-linkedin-in"></i
                                ></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <h4 class="text-light mb-4">Newsletter</h4>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px">
                            <input
                                class="form-control border-0 w-100 py-3 ps-4 pe-5"
                                type="text"
                                placeholder="Your email"
                                />
                            <button
                                type="button"
                                class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2"
                                >
                                SignUp
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All
                            Right Reserved.
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <!--/*** This template is free as long as you keep the footer author?s credit link/attribution link/backlink. If you'd like to use the template without the footer author?s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By
                            <a class="border-bottom" href="https://htmlcodex.com"
                               >HTML Codex</a
                            >
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a
            href="#"
            class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"
            ><i class="bi bi-arrow-up"></i
            ></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../Assets/Template/Main/lib/wow/wow.min.js"></script>
        <script src="../Assets/Template/Main/lib/easing/easing.min.js"></script>
        <script src="../Assets/Template/Main/lib/waypoints/waypoints.min.js"></script>
        <script src="../Assets/Template/Main/lib/counterup/counterup.min.js"></script>
        <script src="../Assets/Template/Main/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="../Assets/Template/Main/lib/isotope/isotope.pkgd.min.js"></script>
        <script src="../Assets/Template/Main/lib/lightbox/js/lightbox.min.js"></script>

        <!-- Template Javascript -->
        <script src="../Assets/Template/Main/js/main.js"></script>
    </body>
</html>

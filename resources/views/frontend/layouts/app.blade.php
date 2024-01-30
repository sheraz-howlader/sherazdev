<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ asset($setting->icon) }}" rel="icon"/>
    <title> {{ $setting->meta_title }} </title>
    <meta name="description" content="{{ $setting->meta_description }}">
    <meta name="keywords" content="{{ $setting->meta_keyword }}">
    <meta name="author" content="sherazdev.com">

    <!-- Web Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- Stylesheet
    ============================== -->
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/') }}/vendor/bootstrap/css/bootstrap.min.css"/>
    <!-- Font Awesome Icon -->
    <script src="https://kit.fontawesome.com/7b81d78297.js" crossorigin="anonymous"></script>
    <!-- Owl Carousel -->
    <link rel="stylesheet" type="text/css"
          href="{{ asset('frontend/') }}/vendor/owl.carousel/assets/owl.carousel.min.css"/>
    <!-- Magnific Popup -->
    <link rel="stylesheet" type="text/css"
          href="{{ asset('frontend/') }}/vendor/magnific-popup/magnific-popup.min.css"/>
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/') }}/css/stylesheet.css"/>
    <!-- Colors Css -->
    <link id="color-switcher" type="text/css" rel="stylesheet" href="#"/>
    <style>
        /*Disable text selection - */
        body{
            -webkit-user-select: none; /* Safari */
            -ms-user-select: none; /* IE 10 and IE 11 */
            user-select: none; /* Standard syntax */
        }
    </style>
</head>

<body class="side-header" data-bs-spy="scroll" data-bs-target="#header-nav" data-bs-offset="1">

<!-- Start::Preloader -->
<div class="preloader preloader-dark">
    <div class="lds-ellipsis">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- End::Preloader -->

<div id="main-wrapper">
    <!-- Start::Header & Sidebar -->
    @include('frontend.layouts.sidebar')
    <!-- End::Header & Sidebar-->

    <!-- Start::Content -->
    <div id="content" role="main">
        <!-- Start::Intro -->
        <section id="home">
            <div class="hero-wrap">
                <div class="hero-mask opacity-8 bg-dark"></div>

                <div class="hero-bg parallax" style="background-image:url({{ asset($setting?->thumbnail) }})"></div>

                <div class="hero-content section d-flex min-vh-100">
                    <div class="container my-auto">
                        <div class="row">
                            <div class="col-12 text-center">
                                <div class="typed-strings">
                                    <p>I'm {{ $user?->full_name }}</p>
                                    <p>I'm a {{ $setting?->hero_type_writer }}.</p>
                                </div>
                                <p class="text-7 fw-500 text-white mb-2 mb-md-3">Welcome</p>
                                <h2 class="text-16 fw-600 text-white mb-2 mb-md-3"><span class="typed"></span></h2>
                                <p class="text-5 text-light mb-4"> Based in Bangladesh. </p>
                                <a href="#contact"
                                   class="btn btn-outline-primary rounded-pill shadow-none smooth-scroll mt-2">
                                    Hire Me
                                </a>
                            </div>
                        </div>
                    </div>
                    <a href="#about" class="scroll-down-arrow text-white smooth-scroll">
                        <span class="animated">
                            <i class="fa fa-chevron-down"></i>
                        </span>
                    </a>
                </div>
            </div>
        </section>
        <!-- End::Intro -->

        <!-- Start::About -->
        @include('frontend.layouts.about')
        <!-- End::About -->

        <!-- Start::Services -->
        @include('frontend.layouts.service')
        <!-- End::Services -->

        <!-- Start::Education -->
        @include('frontend.layouts.education')
        <!-- End::Education -->

        <!-- Start::Portfolio -->
        @include('frontend.layouts.portfolio')
        <!-- End::Portfolio -->

        <!-- Start::Testimonial -->
        @include('frontend.layouts.testimonial')
        <!-- End::Testimonial -->

        <!-- Start::Contact -->
        @include('frontend.layouts.contact')
        <!-- End::Contact -->
    </div>
    <!-- End::Content -->

    <!-- Start::Footer -->
    <footer id="" class="footer-dark bg-dark-1 p-4" style="color: rgba(250, 250, 250, 0.8)">
        <div class="container px-lg-5">
            <div class="row align-items-center">
                <div class="col-lg-6 text-center text-lg-start">
                    <p class="mb-lg-0">Copyright © {{ date('Y') }}
                        <a href="https://github.com/sherazHowlader" class="fw-500" target="_blank">{{ config('app.name')  }}</a>. All Rights Reserved.
                    </p>
                </div>
                <div class="col-lg-6">
                    <ul class="nav nav-separator nav-separator-light justify-content-center justify-content-lg-end">
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgba(250, 250, 250, 0.8)" data-bs-toggle="modal"
                               data-bs-target="#terms-policy" href="#">Terms & Policy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgba(250, 250, 250, 0.8)" data-bs-toggle="modal"
                               data-bs-target="#disclaimer" href="#">Disclaimer</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- End::Footer -->
</div>

<!-- Start::Back to Top-->
<a id="back-to-top" class="rounded-circle" data-bs-toggle="tooltip" title="Back to Top" href="javascript:void(0)">
    <i class="fa fa-chevron-up"></i>
</a>
<!-- End::Back to Top-->

<!-- Start::Terms & Policy Modal -->
@include('frontend.layouts.privacy-policy')
<!-- End::Terms & Policy Modal -->

<!-- Start::Disclaimer Modal -->
@include('frontend.layouts.disclaimer')
<!-- End::Disclaimer Modal -->

<!-- JavaScript -->
<script src="{{ asset('frontend/') }}/vendor/jquery/jquery.min.js"></script>
<script src="{{ asset('frontend/') }}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Easing -->
<script src="{{ asset('frontend/') }}/vendor/jquery.easing/jquery.easing.min.js"></script>
<!-- Appear -->
<script src="{{ asset('frontend/') }}/vendor/jquery.appear/jquery.appear.min.js"></script>
<!-- Images Loaded -->
<script src="{{ asset('frontend/') }}/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<!-- Counter -->
<script src="{{ asset('frontend/') }}/vendor/jquery.countTo/jquery.countTo.min.js"></script>
<!-- Parallax Bg -->
<script src="{{ asset('frontend/') }}/vendor/parallaxie/parallaxie.min.js"></script>
<!-- Typed -->
<script src="{{ asset('frontend/') }}/vendor/typed/typed.min.js"></script>
<!-- Owl Carousel -->
<script src="{{ asset('frontend/') }}/vendor/owl.carousel/owl.carousel.min.js"></script>
<!-- isotope Portfolio Filter -->
<script src="{{ asset('frontend/') }}/vendor/isotope/isotope.pkgd.min.js"></script>
<!-- Magnific Popup -->
<script src="{{ asset('frontend/') }}/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Style Switcher -->
<script src="{{ asset('frontend/') }}/js/switcher.min.js"></script>
<!-- Custom Script -->
<script src="{{ asset('frontend/') }}/js/theme.js"></script>

<script>
    @if(!config('app.debug'))
        // Disable right-click
        document.addEventListener('contextmenu', function (e) {
            e.preventDefault();
        });

        // Disable copy, cut & paste
        document.addEventListener('copy', function (e) {
            e.preventDefault();
        });

        document.addEventListener('cut', function (e) {
            e.preventDefault();
        });

        document.addEventListener('paste', function (e) {
            e.preventDefault();
        });


        // Disable Ctrl+U
        document.addEventListener('keydown', function (e) {
            if (e.ctrlKey && e.key === 'u') {
                e.preventDefault();
            }
        });

        // Disable Ctrl+Shift+I
        document.addEventListener('keydown', function (e) {
            if ((e.ctrlKey || e.metaKey) && e.shiftKey && e.key === 'I') {
                e.preventDefault();
            }
        });
    @endif
</script>
@stack('script')
@routes
</body>
</html>

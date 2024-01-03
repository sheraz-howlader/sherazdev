<section id="portfolio" class="section bg-dark-2">
    <div class="container px-lg-5">
        <!-- Heading -->
        <div class="position-relative d-flex text-center mb-5">
            <h2 class="text-24 text-white-50 opacity-1 text-uppercase fw-600 w-100 mb-0">Portfolio</h2>
            <p class="text-9 text-white fw-600 position-absolute w-100 align-self-center lh-base mb-0">My Work
                <span
                    class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span>
            </p>
        </div>
        <!-- Heading end-->

        <!-- Filter Menu -->
        <ul class="portfolio-menu nav nav-tabs nav-light justify-content-center border-bottom-0 mb-5">
            <li class="nav-item"><a data-filter="*" class="nav-link active" href="">All</a></li>
            <li class="nav-item"><a data-filter=".design" href="" class="nav-link">Design</a></li>
            <li class="nav-item"><a data-filter=".brand" href="" class="nav-link">Brand</a></li>
            <li class="nav-item"><a data-filter=".photos" href="" class="nav-link">Photos</a></li>
        </ul>
        <!-- Filter Menu end -->
        <div class="portfolio popup-ajax-gallery">
            <div class="row portfolio-filter g-4">
                <div class="col-sm-6 col-lg-4 brand">
                    <div class="portfolio-box rounded">
                        <div class="portfolio-img rounded">
                            <img class="img-fluid d-block"
                                 src="{{ asset('frontend/') }}/images/projects/project-1.jpg" alt="">
                            <div class="portfolio-overlay">
                                <a class="popup-ajax stretched-link"
                                   href="{{ asset('frontend/') }}/ajax/portfolio-ajax-project-dark-1.html"></a>
                                <div class="portfolio-overlay-details">
                                    <h5 class="text-white fw-400">Project Title</h5>
                                    <span class="text-light">Category</span></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 design">
                    <div class="portfolio-box rounded">
                        <div class="portfolio-img rounded">
                            <img class="img-fluid d-block"
                                 src="{{ asset('frontend/') }}/images/projects/project-2.jpg" alt="">
                            <div class="portfolio-overlay">
                                <a class="popup-ajax stretched-link"
                                   href="{{ asset('frontend/') }}/ajax/portfolio-ajax-project-dark-2.html"></a>
                                <div class="portfolio-overlay-details">
                                    <h5 class="text-white fw-400">Project Title</h5>
                                    <span class="text-light">Category</span></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 artwork photos">
                    <div class="portfolio-box rounded">
                        <div class="portfolio-img rounded">
                            <img class="img-fluid d-block"
                                 src="{{ asset('frontend/') }}/images/projects/project-3.jpg" alt="">
                            <div class="portfolio-overlay">
                                <a class="popup-ajax stretched-link"
                                   href="{{ asset('frontend/') }}/ajax/portfolio-ajax-project-dark-3.html"></a>
                                <div class="portfolio-overlay-details">
                                    <h5 class="text-white fw-400">Project Title</h5>
                                    <span class="text-light">Category</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

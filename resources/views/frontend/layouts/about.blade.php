<section id="about" class="section bg-dark-1">
    <div class="container px-lg-5">
        <!-- Heading -->
        <div class="position-relative d-flex text-center mb-5">
            <h2 class="text-24 text-muted opacity-1 text-uppercase fw-600 w-100 mb-0"> About Me </h2>
            <p class="text-9 text-white fw-600 position-absolute w-100 align-self-center lh-base mb-0">
                Know Me More
                <span class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span>
            </p>
        </div>
        <!-- Heading end-->

        <div class="row gy-5">
            <div class="col-lg-7 col-xl-8 text-center text-lg-start">
                <h2 class="text-7 text-white fw-600 mb-3">
                    I'm <span class="text-primary"> {{ $user?->full_name }},</span> a {{ $about_me?->title }}
                </h2>
                <p class="text-white-50"> {{ $about_me?->description }} </p>
            </div>
            <div class="col-lg-5 col-xl-4">
                <div class="ps-lg-4">
                    <ul class="list-style-2 list-style-light text-light">
                        <li><span class="fw-600 me-2">Name:</span> {{ $user?->full_name }} </li>
                        <li><span class="fw-600 me-2">Email:</span><a href="mailto:{{ $user?->email }}"> {{ $user?->email }} </a>
                        </li>
                        <li><span class="fw-600 me-2">Age:</span> {{ $user?->age }} </li>
                        <li class="border-0"><span class="fw-600 me-2">From:</span>Bangladesh</li>
                    </ul>

                    <a href="{{ asset($user?->resume) }}" class="btn btn-primary rounded-pill" target="_blank">
                        Download CV
                    </a>
                </div>
            </div>
        </div>
        <div class="brands-grid separator-border separator-border-light mt-5">
            <div class="row">
                <div class="col-6 col-md-3">
                    <div class="featured-box text-center">
                        <h4 class="text-12 text-white-50 mb-0">
                            <span class="counter" data-from="0" data-to="4">4</span>+
                        </h4>
                        <p class="text-light mb-0"> Years Experience </p>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="featured-box text-center">
                        <h4 class="text-12 text-white-50 mb-0"><span class="counter" data-from="0" data-to="10">10</span>+
                        </h4>
                        <p class="text-light mb-0">Happy Clients</p>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="featured-box text-center">
                        <h4 class="text-12 text-white-50 mb-0"><span class="counter" data-from="0" data-to="22">22</span>+
                        </h4>
                        <p class="text-light mb-0">Projects Done</p>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="featured-box text-center">
                        <h4 class="text-12 text-white-50 mb-0"><span class="counter" data-from="0"
                                                                     data-to="1">1</span></h4>
                        <p class="text-light mb-0">Get Awards</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

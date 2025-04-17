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

            @foreach($categories as $category)
                <li class="nav-item">
                    <a data-filter=".{{ $category->slug }}" href="" class="nav-link"> {{ $category->name }} </a>
                </li>
            @endforeach
        </ul>

        <!-- Filter Menu end -->
        <div class="portfolio popup-ajax-gallery">
            <div class="row portfolio-filter g-4">
                @foreach($portfolios as $portfolio)
                    <div class="col-sm-6 col-lg-4 {{ $portfolio->category->slug }}">
                        <div class="portfolio-box rounded">
                            <div class="portfolio-img rounded">
                                <img class="img-fluid d-block" src="{{ asset($portfolio->thumbnail) }}" alt="{{ $portfolio->title }}">

                                <div class="portfolio-overlay">
                                    <a class="popup-ajax stretched-link"
                                       href="{{ route('home.portfolio', $portfolio->id) }}"></a>
                                    <div class="portfolio-overlay-details">
                                        <h5 class="text-white fw-400"> {{ $portfolio->title }} </h5>
                                        <span class="text-light"> Category </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

{{--                <div class="col-sm-6 col-lg-4 design">--}}
{{--                    <div class="portfolio-box rounded">--}}
{{--                        <div class="portfolio-img rounded">--}}
{{--                            <img class="img-fluid d-block"--}}
{{--                                 src="{{ asset('frontend/') }}/images/projects/project-2.jpg" alt="">--}}
{{--                            <div class="portfolio-overlay">--}}
{{--                                <a class="popup-ajax stretched-link"--}}
{{--                                   href="{{ asset('frontend/') }}/ajax/portfolio-ajax-project-dark-2.html"></a>--}}
{{--                                <div class="portfolio-overlay-details">--}}
{{--                                    <h5 class="text-white fw-400">Project Title</h5>--}}
{{--                                    <span class="text-light">Category</span></div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}

{{--                <div class="col-sm-6 col-lg-4 artwork photos">--}}
{{--                    <div class="portfolio-box rounded">--}}
{{--                        <div class="portfolio-img rounded">--}}
{{--                            <img class="img-fluid d-block"--}}
{{--                                 src="{{ asset('frontend/') }}/images/projects/project-3.jpg" alt="">--}}
{{--                            <div class="portfolio-overlay">--}}
{{--                                <a class="popup-ajax stretched-link"--}}
{{--                                   href="{{ asset('frontend/') }}/ajax/portfolio-ajax-project-dark-3.html"></a>--}}
{{--                                <div class="portfolio-overlay-details">--}}
{{--                                    <h5 class="text-white fw-400">Project Title</h5>--}}
{{--                                    <span class="text-light">Category</span></div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
            </div>
        </div>
    </div>
</section>

@push('script')
    <script>
        $('.popup-ajax').on('click', function (){
            console.log('hello');
        });
    </script>
@endpush

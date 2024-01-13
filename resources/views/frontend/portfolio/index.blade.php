<div class="container ajax-container bg-dark-1">
    <h2 class="text-6 font-weight-600 text-center text-white mb-4"> {{ $portfolio->title }} </h2>
    <div class="row g-4">
        <div class="col-sm-7">
            <div class="owl-carousel owl-theme owl-light single-slideshow" data-autoplay="true" data-loop="true"
                data-nav="true" data-items="1">
                @foreach($portfolio->images as $image)
                    <div class="item">
                        <img class="img-fluid" alt="{{ $portfolio->title }}" src="{{ asset($image->image) }}">
                    </div>
                @endforeach
            </div>
        </div>

        <div class="col-sm-5">
            <h4 class="text-4 font-weight-600 text-white"> Project Info: </h4>

            <p class="text-white-50"> {{ $portfolio->description }} </p>

            <h4 class="text-4 font-weight-600 text-white mt-4">Project Details:</h4>

            <ul class="list-style-2 list-style-light text-white-50">
                <li @class(['d-none' => !$portfolio->client_name])>
                    <span class="text-light font-weight-600 me-2">Client:</span>
                    {{ $portfolio->client_name }}
                </li>
                <li @class(['d-none' => !$portfolio->industry_name])>
                    <span class="text-light font-weight-600 me-2">Industry:</span>
                    {{ $portfolio->industry_name }}
                </li>
                <li @class(['d-none' => !$portfolio->technologies])>
                    <span class="text-light font-weight-600 me-2">Technologies:</span>
                    {{ $portfolio->technologies }}
                </li>
                <li @class(['d-none' => !$portfolio->delivery_date])>
                    <span class="text-light font-weight-600 me-2">Date:</span>
                    {{ $portfolio->delivery_date }}
                </li>
                <li @class(['d-none' => !$portfolio->url])>
                    <span class="text-light font-weight-600 me-2">URL:</span>
                    <a href="{{ $portfolio->url }}" target="_blank"> {{ $portfolio->url }} </a>
                </li>
            </ul>

            <div class="row no-gutters align-items-center">
                <div class="col-auto text-light font-weight-600">Share: </div>
                <div class="col-auto">
                    <ul class="social-icons social-icons-muted">
                        <li class="social-icons-facebook">
                            <a data-toggle="tooltip" href="http://www.facebook.com/" target="_blank" title=""
                                data-original-title="Facebook">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-icons-twitter">
                            <a data-toggle="tooltip" href="http://www.twitter.com/" target="_blank" title=""
                                data-original-title="Twitter">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="social-icons-google">
                            <a data-toggle="tooltip" href="http://www.google.com/" target="_blank" title=""
                                data-original-title="Google">
                                <i class="fab fa-google"></i>
                            </a>
                        </li>
                        <li class="social-icons-instagram">
                            <a data-toggle="tooltip" href="http://www.instagram.com/" target="_blank" title=""
                                data-original-title="Instagram">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                        <li class="social-icons-email">
                            <a data-toggle="tooltip" href="http://www.instagram.com/" target="_blank" title=""
                                data-original-title="Email">
                                <i class="fas fa-envelope"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

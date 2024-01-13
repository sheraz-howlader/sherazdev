<header id="header" class="sticky-top">
    <!-- Navbar -->
    <nav class="primary-menu navbar navbar-expand-lg navbar-dark bg-dark border-bottom-0">
        <div class="container-fluid position-relative h-100 flex-lg-column ps-3 px-lg-3 pt-lg-3 pb-lg-2">

            <!-- Logo -->
            <a href="index.html" class="mb-lg-auto mt-lg-4">
			<span class="bg-dark-2 rounded-pill p-2 mb-lg-1 d-none d-lg-inline-block">
				<img class="img-fluid rounded-pill d-block" src="{{ asset($user?->profile_picture) }}"
                     title="{{ $user?->full_name }}" alt="{{ $user?->full_name }}">
			</span>
                <h1 class="text-5 text-white text-center mb-0 d-lg-block"> {{ $user?->full_name }} </h1>
            </a>
            <!-- Logo End -->

            <div id="header-nav" class="collapse navbar-collapse w-100 my-lg-auto">
                <ul class="navbar-nav text-lg-center my-lg-auto py-lg-3">
                    <li class="nav-item"><a class="nav-link smooth-scroll active" href="#home">Home</a></li>
                    <li class="nav-item"><a class="nav-link smooth-scroll" href="#about">About Me</a></li>
                    <li class="nav-item"><a class="nav-link smooth-scroll" href="#services">What I Do</a></li>
                    <li class="nav-item"><a class="nav-link smooth-scroll" href="#resume">Resume</a></li>
                    <li class="nav-item"><a class="nav-link smooth-scroll" href="#portfolio">Portfolio</a></li>
                    <li class="nav-item"><a class="nav-link smooth-scroll" href="#testimonial">Testimonial</a></li>
                    <li class="nav-item"><a class="nav-link smooth-scroll" href="#contact">Contact</a></li>
                </ul>
            </div>
            <ul class="social-icons social-icons-muted social-icons-sm mt-lg-auto ms-auto ms-lg-0 d-flex">
                <li class="social-icons-facebook">
                    <a data-bs-toggle="tooltip" title="Facebook" href="https://fb.com/md.sheraz.howlader/"
                       target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                </li>
                <li class="social-icons-twitter">
                    <a data-bs-toggle="tooltip" title="Twitter" href="https://twitter.com/sheraz_howlader"
                       target="_blank">
                        <i class="fab fa-twitter"></i>
                    </a>
                </li>
                <li class="social-icons-github">
                    <a data-bs-toggle="tooltip" title="GitHub" data-bs-placement="top"
                       href="https://github.com/sherazHowlader" target="_blank">
                        <i class="fab fa-github"></i>
                    </a>
                </li>
            </ul>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#header-nav">
                <span></span><span></span><span></span></button>
        </div>
    </nav>
    <!-- Navbar End -->
</header>

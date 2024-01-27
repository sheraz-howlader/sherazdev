<!DOCTYPE html>
<html lang="en">

<head>
    <title> Login | {{ config('app.name') }} </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Gradient Able.">
    <meta name="keywords" content="Bootstrap admin template.">
    <meta name="author" content="sherazdev.com">

    <link rel="icon" href="{{ asset('backend/images/favicon.svg') }}" type="image/x-icon">

    <link rel="stylesheet" href="{{ asset('backend/css/plugins/jsvectormap.min.css') }}">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('backend/css/style.css') }}" id="main-style-link">
    <link rel="stylesheet" href="{{ asset('backend/css/style-preset.css') }}">

    <script src="https://kit.fontawesome.com/7b81d78297.js" crossorigin="anonymous"></script>

    <!--Icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/phosphor-icons@1.4.2/src/css/icons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/feather-icon@0.1.0/css/feather.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/material-icons@1.13.12/iconfont/material-icons.min.css">
</head>


<body data-pc-header="header-1" data-pc-preset="preset-1" data-pc-sidebar-theme="light" data-pc-sidebar-caption="true"
      data-pc-direction="ltr" data-pc-theme="light">

<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>

<div class="auth-main v2">
    <div class="bg-overlay bg-grd-primary"></div>
    <div class="auth-wrapper">
        <div class="auth-sidecontent">
            <div class="auth-sidefooter">
                <span> {{ config('app.name') }}</span>
                <hr class="mb-3 mt-4">
                <div class="row">
                    <div class="col my-1">
                        <p class="m-0"> Made with ♥ <a href="{{ route('public.home') }}"> Sheraz Howlader </a></p>
                    </div>
                    <div class="col-auto my-1">
                        <ul class="list-inline footer-link mb-0">
                            <li class="list-inline-item"><a href="{{ route('public.home') }}">Home</a></li>
                            <li class="list-inline-item">
                                <a href="https://doc.sherazdev.com/" target="_blank">Documentation</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="{{ route('public.home') }}" target="_blank">Support</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="auth-form">
            <div class="card">
                <div class="card-body">
                    <h4 class="f-w-500 mb-1">Login with your email</h4>
                    <p class="mb-4">Don't have an Account?
                        <a href="{{ route('register') }}" class="link-primary ms-1">Create Account</a>
                    </p>

                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="Email Address" name="email">
                        </div>
                        <div class="form-group mb-3">
                            <input type="password" class="form-control" id="floatingInput1" placeholder="Password" name="password">
                        </div>
                        <div class="d-flex mt-1 justify-content-between align-items-center">
                            <div class="form-check">
                                <input class="form-check-input input-primary" type="checkbox" id="customCheckc1" checked>
                                <label class="form-check-label text-muted" for="customCheckc1">Remember me?</label>
                            </div>
                            <a href="{{ route('password.request') }}">
                                <h6 class="text-secondary f-w-400 mb-0">Forgot Password?</h6>
                            </a>
                        </div>
                        <div class="d-grid mt-4">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>

                    <div class="saprator my-3">
                        <span> Or continue with </span>
                    </div>

                    <div class="text-center">
                        <ul class="list-inline mx-auto mt-3 mb-0">
                            <li class="list-inline-item">
                                <a href="https://www.facebook.com/" class="avtar avtar-s rounded-circle bg-facebook" target="_blank">
                                    <i class="fab fa-facebook-f text-white"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://twitter.com/" class="avtar avtar-s rounded-circle bg-twitter" target="_blank">
                                    <i class="fab fa-twitter text-white"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://myaccount.google.com/"
                                   class="avtar avtar-s rounded-circle bg-googleplus" target="_blank">
                                    <i class="fab fa-google text-white"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="{{ asset('backend/js/plugins/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/simplebar.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/fonts/custom-font.js') }}"></script>
<script type="6c705b80c5ee6d73b3f92550-text/javascript" src="{{ asset('backend/js/pcoded.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/feather.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/rocket-loader.min.js') }}"
        data-cf-settings="6c705b80c5ee6d73b3f92550-|49" defer></script>
</body>

</html>

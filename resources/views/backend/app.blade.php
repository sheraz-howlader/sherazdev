<!DOCTYPE html>
<html lang="en">

<head>
    <title> Admin :: {{ $setting->meta_title }} </title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="{{ $setting->meta_description }}">
    <meta name="keywords" content="{{ $setting->meta_keyword }}">
    <meta name="author" content="sherazdev.com">

    <link rel="icon" href="{{ asset($setting->icon) }}" type="image/x-icon">

    <link rel="stylesheet" href="{{ asset('backend/css/plugins/jsvectormap.min.css') }}">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('backend/css/style.css') }}" id="main-style-link">
    <link rel="stylesheet" href="{{ asset('backend/css/style-preset.css') }}">

    <script src="https://kit.fontawesome.com/7b81d78297.js" crossorigin="anonymous"></script>

    <!--Icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/phosphor-icons@1.4.2/src/css/icons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/feather-icon@0.1.0/css/feather.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/material-icons@1.13.12/iconfont/material-icons.min.css">

    @stack('styles')
</head>


<body data-pc-header="header-1" data-pc-preset="preset-1" data-pc-sidebar-theme="light" data-pc-sidebar-caption="true"
      data-pc-direction="ltr" data-pc-theme="light">

<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>

@include('backend.sidebar')

@include('backend.header')

<div class="pc-container">
    <div class="pc-content">

        <div class="page-header">
            <div class="page-block card mb-0">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="page-header-title border-bottom pb-2 mb-2">
                                <h4 class="mb-0">
                                    @stack('section_name')
                                    @stack('action_name')
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="">
                                        <i class="ph ph-house"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href=""> @stack('section_name') </a>
                                </li>
                                <li class="breadcrumb-item" aria-current="page"> @stack('action_name') </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                @include('backend.validation_error')
            </div>
        </div>

        @yield('contents')
    </div>
</div>

<footer class="pc-footer">
    <div class="footer-wrapper container-fluid">
        <div class="row">
            <div class="col-sm-6 my-1">
                <p class="m-0"> Made with love
                    <i class="fas fa-heart text-danger"></i>
                    <a href="https://sherazdev.com" target="_blank"> {{ config('app.name') }} </a>
                </p>
            </div>
        </div>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/simplebar.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/fonts/custom-font.js') }}"></script>
<script type="6c705b80c5ee6d73b3f92550-text/javascript" src="{{ asset('backend/js/pcoded.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/plugins/feather.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('backend/js/rocket-loader.min.js') }}"
        data-cf-settings="6c705b80c5ee6d73b3f92550-|49" defer></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@stack('scripts')
@routes
</body>

</html>

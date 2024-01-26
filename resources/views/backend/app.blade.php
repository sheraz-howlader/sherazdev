<!DOCTYPE html>
<html lang="en">

<head>
    <title> {{ config('app.name')  }} </title>

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

@include('backend.sidebar')

@include('backend.header')

<div class="pc-container">
    <div class="pc-content">
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

<nav class="pc-sidebar">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="" class="b-brand text-primary">
                <span class="logo-lg"> {{ config('app.name')  }} </span>
            </a>
        </div>
        <div class="navbar-content">
            <ul class="pc-navbar">
                <li class="pc-item pc-caption">
                    <label> Menus </label>
                </li>

                <li class="pc-item pc-hasmenu pc-trigger active">
                    <a href="#" class="pc-link">
                        <span class="pc-micon">
                            <i class="ph ph-gauge"></i>
                        </span>
                        <span class="pc-mtext"> {{ config('app.name')  }} </span>
                        <span class="pc-arrow">
                            <i data-feather="chevron-right"></i>
                        </span>
                    </a>
                    <ul class="pc-submenu">
                        <li class="pc-item">
                            <a href="{{ route('admin.about-me.create') }}" class="pc-link"> About Me </a>
                        </li>

                        <li class="pc-item pc-hasmenu {{ request()->is('service/*') ? 'pc-trigger' : '' }}">
                            <a href="#" class="pc-link"> Service
                                <span class="pc-arrow">
                                    <i data-feather="chevron-right"></i>
                                </span>
                            </a>
                            <ul class="pc-submenu active" style="display: {{ request()->is('service/*') ? 'block' : 'none' }};" >
                                <li class="pc-item">
                                    <a class="pc-link" href="{{ route('admin.service.create') }}"> Add </a>
                                </li>
                                <li class="pc-item {{ Route::is('admin.service.edit') ? 'active' : '' }}">
                                    <a class="pc-link" href="{{ route('admin.service.index') }}"> List </a>
                                </li>
                            </ul>
                        </li>

                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Education </a>
                        </li>
                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Experience </a>
                        </li>
                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Skill </a>
                        </li>
                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Portfolio </a>
                        </li>
                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Testimonial </a>
                        </li>
                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Setting </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

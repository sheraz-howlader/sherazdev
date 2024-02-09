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

                        <li class="pc-item pc-hasmenu {{ request()->is('portal/service*') ? 'pc-trigger' : '' }}">
                            <a href="#" class="pc-link"> Service
                                <span class="pc-arrow">
                                    <i data-feather="chevron-right"></i>
                                </span>
                            </a>
                            <ul class="pc-submenu active" style="display: {{ request()->is('portal/service/*') ? 'block' : 'none' }};" >
                                <li class="pc-item">
                                    <a class="pc-link" href="{{ route('admin.service.create') }}"> Add </a>
                                </li>
                                <li class="pc-item {{ Route::is('admin.service.edit') ? 'active' : '' }}">
                                    <a class="pc-link" href="{{ route('admin.service.index') }}"> List </a>
                                </li>
                            </ul>
                        </li>

                        <li class="pc-item pc-hasmenu {{ request()->is('portal/education*') ? 'pc-trigger' : '' }}">
                            <a href="#" class="pc-link"> Education
                                <span class="pc-arrow">
                                    <i data-feather="chevron-right"></i>
                                </span>
                            </a>
                            <ul class="pc-submenu active" style="display: {{ request()->is('portal/education/*') ? 'block' : 'none' }};" >
                                <li class="pc-item">
                                    <a class="pc-link" href="{{ route('admin.education.create') }}"> Add </a>
                                </li>
                                <li class="pc-item {{ Route::is('admin.education.edit') ? 'active' : '' }}">
                                    <a class="pc-link" href="{{ route('admin.education.index') }}"> List </a>
                                </li>
                            </ul>
                        </li>

                        <li class="pc-item pc-hasmenu {{ request()->is('portal/experience*') ? 'pc-trigger' : '' }}">
                            <a href="#" class="pc-link"> Experience
                                <span class="pc-arrow">
                                    <i data-feather="chevron-right"></i>
                                </span>
                            </a>
                            <ul class="pc-submenu active" style="display: {{ request()->is('portal/experience/*') ? 'block' : 'none' }};" >
                                <li class="pc-item">
                                    <a class="pc-link" href="{{ route('admin.experience.create') }}"> Add </a>
                                </li>
                                <li class="pc-item {{ Route::is('admin.experience.edit') ? 'active' : '' }}">
                                    <a class="pc-link" href="{{ route('admin.experience.index') }}"> List </a>
                                </li>
                            </ul>
                        </li>

                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Skill </a>
                        </li>

                        <li class="pc-item pc-hasmenu {{ request()->is('portal/portfolio*') ? 'pc-trigger' : '' }}">
                            <a href="#" class="pc-link"> Portfolio
                                <span class="pc-arrow">
                                    <i data-feather="chevron-right"></i>
                                </span>
                            </a>
                            <ul class="pc-submenu active" style="display: {{ request()->is('portal/portfolio/*') ? 'block' : 'none' }};" >
                                <li class="pc-item">
                                    <a class="pc-link" href="{{ route('admin.portfolio.create') }}"> Add </a>
                                </li>
                                <li class="pc-item {{ Route::is('admin.portfolio.edit') ? 'active' : '' }}">
                                    <a class="pc-link" href="{{ route('admin.portfolio.index') }}"> List </a>
                                </li>
                            </ul>
                        </li>

                        <li class="pc-item">
                            <a class="pc-link" href="./dashboard/index-affiliate.html"> Testimonial </a>
                        </li>
                        <li class="pc-item">
                            <a class="pc-link" href="{{ route('admin.setting.create') }}"> Setting </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

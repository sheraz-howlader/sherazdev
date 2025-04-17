<section id="resume" class="section bg-dark-1">
    <div class="container px-lg-5">
        <!-- Heading -->
        <div class="position-relative d-flex text-center mb-5">
            <h2 class="text-24 text-muted opacity-1 text-uppercase fw-600 w-100 mb-0">Summary</h2>
            <p class="text-9 text-white fw-600 position-absolute w-100 align-self-center lh-base mb-0">
                Resume<span
                    class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span>
            </p>
        </div>
        <!-- Heading end-->

        <div class="row gx-5">
            <!-- My Education -->
            <div class="col-md-6">
                <h2 class="text-6 text-white fw-600 mb-4">My Education</h2>
                @foreach($educations as $education)
                    <div class="bg-dark rounded p-4 mb-4">
                        <p class="badge bg-danger text-2 fw-400"> {{ $education->session_year }} </p>
                        <h3 class="text-5 text-white"> {{ $education->department }} </h3>
                        <p class="text-primary"> {{ $education->institute_name }} </p>
                    </div>
                @endforeach
            </div>

            <!-- My Experience -->
            <div class="col-md-6">
                <h2 class="text-6 text-white fw-600 mb-4">My Experience</h2>
                @foreach($experiences as $experience)
                    <div class="bg-dark rounded p-4 mb-4">
                        <p class="badge bg-danger text-2 fw-400"> {!! $experience->timeline !!} </p>
                        <h3 class="text-5 text-white"> {{ $experience->designation }} </h3>
                        <p class="text-primary"> {{ $experience->company_name }} </p>
                        <p class="text-white-50 mb-0">
                            {{ $experience->description }}
                        </p>
                    </div>
                @endforeach
            </div>
        </div>
        <!-- My Skills -->
        <h2 class="text-6 text-white fw-600 mt-4 mb-4">My Skills</h2>
        <div class="row gx-5">
            <div class="col-md-6">
                <p class="text-light fw-500 text-start mb-2"> Web Design <span class="float-end">75%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> HTML/CSS <span class="float-end">95%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 95%" aria-valuenow="95"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> Bootstrap <span class="float-end">99%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 99%" aria-valuenow="99"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> JavaScript <span class="float-end">87%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 87%" aria-valuenow="87"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> JQuery <span class="float-end">92%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 92%" aria-valuenow="92"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> Vue JS <span class="float-end">80%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>

            <div class="col-md-6">
                <p class="text-light fw-500 text-start mb-2"> PHP <span class="float-end">80%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>

                <p class="text-light fw-500 text-start mb-2"> Laravel <span class="float-end">85%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 85%" aria-valuenow="85"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> Codeigniter <span class="float-end">30%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="30"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> MySQL <span class="float-end">88%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 88%" aria-valuenow="88"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> RESTful Api <span class="float-end">75%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="text-light fw-500 text-start mb-2"> WordPress <span class="float-end">70%</span></p>
                <div class="progress progress-sm bg-dark mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="{{ asset('frontend/sheraz-howlader.pdf') }}"
                   class="btn btn-outline-secondary rounded-pill shadow-none"
                   target="_blank">Download CV
                    <span class="ms-1">
              <i class="fas fa-download"></i>
            </span>
                </a>
            </div>
        </div>
</section>

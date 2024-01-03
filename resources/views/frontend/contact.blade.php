<section id="contact" class="section bg-dark-2">
    <div class="container px-lg-5">
        <!-- Heading -->
        <div class="position-relative d-flex text-center mb-5">
            <h2 class="text-24 text-white-50 opacity-1 text-uppercase fw-600 w-100 mb-0">Contact</h2>
            <p class="text-9 text-white fw-600 position-absolute w-100 align-self-center lh-base mb-0">Get in
                Touch
                <span
                    class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span>
            </p>
        </div>
        <!-- Heading end-->
        <div class="row gy-5">
            <div class="col-md-4 col-xl-3 order-1 order-md-0 text-center text-md-start">
                <h2 class="mb-3 text-5 text-white text-uppercase">Address</h2>
                <p class="text-3 text-light mb-4">H - 248, R - 08,<br>
                    Phaze - 2, Sonadanga.<br>
                    Khulna - 9100</p>
                <p class="text-3 text-light mb-1">
              <span class="text-primary text-4 me-2">
                <i class="fas fa-phone"></i>
              </span>(880) 1728692643
                </p>
                <p class="text-3 text-light mb-1">
              <span class="text-primary text-4 me-2">
                <i class="fas fa-fax"></i>
              </span>(880) 9638555680
                </p>
                <p class="text-3 text-light mb-4">
              <span class="text-primary text-4 me-2">
                <i class="fas fa-envelope"></i>
              </span>mdsherazhowlader@gmail.com
                </p>

                <h2 class="mb-3 text-5 text-white text-uppercase">Follow Me</h2>

                <ul class="social-icons social-icons-muted justify-content-center justify-content-md-start">
                    <li class="social-icons-twitter">
                        <a data-bs-toggle="tooltip" href="https://twitter.com/sheraz_howlader" target="_blank"
                           title="Twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li class="social-icons-facebook">
                        <a data-bs-toggle="tooltip" href="http://fb.com/md.sheraz.howlader/" target="_blank"
                           title="Facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </li>
                    <li class="social-icons-google">
                        <a data-bs-toggle="tooltip" href="https://www.google.com/search?q=sheraz+howlader"
                           target="_blank" title="Google">
                            <i class="fab fa-google"></i>
                        </a>
                    </li>
                    <li class="social-icons-github">
                        <a data-bs-toggle="tooltip" href="https://github.com/sherazHowlader" target="_blank"
                           title="GitHub">
                            <i class="fab fa-github"></i>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-md-8 col-xl-9 order-0 order-md-1">

                <h2 class="mb-3 text-5 text-white text-uppercase text-center text-md-start"> Send me a note </h2>

                <form id="contact-form" class="form-dark" action="{{ route('mail.send') }}" method="post">
                    @csrf
                    <div class="row g-4">
                        <div class="col-xl-6">
                            <input name="name" type="text" class="form-control" placeholder="Name">
                        </div>
                        <div class="col-xl-6">
                            <input name="email" type="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="col">
                            <textarea name="form_message" class="form-control" rows="5"
                                      placeholder="Tell us more about your needs........"></textarea>
                        </div>
                    </div>
                    <p class="text-center mt-4 mb-0">
                        <button id="submit-btn" class="btn btn-primary rounded-pill d-inline-flex" type="submit">
                            Send Message
                        </button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</section>

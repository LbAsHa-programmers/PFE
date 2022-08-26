<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>M3alem | Acceuil</title>
    <link rel="stylesheet" href="../css/stylef.css">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../assets/all.min.css">
</head>
<body>
<script
        src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
        crossorigin="anonymous"></script>
<script>
    $(function () {
        $(".toggle").on("click", function () {
            if ($(".item").hasClass("active")) {
                $(".item").removeClass("active");
            } else {
                $(".item").addClass("active");
            }
        });
    });
</script>
  <header>
    <nav>
      <ul class="menu">
        <li class="logo"><a href="../jsp/acceuil.jsp"><span class="logom"><img src="../images/clipart14950590.png"><span id="kk">M3alm</span></span></a></li>
       <%-- <li class="item button"><a href="">Log In</a></li>--%>
         <li class="item button secondary"><a href="../jsp/pre-signup.jsp">se connecter</a></li>
        <li class="toggle"><span class="bars"></span></li>
      </ul>
    </nav>
  </header>

<%--<input class="menu-icon" type="checkbox" id="menu-icon" name="menu-icon"/>--%>
<%--<label for="menu-icon"></label>--%>
<%--<nav class="nav">--%>
<%--    <ul class="pt-5">--%>
<%--        <li><a href="#">Work</a></li>--%>
<%--        <li><a href="#">Studio</a></li>--%>
<%--        <li><a href="#">News</a></li>--%>
<%--        <li><a href="#">Contact</a></li>--%>
<%--    </ul>--%>
<%--</nav>--%>

<div class="slideshow-container">
    <div class="slider">
        <div class="slide">
            <img src="../images/88.jpg" style="width:100%">
        </div>

        <div class="slide">
            <img src="../images/01.jpg" style="width:100%">
        </div>

        <div class="slide">
            <img src="../images/77.jpg" style="width:100%">
        </div>
        <div class="slide">
            <img src="../images/44.jpg" style="width:100%">
        </div>
        <div class="slide">
            <img src="../images/55.jpg" style="width:100%">
        </div>
        <div class="slide">
            <img src="../images/11.jpg" style="width:100%">
        </div>
    </div>

    <a class="prev">&#10094;</a>
    <a class="next">&#10095;</a>
</div>
<section>
    <div id="wrapper">
        <div id="carousel">
            <div id="content">
                <div class="card">
                    <img src="../images/pexels-rodolfo-quiros-2219024.jpg">
                </div>

                <div class="card">
                    <img src="../images/image2.jpg">
                </div>

                <div class="card">
                    <img src="../images/telechargement (2).jpeg">
                </div>

                <div class="card">
                    <img src="../images/pexels-life-of-pix-8092.jpg">
                </div>

                <div class="card">
                    <img src="../images/images (3).jpeg">
                </div>

                <div class="card">
                    <img src="../images/images (5).jpeg">
                </div>

                <div class="card">
                    <img src="../images/images (6).jpeg">
                </div>

                <div class="card">
                    <img src="../images/images (1).jpeg">
                </div>
            </div>
        </div>
        <button id="prev">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path fill="none" d="M0 0h24v24H0V0z"/>
                <path d="M15.61 7.41L14.2 6l-6 6 6 6 1.41-1.41L11.03 12l4.58-4.59z"/>
            </svg>
        </button>
        <button id="next">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path fill="none" d="M0 0h24v24H0V0z"/>
                <path d="M10.02 6L8.61 7.41 13.19 12l-4.58 4.59L10.02 18l6-6-6-6z"/>
            </svg>
        </button>
    </div>
</section>
<!-- <div class="about-section">
  <h3 class="about-title">About</h3>
  <div class="content">
    <div>
      <img src="images/clipart1495059(1).png" alt="">
      <img src="images/az.png"alt="" class="about-img">
      <P>LM3ALM App is an application designed to help the user find a worker in a specific specialty that meets his needs at an appropriate price, On the other hand, it helps a LM3ALM to find new potential clients</P>
      <P>LM3ALM App is an application designed to help the user find a worker in a specific specialty that meets his needs at an appropriate price, On the other hand, it helps a LM3ALM to find new potential clients</P>
    </div>


  </div>
</div> -->
<div id="as" class="as">
    <section>
        <div class="row2">
            <h2 class="section-heading">Our Services</h2>
        </div>
        <div class="row2">
            <div class="column2">
                <div class="card2">
                    <div class="icon-wrapper">
                        <i class="fas fa-hammer"></i>
                    </div>
                    <h3>Ease of use</h3>
                    <p>
                        Raising problems on the platform and finding solutions by specialists in the field in which you face the problem .
                    </p>
                </div>
            </div>
            <div class="column2">
                <div class="card2">
                    <div class="icon-wrapper">
                        <i class="fas fa-brush"></i>
                    </div>
                    <h3>FREE IN SERVICE.</h3>
                    <p>
                        Free in the service of both the teacher and the client, and it is possible to find new clients interested in your specialization in order to benefit from your services.
                    </p>
                </div>
            </div>
            <div class="column2">
                <div class="card2">
                    <div class="icon-wrapper">
                        <i class="fas fa-wrench"></i>
                    </div>
                    <h3>We are here for your daily needs.</h3>
                    <p>
                        To meet your needs ranging from domestic to Professional, we have made solutions available to you on our site, which will allow you to benefit from diversified services in different categories. (foreign language courses, IT facilities, sports coaching, gardening, carpentry, plumbing, etc.)
                    </p>
                </div>
            </div>
            <div class="column2">
                <div class="card2">
                    <div class="icon-wrapper">
                        <i class="fas fa-truck-pickup"></i>
                    </div>
                    <h3>Always available for you.</h3>
                    <p>
                        Call our collaborators and they will be there. Complete home repairs. Fair and honest handyman. We carry out small and large repairs. High quality manufacturing at unbeatable prices, Fast service you can count on. Quality repair, fair price
                    </p>
                </div>
            </div>
            <div class="column2">
                <div class="card2">
                    <div class="icon-wrapper">
                        <i class="fas fa-broom"></i>
                    </div>
                    <h3>Help is now at hand.</h3>
                    <p>
                        Now all your DIY at your fingertips, just consult our platform and you will find what you are looking for more easily, we have provided you with the contact details of qualified honest and professional handymen who will meet all your needs.
                    </p>
                </div>
            </div>
            <div class="column2">
                <div class="card2">
                    <div class="icon-wrapper">
                        <i class="fas fa-plug"></i>
                    </div>
                    <h3>Communicate with the client and communicate with the client</h3>
                    <p>
                       We collaborate with individuals and also with professionals and We connect service seekers with service providers close to home .
                    </p>
                </div>
            </div>
        </div>
    </section>
</div>


<div class="body">
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>company</h4>
                    <ul>
                        <li><a href="#">about us</a></li>
                        <li><a href="#as">our services</a></li>
                        <li><a href="#">privacy policy</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h4>online </h4>
                    <ul>
                        <li><a href="https://youtu.be/2QOHotEQWVg">watch</a></li>
                        <li><a href="abdessamoia63@gmail.com">bag</a></li>
                        <li><a href="#">shoes</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                        <a href="https://www.facebook.com/M3ALM-SiteWeb-109140491826872"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.instagram.com/m3alm_web1/?igshid=YmMyMTA2M2Y%3D"><i class="fab fa-instagram"> </i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>


<script>
    // let slideIndex = [1, 1];
    // let slideId = ["mySlides1", "mySlides2"]
    // showSlides(1, 0);
    // showSlides(1, 1);

    // function plusSlides(n, no) {
    //   showSlides(slideIndex[no] += n, no);
    // }

    // function showSlides(n, no) {
    //   let i;
    //   let x = document.getElementsByClassName(slideId[no]);
    //   if (n > x.length) { slideIndex[no] = 1 }
    //   if (n < 1) { slideIndex[no] = x.length }
    //   for (i = 0; i < x.length; i++) {
    //     x[i].style.display = "none";
    //   }
    //   x[slideIndex[no] - 1].style.display = "block";
    // }
    // src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    //     integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
    //     crossorigin="anonymous">
    //     <script>
    //     $(function() {
    //     $(".toggle").on("click", function() {
    //         if ($(".item").hasClass("active")) {
    //             $(".item").removeClass("active");
    //         } else {
    //             $(".item").addClass("active");
    //         }
    //     });
    // });


    const slider = document.querySelector(".slider");
    const nextBtn = document.querySelector(".next");
    const prevBtn = document.querySelector(".prev");
    const slides = document.querySelectorAll(".slide");
    const nbrOfslides = slides.length;
    var slideNumber = 0;
    nextBtn.addEventListener("click", () => {
        slides.forEach((slide) => {
            slide.classList.remove("active");
        });

        slideNumber++;
        if (slideNumber > (nbrOfslides - 1)) {
            slideNumber = 0;

        }
        slides[slideNumber].classList.add("active");

    });
    prevBtn.addEventListener("click", () => {
        slides.forEach((slide) => {
            slide.classList.remove("active");
        });

        slideNumber--;
        if (slideNumber < 0) {
            slideNumber = nbrOfslides - 1;

        }
        slides[slideNumber].classList.add("active");

    });
    var a = 0;
    var repeater = () => {
        if (a >= nbrOfslides) {
            a = 0;
            slides.forEach((slide) => {
                slide.classList.remove("active");
            });
            slides[slideNumber].classList.add("active");
            return;

        } else {
            if (a = 0) {
                a = 1;
                slides.forEach((slide) => {
                    slide.classList.remove("active");
                });
                slides[1].classList.add("active");
                return;

            } else {
                setInterval(function () {

                    slides.forEach((slide) => {
                        slide.classList.remove("active");
                    });
                    // slideIcons.forEach((slideIcon)=>{
                    //   //slideIcon.classList.remove("active");
                    // });
                    slideNumber++;
                    if (slideNumber > (nbrOfslides - 1)) {
                        slideNumber = 0;

                    }
                    slides[slideNumber].classList.add("active");
                    //slideIcons[slideNumber].classList.add("active");
                }, 3000);
            }
        }
    }
    repeater();


    const gap = 16;

    const carousel = document.getElementById("carousel"),
        content = document.getElementById("content"),
        next = document.getElementById("next"),
        prev = document.getElementById("prev");

    next.addEventListener("click", e => {
        carousel.scrollBy(width + gap, 0);
        if (carousel.scrollWidth !== 0) {
            prev.style.display = "flex";
        }
        if (content.scrollWidth - width - gap <= carousel.scrollLeft + width) {
            next.style.display = "none";
        }
    });
    prev.addEventListener("click", e => {
        carousel.scrollBy(-(width + gap), 0);
        if (carousel.scrollLeft - width - gap <= 0) {
            prev.style.display = "none";
        }
        if (!content.scrollWidth - width - gap <= carousel.scrollLeft + width) {
            next.style.display = "flex";
        }
    });

    let width = carousel.offsetWidth;
    window.addEventListener("resize", e => (width = carousel.offsetWidth));
</script>

</body>

</html>
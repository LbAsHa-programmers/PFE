<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="/Projet_PFE/css/login.css" />
        
        <link rel="stylesheet" href="/Projet_PFE/assets/all.min.css" />
        <%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Customer | Login</title>
    </head>
    <style>
        .body {
            position: absolute;
            width: 100%;
        }
        .fa-retour-acceuil {
            position: absolute;
            top: 30px;
            left: 50px;
            font-size: 50px;
            color: #066868;
        }
        .a-retour-acceuil {
            position: absolute;
            cursor: pointer;
            z-index: 100000;
        }
    </style>
    <body>

        <a class="a-retour-acceuil" href="/Projet_PFE/jsp/acceuil.jsp"><i class="fa-solid fa-circle-arrow-left fa-retour-acceuil"></i></a>
        <div class="login-root">
            <div
                class="box-root flex-flex flex-direction--column"
                style="min-height: 100vh; flex-grow: 1;"
                >
                <div class="loginbackground padding-top--64" >
                    <div class="loginbackground-gridContainer">
                        <div
                            class="box-root flex-flex"
                            style="grid-area: top / start / 8 / end"
                            >
                            <div
                                class="box-root"
                                style="
                                background-image: linear-gradient(
                                white 0%,
                                rgb(247, 250, 252) 33%
                                );
                                flex-grow: 1;
                                "
                                ></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 4 / 2 / auto / 5">
                            <div
                                class="box-root box-divider--light-all-2 animationLeftRight tans3s"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div
                            class="box-root flex-flex"
                            style="grid-area: 6 / start / auto / 2"
                            >
                            <div
                                class="box-root box-background--blue800"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div
                            class="box-root flex-flex"
                            style="grid-area: 7 / start / auto / 4"
                            >
                            <div
                                class="box-root box-background--blue animationLeftRight"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 8 / 4 / auto / 6">
                            <div
                                class="box-root box-background--gray100 animationLeftRight tans3s"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div
                            class="box-root flex-flex"
                            style="grid-area: 2 / 15 / auto / end"
                            >
                            <div
                                class="box-root box-background--cyan200 animationRightLeft tans4s"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div
                            class="box-root flex-flex"
                            style="grid-area: 3 / 14 / auto / end"
                            >
                            <div
                                class="box-root box-background--blue animationRightLeft"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div
                            class="box-root flex-flex"
                            style="grid-area: 4 / 17 / auto / 20"
                            >
                            <div
                                class="box-root box-background--gray100 animationRightLeft tans4s"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                        <div
                            class="box-root flex-flex"
                            style="grid-area: 5 / 14 / auto / 17"
                            >
                            <div
                                class="box-root box-divider--light-all-2 animationRightLeft tans3s"
                                style="flex-grow: 1"
                                ></div>
                        </div>
                    </div>
                </div>
                <div
                    class="box-root padding-top--24 flex-flex flex-direction--column"
                    style="flex-grow: 1; z-index: 9"
                    >
                    <div style="margin-top: 50px;"
                         class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center"
                         >
                        <h1>
                            <a style="text-decoration: none; color: black;" href="#" rel="dofollow">Login</a>
                        </h1>
                    </div>

                </div>
                <div class="formbg-outer" style="position: relative;">
                    <div class="formbg">
                        <div class="formbg-inner padding-horizontal--48">
                            <span class="padding-bottom--15">Sign in to your account</span>
                            <form id="stripe-login" method="GET" action="/Projet_PFE/logincustomer">
                                <div class="field padding-bottom--24">
                                    <label for="email">Email</label>
                                    <input id="email" type="email" name="email" />
                                </div>
                                <div class="field padding-bottom--24">
                                    <div class="grid--50-50">
                                        <label for="password">Password</label>
                                        <div class="reset-pass">
                                            <a href="#">Forgot your password?</a>
                                        </div>
                                    </div>
                                    <input id="password" type="password" name="password" />
                                </div>
                                 <%
                                    if(request.getAttribute("msg")!=null){
                                %>
                                <h3 style="color: red"> <%=request.getAttribute("msg")%></h3><%}%>
                                <div
                                    class="field field-checkbox padding-bottom--24 flex-flex align-center"
                                    >
                                    <label for="checkbox">
                                        <input id="checkbox" type="checkbox" name="checkbox" /> Stay signed in
                                    </label>
                                </div>
                                <div class="field padding-bottom--24">
                                    <input type="submit" name="submit" value="Continue" />
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="footer-link padding-top--24">
                        <span>Don't have an account? <a href="/Projet_PFE/jsp/pre-signup.jsp">Sign up</a></span>
                        <div
                            class="listing padding-top--24 padding-bottom--24 flex-flex center-center"
                            >
                            <span><a href="#">&copy;Lbasha</a></span>
                            <span><a href="#">Contact</a></span>
                            <span><a href="#">Privacy & terms</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

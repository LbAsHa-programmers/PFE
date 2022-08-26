<%--
  Created by IntelliJ IDEA.
  User: younes
  Date: 22/06/03
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/signup.css"/>
    <link rel="stylesheet" href="../assets/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>M3alem | Sign up</title>
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
<a class="a-retour-acceuil" href="../jsp/pre-signup.jsp"><i class="fa-solid fa-circle-arrow-left fa-retour-acceuil"></i></a>
<div class="login-root">
    <div
            class="box-root flex-flex flex-direction--column"
            style="min-height: 100vh; flex-grow: 1"
    >
        <div class="loginbackground box-background--white padding-top--64">
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
            <div
                    class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center"
                    style="margin-top: 50px;"
            >
                <h1>
                    <a style="color: black;" href="#" rel="dofollow">Sign up</a>
                </h1>
            </div>
            <div class="formbg-outer">
                <div class="formbg">
                    <div class="formbg-inner padding-horizontal--48">
                        <span class="padding-bottom--15">Sign up to your account</span>
                        <form id="stripe-login" method="post" action="/Projet_PFE/customersignup">
                            <!--                            <div class="field padding-bottom&#45;&#45;24">-->
<%--                            <div class="container">--%>
<%--                                <div class="picture-container">--%>
<%--                                    <div class="picture">--%>
<%--                                        <img src="https://lh3.googleusercontent.com/LfmMVU71g-HKXTCP_QWlDOemmWg4Dn1rJjxeEsZKMNaQprgunDTtEuzmcwUBgupKQVTuP0vczT9bH32ywaF7h68mF-osUSBAeM6MxyhvJhG6HKZMTYjgEv3WkWCfLB7czfODidNQPdja99HMb4qhCY1uFS8X0OQOVGeuhdHy8ln7eyr-6MnkCcy64wl6S_S6ep9j7aJIIopZ9wxk7Iqm-gFjmBtg6KJVkBD0IA6BnS-XlIVpbqL5LYi62elCrbDgiaD6Oe8uluucbYeL1i9kgr4c1b_NBSNe6zFwj7vrju4Zdbax-GPHmiuirf2h86eKdRl7A5h8PXGrCDNIYMID-J7_KuHKqaM-I7W5yI00QDpG9x5q5xOQMgCy1bbu3St1paqt9KHrvNS_SCx-QJgBTOIWW6T0DHVlvV_9YF5UZpN7aV5a79xvN1Gdrc7spvSs82v6gta8AJHCgzNSWQw5QUR8EN_-cTPF6S-vifLa2KtRdRAV7q-CQvhMrbBCaEYY73bQcPZFd9XE7HIbHXwXYA=s200-no"--%>
<%--                                             class="picture-src" id="wizardPicturePreview" title="">--%>
<%--                                        <input name="profile-img" type="file" id="wizard-picture" class="">--%>
<%--                                    </div>--%>
<%--                                    <h6 class="">Choose Picture</h6>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <!--                            </div>-->
                            <div class="field padding-bottom--24">
                               <label for="First Name">First Name :</label>
                                <input id="FuLL Name" type="text" name="FirstName"/>
-                            </div>
<%--                            <div class="field padding-bottom--24">--%>
<%--                                <label for="Last Name">Last Name :</label>--%>
<%--                                <input id="Last Name" type="text" name="LastName"/>--%>
<%--                            </div>--%>
<%--                            <div class="field padding-bottom--24">--%>
<%--                                <label>Your Specialty :</label>--%>
<%--                                <select id="field padding-bottom--24">--%>
<%--                                    <option value="selected your specialty" selected>--%>
<%--                                        selected your specialty--%>
<%--                                    </option>--%>
<%--                                    <option value="electrician">electrician</option>--%>
<%--                                    <option value="blacksmith">blacksmith</option>--%>
<%--                                    <option value="carpenter">carpenter</option>--%>
<%--                                    <option value="Dressmaker">Dressmaker</option>--%>
<%--                                    <option value="Chauffeur Driver">Chauffeur Driver</option>--%>
<%--                                    <option value="Glass-maker">Glass-maker</option>--%>
<%--                                    <option value="Hair Stylist (Barber)">--%>
<%--                                        Hair Stylist (Barber)--%>
<%--                                    </option>--%>
<%--                                    <option value="Construction worker">--%>
<%--                                        Construction worker--%>
<%--                                    </option>--%>
<%--                                    <option value="Translator">Translator</option>--%>
<%--                                    <option value="Graphics Designer">--%>
<%--                                        Graphics Designer--%>
<%--                                    </option>--%>
<%--                                    <option value="Optician">Optician</option>--%>
<%--                                    <option value="Confectioner">Confectioner</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
<%--                            <div class="field padding-bottom--24">--%>
<%--                                <label>City :</label>--%>
<%--                                <select id="select-city">--%>
<%--                                    <option value="selected your city" selected>--%>
<%--                                        selected your city--%>
<%--                                    </option>--%>
<%--                                    <option value="Casablanca">Casablanca</option>--%>
<%--                                    <option value="Rabat">Rabat</option>--%>
<%--                                    <option value="Marrakech">Marrakech</option>--%>
<%--                                    <option value="Dakhla">Dakhla</option>--%>
<%--                                    <option value="Tanger">Tanger</option>--%>
<%--                                    <option value="Agadir">Agadir</option>--%>
<%--                                    <option value="Safi">Safi</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
                            <div class="field padding-bottom--24">
                                <label>Telephone portable</label>
                                <input
                                        class="tele"
                                        type="text"
                                        placeholder="0601234567"
                                        maxlength="10"
                                        pattern="06[0-9]{8}|07[0-9]{8}"
                                        name="telc"
                                        required=""
                                />
                            </div>
<%--                            <div class="radios">--%>
<%--                                <div class="forms">--%>
<%--                                    <div>--%>
<%--                                        <input type="radio" id="rdo1" name="radio"/>--%>
<%--                                        <span>Male</span>--%>
<%--                                    </div>--%>
<%--                                    <div>--%>
<%--                                        <input type="radio" id="rdo2" name="radio" checked/>--%>
<%--                                        <span>Female</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="field padding-bottom--24">
                                <label for="Email">Email :</label>
                                <input id="Email" type="Email" name="Emailc" required=""/>
                            </div>
                            <div class="field padding-bottom--24">
                                <div class="grid--50-50">
                                    <label for="password">Password :</label>
                                </div>
                                <input id="password" type="password" name="passwordc" required=""/>
                            </div>
                            <div class="field padding-bottom--24">
                                <div class="grid--50-50">
                                    <label for="confirm-password">Confirme Password :</label>
                                </div>
                                <input id="confirm-password" type="password" name="confirm" required=""/>
                            </div>
                            <div class="field padding-bottom--24">
                                <input type="submit" name="submit" value="Continue"/>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="footer-link padding-top--24">
              <span
              >Do u have an account?
                <a href="login.jsp">connection with your login</a></span
              >
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

<script src="../assets/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
// Prepare the preview for profile picture
        $("#wizard-picture").change(function () {
            readURL(this);
        });
    });

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

</script>

</body>
</html>

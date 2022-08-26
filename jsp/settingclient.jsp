<%-- 
    Document   : settingm3alm
    Created on : 7 juin 2022, 23:12:05
    Author     : Lenovo Thinkpad X280
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/Projet_PFE/css/Setting.css"/>
        <link rel="stylesheet" href="/Projet_PFE/css/search.css"/>
        <link rel="stylesheet" href="/Projet_PFE/css/signup.css"/>
        <link rel="stylesheet" href="/Projet_PFE/assets/all.min.css"/>
        <link rel="stylesheet" href="/Projet_PFE/css/header-humberger-menu.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css"/>
        <title>Setting | M3alm</title>
    </head>
    <body style="overflow: auto; height: 100vh !important;">
        <input class="menu-icon" type="checkbox" id="menu-icon" name="menu-icon"/>
        <label for="menu-icon"></label>
        <nav class="nav">
            <ul class="pt-5">
                <li><a href="/Projet_PFE/jsp/uploadProblem.jsp">Upload</a></li>
                <li><a href="/Projet_PFE/jsp/acceuil.jsp">Home</a></li>
                <li><a href="/Projet_PFE/jsp/search.jsp">Search</a></li>
                <li><a href="/Projet_PFE/jsp/settingclient.jsp">Settings</a></li>
                <li><a href="/Projet_PFE/Logout">log Out</a></li>
            </ul>
        </nav>

        <div class="container">
            <form  id="stripe-login" method="post" action="/Projet_PFE/settingclient">
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h6 class="mb-3 text-primary">Personal Details</h6>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="fullName">Full Name</label>
                                        <input type="text" class="form-control" id="fullName" name="FirstName" placeholder="Enter full name">
                                    </div>
                                </div>
                                <br><br><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="eMail">Email</label>
                                        <input type="email" class="form-control" name="emailc" id="eMail" placeholder="Enter email ID">
                                    </div>
                                </div>

                                <br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="phone">Phone</label>
                                        <input type="text" class="form-control" name="telc" id="phone" placeholder="Enter phone number">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="sTate">password </label>
                                        <input type="password" class="form-control" name="passwordc" id="password" placeholder="Enter password"  >
                                    </div>
                                </div>
                            </div>
                            <br><br>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="sTate">password  confirm</label>
                                    <input type="password" class="form-control" name="confirm" id="password" placeholder="confirm password"  >
                                </div>
                            </div>
                        </div>
                        <br>
                        <%
                            if (request.getAttribute("msg") != null) {
                        %>
                        <h3 style="color: red"> <%=request.getAttribute("msg")%></h3><%}%>
                        <div class="row gutters">

                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right">

                                    <button style="display: block; margin: auto; margin-bottom: 20px; width: 200px;" type="submit" id="submit" name="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form> 
        </div>
    </div>

</div>

<script src="/Projet_PFE/assets/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.min.js"></script>
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

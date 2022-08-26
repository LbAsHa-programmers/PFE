<%-- 
    Document   : settingm3alm
    Created on : 7 juin 2022, 23:12:05
    Author     : Lenovo Thinkpad X280
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="models.MyUtil"%>
<%@page import="java.sql.Connection"%>
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
    <body style="overflow: auto">
        <input class="menu-icon" type="checkbox" id="menu-icon" name="menu-icon"/>
        <label for="menu-icon"></label>
        <nav class="nav">
            <ul class="pt-5">
                <li><a href="/Projet_PFE/jsp/mesProblemes.jsp">DIY</a></li>
                <li><a href="/Projet_PFE/jsp/acceuil.jsp">Home</a></li>
                <li><a href="/Projet_PFE/jsp/settingm3alm.jsp">Settings</a></li>
                <li><a href="/Projet_PFE/Logout1">log Out</a></li>
            </ul>
        </nav>
        <div class="container">
            <div class="row gutters" style="margin-top: 200px; margin-bottom: 100px">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="account-settings">
                                <div class="user-profile">
                                    <div class="container">
                                        <form enctype="multipart/form-data" id="stripe-login" method="post" action="/Projet_PFE/SettingM3alm">
                                        
                                                <%
                            int ID=0;                                            
                   if(request.getSession().getAttribute("idm")!=null){
          ID=Integer.parseInt(request.getSession().getAttribute("idm").toString());
                   }
            Connection con = MyUtil.seConnecter();
            Statement st = con.createStatement();
           
            ResultSet rs = st.executeQuery("select img,nom,prenom,email from m3alm where idM="+ID);
             
while (rs.next()) {

        %>   
                                        <div class="picture-container">
                                            <div class="picture">
                                                <img src="/Projet_PFE/images/<%=rs.getString(1)%>"
                                                     class="picture-src" id="wizardPicturePreview" title="">
                                                <input name="img" type="file" id="wizard-picture" class="">
                                            </div>
                                        </div>
                                      
                                    </div>
                                    <h5 class="user-name"><%=rs.getString(2)%> <%=rs.getString(3)%></h5>
                                    <h6 class="user-email"><%=rs.getString(4)%></h6>
                                </div>
                               <%
                                }
                            %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h6 class="mb-3 text-primary">Personal Details</h6>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label style="display: inline-block; color: white;">Your Specialty :</label>
                                        <select id="field padding-bottom--24" Name="specialty" style="border-radius: 8px; padding: 5px">
                                            <option value="selected your specialty" selected>
                                                selected your specialty
                                            </option>
                                            <option value="electrician">electrician</option>
                                            <option value="blacksmith">blacksmith</option>
                                            <option value="carpenter">carpenter</option>
                                            <option value="Dressmaker">Dressmaker</option>
                                            <option value="Chauffeur Driver">Chauffeur Driver</option>
                                            <option value="Glass-maker">Glass-maker</option>
                                            <option value="Hair Stylist (Barber)">
                                                Hair Stylist (Barber)
                                            </option>
                                            <option value="Construction worker">
                                                Construction worker
                                            </option>
                                            <option value="Translator">Translator</option>
                                            <option value="Graphics Designer">
                                                Graphics Designer
                                            </option>
                                            <option value="Optician">Optician</option>
                                            <option value="Confectioner">Confectioner</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="eMail">Email</label>
                                        <input type="email" class="form-control" name="Email" id="eMail" placeholder="Enter email ID">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="phone">Phone</label>
                                        <input type="tel" class="form-control" name="tel" id="phone" placeholder="Enter phone number">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label style="display: inline-block; color: white;">City :</label>
                                        <select id="select-city" name="ville" style="border-radius: 8px; padding: 5px">
                                            <option value="selected your city" selected>
                                                selected your city
                                            </option>
                                            <option value="Casablanca">Casablanca</option>
                                            <option value="Rabat">Rabat</option>
                                            <option value="Marrakech">Marrakech</option>
                                            <option value="Dakhla">Dakhla</option>
                                            <option value="Tanger">Tanger</option>
                                            <option value="Agadir">Agadir</option>
                                            <option value="Safi">Safi</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="name"> first name</label>
                                        <input type="name" class="form-control" name="FristName"  placeholder="Enter your name">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="name"> Last Name</label>
                                        <input type="name" class="form-control" name="LastName" id="name" placeholder="Enter your LastName">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="sTate">password</label>
                                        <input type="password" class="form-control" id="sTate" name="password" placeholder="Enter password">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="password confirm">password</label>
                                        <input type="password" class="form-control" name="confirm" id="zIp" placeholder="confirm password">
                                    </div>
                                </div>
                            </div>
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="text-right">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary">Update</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

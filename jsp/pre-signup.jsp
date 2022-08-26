<%--
  Created by IntelliJ IDEA.
  User: younes
  Date: 22/06/03
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/Projet_PFE/css/pre-signup.css">
    <link rel="stylesheet" href="/Projet_PFE/assets/all.min.css">
    <title>M3alem | Sign up</title>
</head>
<style>
    .fa-retour-acceuil {
        position: absolute;
        top: -65px;
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
<div class="container">
    <div class="card" data-tilt>
<%--        <a href="#">--%>
            <img src="/Projet_PFE/images/pre-signup-m3alem.png" alt="image1"/>
<%--        </a>--%>
        <h2>M3alem</h2>
        <div class="buttons">
            <button><a href="/Projet_PFE/jsp/signup-m3alem.jsp">Sign up</a></button>
             <button><a href="/Projet_PFE/jsp/login.jsp">Login</a></button>
        </div>
    </div>
    <div class="card" data-tilt>
<%--        <a href="#">--%>
            <img src="/Projet_PFE/images/pre-signup-client.png" alt="image2"/>
<%--        </a>--%>
        <h2>Client</h2>
        <div class="buttons">
            <button><a href="/Projet_PFE/jsp/signup-client.jsp">Sign up</a></button>
            <button><a href="/Projet_PFE/jsp/login_2.jsp">Login</a></button>
        </div>
    </div>
</div>

<script src="/Projet_PFE/js/vanilla-tilt.js"></script>
</body>
</html>

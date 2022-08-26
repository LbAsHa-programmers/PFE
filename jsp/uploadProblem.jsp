<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>M3alem | Upload Problem</title>
        <link rel="stylesheet" href="/Projet_PFE/css/upload.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/Projet_PFE/assets/all.min.css" />
        <link rel="stylesheet" href="/Projet_PFE/css/search.css"/>
        <link rel="stylesheet" href="/Projet_PFE/css/header-humberger-menu.css">
        <link rel="stylesheet" href="/Projet_PFE/css/custom-select-menu.css" />
        <link rel="stylesheet" href="/Projet_PFE/css/custom-auto-resize-textarea.css" />
    </head>
    <body>
        
        <input class="menu-icon" type="checkbox" id="menu-icon" name="menu-icon"/>
        <label for="menu-icon"></label>
        <nav class="nav">
            <ul class="pt-5">
                <li><a href="/Projet_PFE/jsp/uploadProblem.jsp">Upload </a></li>
                <li><a href="/Projet_PFE/jsp/acceuil.jsp">Home</a></li>
                <li><a href="/Projet_PFE/jsp/search.jsp">Search</a></li>
                <li><a href="/Projet_PFE/jsp/settingclient.jsp">Settings</a></li>
                <li><a href="/Projet_PFE/Logout">log Out</a></li>
            </ul>
        </nav>
<%
            if (request.getAttribute("msg") != null) {
        %>
        <h3 style="color: red"> <%=request.getAttribute("msg")%></h3>
        <%}%> 
        <%--<div class="wrapper">--%>
        <%--  <header>Image</header>--%>
        <%--  <form enctype="multipart/form-data" action="../UploadProblem" method="post">--%>
        <%--    <input class="file-input" type="file" name="img" hidden />--%>
        <%--    <i class="fas fa-cloud-upload-alt"></i>--%>
        <%--    <p>Browse File to Upload</p>--%>
        <%--    <input type="submit" value="Envoyer">--%>
        <%--  </form>--%>
        <%--  <section class="progress-area"></section>--%>
        <%--  <section class="uploaded-area"></section>--%>
        <%--</div>--%>



        <form  method="post" action="/Projet_PFE/UploadProblem" enctype="multipart/form-data">

            <h1 style="display: block; width: 100%; margin: auto; margin-bottom: 50px; text-align: center; color: black;">Upload Problemes</h1>

            <%--  <div style="margin-bottom: 50px;" class="wrapper">
                <div class="select-btn">
                  <span>Select Country</span>
                  <i class="uil uil-angle-down"></i>
                </div>
                <div class="content">
                  <div class="search">
                    <i class="uil uil-search"></i>
                    <input spellcheck="false" type="text" placeholder="Search" name="cbxspy" required>
                  </div>
                  <ul class="options"></ul>
                </div>
              </div>--%>
            <label style="display: inline-block; color: white;">Your Specialty :</label>
            <select id="field padding-bottom--24" name="specialty" required="" style="border-radius: 8px; padding: 5px">
                <option value="-" selected>
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

        <br/><br><br/>
        <div style="margin-bottom: 50px;" class="wrapper">
            <h2>My problem is ..........</h2>
            <textarea spellcheck="false" placeholder="Type something here..." required name="txtproblem"></textarea>
        </div>

        <div class="custom-file">
            <input type="file" name="img" class="custom-file-input" id="validatedCustomFile" required>
            <label class="custom-file-label" for="validatedCustomFile">Choisissez une image...</label>
            <div class="invalid-feedback">Vous deverez choisir une image</div><br/><br>
            <button type="submit" class="btn btn-primary">Sauvegarder l'article</button>
        </div>
    </form>

    <script src="../js/custom-select-menu.js"></script>
    <script src="../js/custom-auto-resize-textarea.js"></script>
</body>
</html>

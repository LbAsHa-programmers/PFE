<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="models.MyUtil"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <link rel="stylesheet" href="/Projet_PFE/css/search.css"/>
        <link rel="stylesheet" href="/Projet_PFE/css/header-humberger-menu.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>M3alem | Search</title>
    </head>
    <style>
        #rech {
            width: 200px;
            margin: auto;
            margin-top: 50px;
            display: block;
            color: black;
            border-radius: 5px;
            padding: 5px;
            text-transform: capitalize;
        }
    </style>
    <body style="overflow-y: auto;">
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
        <!--<div class="search">
            <form action="" class="search-bar">
                <input
                        type="search"
                        name="search"
                        pattern=".*\S.*"
                        required
                        placeholder="Search"
                />
                <button class="search-btn" type="submit">
                    <span>Search</span>
                </button>
            </form>
        </div>-->
        <%
            Connection con = MyUtil.seConnecter();

            String specialty = request.getParameter("specialty");
            String req = "select specialite,img,nom,prenom,ville,TEL from m3alm ";
            Statement st = con.createStatement();
            if (request.getParameter("ville") != null || request.getParameter("specialty") != null) {

                String ville = request.getParameter("ville");
                if (!ville.equals("-") && specialty.equals("-")) {
                    req += " where ville like '" + ville + "'";
                } else if (ville.equals("-") && !specialty.equals("-")) {
                    req += "where specialite like '" + specialty + "'";
                }
                if (!ville.equals("-") && !specialty.equals("-")) {
                    req += " where ville like '" + ville + "'";
                    req += " and specialite like '" + specialty + "'";
                }
            }


        %>

        <div class="container mt-5 mb-5">
            <form action="/Projet_PFE/jsp/search.jsp" method="post">
                <div class="select-search-container" style=" margin-top: 50px; display: flex; justify-content: space-between; align-items: center;">
                    <label style="display: inline-block; color: white;">City :</label>
                    <select id="select-city" name="ville" style="border-radius: 8px; padding: 5px">
                        <option value="-" selected>
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

                    <label style="display: inline-block; color: white;">Your Specialty :</label>
                    <select id="field padding-bottom--24" name="specialty" style="border-radius: 8px; padding: 5px">
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
                <input id="rech" type="submit" value="rechercher"/>
            </form>
            <table class="table table-borderless table-responsive card-1 p-4"  style="margin-top: 100px">
                <thead>
                    <tr class="border-bottom">

                        <th>
                            <span class="ml-2">M3alm</span>
                        </th>
                        <th>
                            <span class="ml-2">FULL NAME</span>
                        </th>
                        <th>
                            <span class="ml-2">City</span>
                        </th>
                        <th>
                            <span class="ml-2">NUMBER PHONE</span>
                        </th>

                    </tr>




                    <%                       ResultSet rs = st.executeQuery(req);
                        while (rs.next()) {
                    %>
                </thead>
                <tbody>
                    <tr class="border-bottom">
                        <td>
                            <%=rs.getString("specialite")%>
                        </td>
                        <td>
                            <div class="p-2 d-flex flex-row align-items-center mb-2">
                                <img src="/Projet_PFE/images/<%=rs.getString("img")%>" width="200px" height="100px border-radius="10px" "/>
                                <div class="d-flex flex-column ml-2">
                                    <span class="d-block font-weight-bold"><%=rs.getString("nom")%>  <%=rs.getString("prenom")%></span>
                                    <%--  <small class="text-muted">Jasmine Owner Reality group</small>--%>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="p-2">
                                <span class="font-weight-bold"><%=rs.getString("ville")%></span>
                            </div>
                        </td>
                        <td>
                            <div class="p-2 d-flex flex-column">
                                <div id="textToCopy">
                                    <span><%=rs.getString("TEL")%></span>
                                </div>
                            </div>
                        </td>
                        <td>

                            <div class="p-2 icons">
                                <i class="fa fa-phone text-danger"></i>
                                <button id="copyButton">Click to copy</button> 
                                <span id="copyResult"></span>
                            </div>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
            const answer = document.getElementById("copyResult");
            const copy = document.getElementById("copyButton");
            const selection = window.getSelection();
            const range = document.createRange();
            const textToCopy = document.getElementById("textToCopy")

            copy.addEventListener('click', function (e) {
                range.selectNodeContents(textToCopy);
                selection.removeAllRanges();
                selection.addRange(range);
                const successful = document.execCommand('copy');
                if (successful) {
                    answer.innerHTML = 'Copied!';
                } else {
                    answer.innerHTML = 'Unable to copy!';
                }
                window.getSelection().removeAllRanges()
            });
        </script>
    </body>
</html>

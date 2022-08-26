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
    <body style="overflow-y: auto">
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
           
          String  s =null;
                   if(request.getSession().getAttribute("s")!=null){
          s=request.getSession().getAttribute("s").toString();
                   }
          Connection con = MyUtil.seConnecter();
            String req = ("select imgp,problemetext from probleme where cat like '"+s +"'");
                    
            Statement st=con.createStatement();
           

        %>

                
            <table class="table table-borderless table-responsive card-1 p-4"  style="margin-top: 100px">
                <thead>
                    <tr class="border-bottom">
                        
                        <th>
                            <span class="ml-2">IMAGE PROBLEME</span>
                        </th>
                        <th>
                            <span class="ml-2">TEXT PROBLEME</span>
                        </th>
                        
                    </tr>
                 
                    
                   <%
                       ResultSet rs = st.executeQuery(req);
                while(rs.next()){
            %>
                </thead>
                <tbody>
                    <tr class="border-bottom">
                        
                        <td>
                            <div class="p-2 d-flex flex-row align-items-center mb-2">
                                <img src="/Projet_PFE/images/<%=rs.getString(1)%>" width="300px" height="150px" class="rounded"/>
                                <div class="d-flex flex-column ml-2">
                                    <span class="d-block font-weight-bold"><%=rs.getString(2)%></span>
                                    <%--  <small class="text-muted">Jasmine Owner Reality group</small>--%>
                                </div>
                            </div>
                        </td>
                        
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
                                
        </div>
                                
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>

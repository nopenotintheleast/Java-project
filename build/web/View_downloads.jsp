<%-- 
    Document   : DO_login
    Created on : 8 Mar, 2021, 1:56:55 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>A Novel Feature Matching Ranked Search</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Your page description here" />
        <meta name="author" content="" />
        <!-- css -->
        <link href="css/bootstrap.css" rel="stylesheet" />
        <link href="css/bootstrap-responsive.css" rel="stylesheet" />
        <link href="css/prettyPhoto.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <!-- Theme skin -->
        <link id="t-colors" href="color/default.css" rel="stylesheet" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
        <link rel="shortcut icon" href="ico/favicon.png" />
    </head>
    <body>
        <div id="wrapper">
            <!-- start header -->
            <header>
                <div class="top">
                </div>
                <div class="container">
                    <div class="row nomargin">
                        <div class="span4">
                            <div class="logo">
                            </div>
                        </div>
                        <div class="span8">
                            <div class="navbar navbar-static-top">
                                <div class="navigation">
                                    <nav>
                                        <ul class="nav topnav">
                                            <li>
                                                <a href="Cloud_Home.jsp">Home</a>
                                            </li>
                                            <li>
                                                <a href="View_owners.jsp">Data Owners</a>
                                            </li>
                                            <li>
                                                <a href="View_users.jsp">Data Users</a>
                                            </li>
                                            <li>
                                                <a href="View_user_req.jsp">User File Requests</a>
                                            </li>
                                            <li class="active">
                                                <a href="View_downloads.jsp">Downloaded Files</a>
                                            </li>
                                            <li>
                                                <a href="graph.jsp">Graph</a>
                                            </li>
                                            <li>
                                                <a href="index.html">Logout</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- end navigation -->
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            
            <section id="content">
                <div class="container">
                    <div class="row">
                        <div class="aligncenter">
                            <h3>Downloaded Files</h3><br><br>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>File ID</th>
                                    <th>File Name</th>
                                    <th>User Name</th>
                                    <th>Downloaded Time</th>
                                </tr>
                            </thead>
                            <%

                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                Statement st1 = con.createStatement();
                                try {

                                    ResultSet rs = st1.executeQuery("Select * from download ");
                                    while (rs.next()) {

                            %>
                            <tbody>
                                <tr>
                                    <td><%=rs.getString("fileid")%></td>
                                    <td><%=rs.getString("filename")%></td>
                                    <td><%=rs.getString("uname")%></td>
                                    <td><%=rs.getString("time")%></td>
                                </tr>
                            </tbody>
                            <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table>
                    </div>	
                </div>
            </section>
            <div id="sub-footer">
                <div class="container">
                    <div class="row">
                        <center> <p>&copy; 2021</p></center>
                    </div>
                </div>
            </div>
        </div>
        <a href="#" class="scrollup"><i class="icon-angle-up icon-rounded icon-bglight icon-2x"></i></a>
        <!-- javascript
          ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/jquery.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <script src="js/toucheffects.js"></script>
        <script src="js/google-code-prettify/prettify.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/portfolio/jquery.quicksand.js"></script>
        <script src="js/portfolio/setting.js"></script>
        <script src="js/animate.js"></script>

        <!-- Template Custom JavaScript File -->
        <script src="js/custom.js"></script>
    </body>

</html>

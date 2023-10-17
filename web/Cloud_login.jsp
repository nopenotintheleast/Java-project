<%-- 
    Document   : DO_login
    Created on : 8 Mar, 2021, 1:56:55 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
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
                                                <a href="index.html">Home</a>
                                            </li>
                                            <li>
                                                <a href="DO_login.jsp">Data Owner</a>
                                            </li>
                                            <li>
                                                <a href="DU_login.jsp">Data User</a>
                                            </li>
                                            <li class="active">
                                                <a href="Cloud_login.jsp">Cloud</a>
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
                            <h3>Cloud Server Login</h3><br><br>
                        </div>
                        <div class="span6">
                            <img src="img/cloud_computing.gif" />
                        </div>
                        <div class="span6">
                            <form id="contactform" action="cloud" method="post" class="contactForm">
                                <div class="row">
                                    <div class="span6 margintop10 field form-group">
                                        <label>Email ID :</label>
                                        <input type="text" name="name" placeholder="Enter Your Email ID" required="required" /><br>
                                    </div><br>
                                    <div class="span6 margintop10 field form-group">
                                        <label>Password :</label>
                                        <input type="password" name="pass" placeholder="Enter Your Password" required="required" /><br>
                                    </div><br>
                                    <div class="span6 margintop10 field form-group">
                                        <button class="btn btn-success btn-large margintop10" type="submit">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>
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

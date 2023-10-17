<%-- 
    Document   : DO_login
    Created on : 8 Mar, 2021, 1:56:55 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.google.gson.Gson"%>
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
                                            <li>
                                                <a href="View_downloads.jsp">Downloaded Files</a>
                                            </li>
                                            <li class="active">
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
                            <h3>Analysis</h3><br><br>
                        </div>
                        <%
                            String val1 = "", val2 = "", val3 = "";
                            String val11 = "", val22 = "", val33 = "";
                            int i = 0;

                            try {
                                Connection con = SQLconnection.getconnection();

                                Statement st1 = con.createStatement();
                                ResultSet rs2 = st1.executeQuery("SELECT  AVG(enc_time) FROM  do_files ");
                                rs2.next();
                                {
                                    val2 = rs2.getString("AVG(enc_time)");
                                }
                                rs2.close();
                                Statement st2 = con.createStatement();
                                ResultSet rs3 = st2.executeQuery("SELECT  AVG(decrypt_time) FROM  download ");
                                rs3.next();
                                {
                                    val3 = rs3.getString("AVG(decrypt_time)");
                                }
                                System.out.println("count------------------> " + val2);
                                System.out.println("count------------------> " + val3);

                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                        <script type="text/javascript">
                            window.onload = function () {

                                var chart = new CanvasJS.Chart("chartContainer", {
                                    animationEnabled: true,
                                    exportEnabled: true,
                                    theme: "light2", // "light1", "light2", "dark1", "dark2"
                                    title: {
                                        text: ""
                                    },
                                    axisY: {
                                        title: "Time in MS"
                                    },
                                    data: [{
                                            type: "column",
                                            showInLegend: true,
                                            legendMarkerColor: "grey",
                                            legendText: "Entities",
                                            dataPoints: [
                                                {y: <%=val2%>, label: "Avg Encryption_Time in MS"},
                                                {y: <%=val3%>, label: "Avg Decryption_Time in MS"}

                                            ]
                                        }]
                                });
                                chart.render();
                            }
                        </script>
                        <div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
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
        <script type="text/javascript" src="assets/js/custom.js"></script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <!-- About us Skills Circle progress  -->
        <script>
                            // First circle
                            new Circlebar({
                                element: "#circle-1",
                                type: "progress",
                                maxValue: "90"
                            });

                            // Second circle
                            new Circlebar({
                                element: "#circle-2",
                                type: "progress",
                                maxValue: "84"
                            });

                            // Third circle
                            new Circlebar({
                                element: "#circle-3",
                                type: "progress",
                                maxValue: "60"
                            });

                            // Fourth circle
                            new Circlebar({
                                element: "#circle-4",
                                type: "progress",
                                maxValue: "74"
                            });

        </script>
        <script src="chart/graph.js"></script>
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

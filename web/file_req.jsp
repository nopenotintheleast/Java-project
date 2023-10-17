<%-- 
    Document   : get_token
    Created on : 9 Jan, 2021, 6:45:23 PM
    Author     : JAVA-JP
--%>

<%@page import="Networks.Mail"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String doid = request.getParameter("doid");
    String fileid = request.getParameter("fileid");
    String doname = request.getParameter("doname");
    String filename = request.getParameter("filename");

    String uid = (String) session.getAttribute("duid");
    String uname = (String) session.getAttribute("duname");
    String umail = (String) session.getAttribute("dumail");

    System.out.println("Check fileid And filename : " + fileid + filename);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date date = new Date();
    String time = dateFormat.format(date);
    System.out.println("Date and Time : " + time);

    try {
        ResultSet rs = st.executeQuery("SELECT * FROM do_files where doid='" + doid + "' AND id='" + fileid + "' AND filename='" + filename + "'");
        if (rs.next()) {

            String dkey = rs.getString("dkey");

            int i = sto.executeUpdate("INSERT into request(fileid, filename, time, status, uname, uid, umail, doid, do_name, dkey) values('" + fileid + "','" + filename + "','" + time + "','waiting', '" + uname + "', '" + uid + "','" + umail + "', '" + doid + "','" + doname + "','" + dkey + "')");
            if (i != 0) {
                response.sendRedirect("Search_file.jsp?Request_sent");
            }
        } else {
            response.sendRedirect("Search_file.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
<%-- 
    Document   : login
    Created on : Nov 3, 2022, 11:13:05 AM
    Author     : FASUSER
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name= request.getParameter("name");
    String pass = MD5.getMd5(request.getParameter("pass"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = DBConncetion.getConnection();
            String query = "SELECT studInstId,password, type VALUES (?,?,?)";
            
            if (rs.next()){
                String studInsId = rs.getString("studInsId");
                String db_password = rs.getString("password");
                String type = rs.getString("type");
                
                if(db_password.equals(password)){
                    session.setAttribute("user_id", studInsId);
                    session.setAttribute("type", type);
                    
                    response.sendRedirect(type+"/");
                    
                }else{
                    response.sendRedirect("index.jsp?status=0");
                }
            }
        %>
    </body>
</html>

<%-- 
    Document   : check
    Created on : 17-ago-2017, 8:23:21
    Author     : Ricardo Cutimbo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usuario = request.getParameter("nombre");
            String password = request.getParameter("password");
            if(usuario.equals("user01") && password.equals("abc")){
                HttpSession sesionOk = request.getSession();
                sesionOk.setAttribute("usuario",usuario);
                sesionOk.setAttribute("setLogin","true");

        %>
        <jsp:forward page="menu.html"/>
        <%
            }
            else{
        %>
        <jsp:forward page="menu.html"/>
        <%
            }
        %>
    </body>
</html>

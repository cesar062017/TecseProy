<%-- 
    Document   : frmUsuario
    Created on : 23-ago-2017, 21:39:28
    Author     : Ricardo Cutimbo
--%>

<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<html>
    <head>
        <link rel="StyleSheet" type="Text/css" href="CSS/r_columnas.css">
        
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div id="fondo">
            <div id="hoja1">
                <h1>Mantenimiento Usuarios</h1>
                <%  
                    try {
                        String basedatos = "dbTecsefono";
                        MongoClient mCliente = new MongoClient("127.0.0.1");
                        DB db = mCliente.getDB(basedatos);
                        DBCollection coleccion = db.getCollection("usuarios");
                        DBCursor cursor = coleccion.find();
                    
                %>
                <table border="1" id="tabla" class="display" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Usuario</th>
                            <th>Password</th>
                            <th>Nivel</th>
                            <th>Direccion</th>
                            <th></th>
                        </tr>
                    </thead>
                    <%      int i = 0;
                            while(cursor.hasNext()){%>
                    <tbody>
                        <tr>
                            <% DBObject o = cursor.next();%>
                            <td><%=o.get("usuario")%></td>
                            <td><%=o.get("usuario")%></td>
                            <td><%=o.get("contrasena")%></td>
                            <td>Nivel 1</td>
                            <td>4to piso</td>
                            <td><input id="identificador_<%=i%>" type="button" value="Modificar" onclick="javascript:CargaModificar('Mantenimientos/Usuario/frmUsuarioModificar.html','hoja2',<%=i%>)"></td>
                        </tr>
                    </tbody>
                    <%          i++;
                                }
                            } catch (Exception e) {
                                System.out.println("Es la aniquiladora");
                            }

                        
                    %>
                </table>
            </div>
            <div id="hoja2">
                <h1>Seleccione usuario...</h1>
            </div>
        </div>
    
    </body>
</html>
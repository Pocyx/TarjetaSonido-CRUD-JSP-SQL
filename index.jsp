<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link rel="stylesheet" href="css/estilos.css">
        <title>Tarjeta de sonido - Andrés Gálvez</title>
    </head>

    <body>
        <div class="container">
            <br><br>			
            <div class="panel panel-primary">
                <div class="uno"><h2>Tarjetas de sonido</h2></div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tarjetas", "root", "");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery("SELECT * FROM tarjeta_sonido");
                %>

                <table class="striped">
                    <tr><th>ID</th><th>Tipo</th><th>Marca</th><th>Modelo</th><th>Precio</th></tr>
                    <form method="get" action="grabaTarjeta.jsp">
                        <tr><td><input type="text" name="tarjeta_id" size="5"></td>
                            <td><input type="text" name="tipo" size="30"></td>
                            <td><input type="text" name="marca" size="5"></td>
                            <td><input type="text" name="modelo" size="5"></td>
                            <td><input type="text" name="precio" size="20"></td>
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("tarjeta_id") + "</td>");
                            out.println("<td>" + listado.getString("tipo") + "</td>");
                            out.println("<td>" + listado.getString("marca") + "</td>");
                            out.println("<td>" + listado.getString("modelo") + "</td>");
                            out.println("<td>" + listado.getString("precio") + "</td>");
                    %>
                    <td>
                        <form method="get" action="modificaTarjeta.jsp">
                            <input type="hidden" name="tarjeta_id" value="<%=listado.getString("tarjeta_id")%>">
                            <input type="hidden" name="tipo" value="<%=listado.getString("tipo")%>">
                            <input type="hidden" name="marca" value="<%=listado.getString("marca")%>">
                            <input type="hidden" name="modelo" value="<%=listado.getString("modelo")%>">
                            <input type="hidden" name="precio" value="<%=listado.getString("precio")%>">
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="borraTarjeta.jsp">
                            <input type="hidden" name="tarjeta_id" value="<%=listado.getString("tarjeta_id")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
                        </form>
                    </td></tr>
                    <%
                        } // while   

                        conexion.close();
                    %>

                </table>

            </div>

            <div class="uno">CRUD</div>

        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

    </body>
</html>
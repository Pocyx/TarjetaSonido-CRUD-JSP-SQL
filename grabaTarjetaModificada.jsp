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
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
        <link rel="icon" href="carruselImg/tituloTransparente.png" type="image/gif">

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link rel="stylesheet" href="css/estilos.css">
        <title>Tarjeta de sonido - Andrés Gálvez</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tarjetas", "root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            String actualizacion = "UPDATE tarjeta_sonido SET "
                    + "tipo='" + request.getParameter("tipo")
                    + "', marca='" + request.getParameter("marca")
                    + "', modelo='" + request.getParameter("modelo")
                    + "', precio=" + Double.valueOf(request.getParameter("precio"))
                    + " WHERE tarjeta_id=" + Integer.valueOf(request.getParameter("tarjeta_id"));
            s.execute(actualizacion);
            out.println("Tarjeta actualizada correctamente.");

            conexion.close();
        %>
        <br>
        <a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</a>
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.carousel').carousel();
            });
            // Next slide
            $('.carousel').carousel('next');
            $('.carousel').carousel('next', 3); // Move next n times.
            // Previous slide
            $('.carousel').carousel('prev');
            $('.carousel').carousel('prev', 4); // Move prev n times.
            // Set to nth slide
            $('.carousel').carousel('set', 4);
        </script>


        <script type="text/javascript">
            $('.chips').material_chip();
            $('.chips-initial').material_chip({
                data: [{
                        tag: 'Manzana',
                    }, {
                        tag: 'Microsoft',
                    }, {
                        tag: 'Google',
                    }],
            });
            $('.chips-placeholder').material_chip({
                placeholder: 'Enter a tag',
                secondaryPlaceholder: '+Tag',
            });
            $('.chips-autocomplete').material_chip({
                autocompleteData: {
                    'Manzana': null,
                    'Microsoft': null,
                    'Google': null
                }
            });
        </script>

        <script>
            var chip = {
                tag: 'chip content',
                image: '', //optional
                id: 1, //optional
            };
        </script>

        <script>
            $('.chips').on('chip.add', function (e, chip) {
                // you have the added chip here
            });
            $('.chips').on('chip.delete', function (e, chip) {
                // you have the deleted chip here
            });
            $('.chips').on('chip.select', function (e, chip) {
                // you have the selected chip here
            });
        </script>

        <script>
            $('.chips-initial').material_chip('data');
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#formoid').ajaxForm(function () {
                    alert("Thank you for your comment!");
                });
            });
        </script>

        <script>
            //Si damos click al boton
            $('#id_btn').click(function (e) {
                e.preventDefault();
                //Mostramos la imagen de loader
                $('#img_loader').show();
                //Desactivamos el boton
                $('#id_btn').prop('disabled', true);
            });
        </script>
    </body>
</html>
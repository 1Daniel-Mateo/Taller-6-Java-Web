<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <!--METADA-->
    <!--charset para caracteres especiales-->
    <meta charset="utf-8">
    <!--author-->
    <meta name="author" content="Mateo Suarez">
    <!--description-->
    <meta name="description" content="Regitro de usuario y logeo de usuario">
    <!--keywords-->
    <meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">
    <!--minimum responsive viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--TITLE-->
    <title>LOGEO DE USUARIO : MY APP</title>
    <!--FAVICON-->
    <link rel="icon" type="image/x-icon" href="img/barateon.png">
    <!--CSS-->
    <!--bootstrap css/ incos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icon@1.10.3/font/bootstrap-icons.css">
    <!--custom css-->
    <link rel="stylesheet" href="css/signin.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="text-center">
<div class="container">

<header>
</header>
<nav>
</nav>

<!--login form-->
    <section>
<main class="form-signin w-100 m-auto">
    <form action="" method="post">
        <img src="img/barateon.png" class="mb-4" alt="MY APP" width="100">
        <h4 class="text-secondary">MY -APP</h4>
        <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

    <div class="form-floating">
        <input type="text" class="form-control" id="floatingInput" placeholder="Ingresa tu nombre" autofocus required pattern="[A-Za-z]{8,12}"><br>
        <label for="floatingInput">Usuario:</label>
    </div>

        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Ingresa tu contraseña" required pattern="[A-Za-z]{8,12}"><br>
            <label for="floatingPassword">Contraseña:</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Iniciar Seción</button>
        <div id="register">
            <a href="jsp/register.jsp">Registrate</a>
        </div>

    </form>
</main>
    </section>
    <footer>
        <p class="mt-3 mb-3 text-muted">TODOS LOS DERECHOS RESERVADOS A MY APP
            <%=displayDate()%>
        </p>
    </footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</div>

<%!public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
}
%>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"/>
</head>
<body>

<jsp:include page="header.jsp"/>
<br>
<br>
<br>
<section class="container">

    <h1 style="text-align: center;">Registro</h1>
    <br>
    <br>
    <form action="register" method="post">
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" placeholder="Nombre" name="nombre"required>
            </div>
            <div class="col">
                <input type="text" class="form-control" placeholder="Apellido" name="apellido" required>
            </div>
        </div>
        </br>
        <div class="form-group">
            <input type="email" class="form-control"  placeholder="Correo" name="email" required>
            <br>
            <div class="form-group">
                <input type="password" class="form-control"  placeholder="Contraseña" name="password" required>
            </div>

            <button type="button" style="background-color: yellowgreen;" class="btn-lg btn-block">Iniciar Sesión</button>

            <h5 style="text-align: center;">ó</h5>


            <div class="row" style="justify-content:center"><button type="submit" class="btn btn-lg btn-form">Registrarse</button></div>

        </div>
    </form>

</section>



</body>
</html>
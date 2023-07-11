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
    <h1 style="text-align: center;">Iniciar Sesión</h1>
    <br>
    <br>
    <form action="login" method="post">
        <div class="row">
            <div class="col">
                <input type="email" class="form-control" placeholder="Correo" name="email">
            </div>
            <div class="col">
                <input type="password" class="form-control" placeholder="Contraseña" name="password">
            </div>
        </div>
        <br>
        <button type="submit" style=" background-color: yellowgreen; align-content: center" class="btn-lg btn-block">Iniciar Sesión</button>
        <br>
    </form>

    <h5 style="text-align: center;">ó</h5>
    <form class="container" action="register.jsp">
        <article class="text-center mt-4">
            <button type="submit" style="background-color: yellowgreen;" class="btn-lg btn-lg btn-form">Registrarse</button>
        </article>
    </form>



</section>

</body>
</html>
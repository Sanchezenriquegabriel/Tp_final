<%--
  Created by IntelliJ IDEA.
  User: Gabriel Sanchez
  Date: 7/7/2023
  Time: 7:49 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <!-- menu de navegacion -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <img src="Imagenes/codoacodo.png" style="width: 100px; height: 80px" alt="...">
        <a class="navbar-brand" href="#">Conf Bs As</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Linea 23:  para alinear barra de navegación a la derecha -->
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">La conferencia <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#cartas">Los oradores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#lugar_fecha">Lugar y fecha</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#orador">Conviértete en orador</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="ticket.jsp" style="color: green;" >Comprar tickets</a>
                </li>
                <%
                    if(session.getAttribute("email") == null){
                %>
                <li class="nav-item">
                    <a class="nav-link btn-log-reg" href="register.jsp">Registrarse</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn-log-reg" href="login.jsp">Iniciar Sesión</a>
                </li>
                <%
                    }
                %>
                <%
                    if(session.getAttribute("email") != null){
                %>
                <li class="nav-item">
                    <a class="nav-link btn-log-reg" href="logout">Cerrar Sesión</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </nav>
</header>
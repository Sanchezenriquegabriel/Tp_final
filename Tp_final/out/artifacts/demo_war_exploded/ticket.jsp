<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"/>
<body>

<jsp:include page="header.jsp"/>

<main>
    <br>
    <!-----Cartas----->
    <div class="container" >
        <div class="row">
            <div class="row row-cols-1 row-cols-md-3" style="padding-left: 15%; padding-right: 15%;">
                <div class="col mb-4">
                    <div class="card border border-primary text-center" style="width: 17rem;">
                        <div class="card-body">
                            <h5 class="card-title">Estudiante</h5>
                            <p>Tienen un descuento</p>
                            <p><strong>80%</strong></p>
                            <p>*presentar documentación</p>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card border border-info text-center" style="width: 17rem;">
                        <div class="card-body">
                            <h5 class="card-title">Trainee</h5>
                            <p>Tienen un descuento</p>
                            <p><strong>50%</strong></p>
                            <p>*presentar documentación</p>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card border border-warning text-center" style="width: 17rem;">
                        <div class="card-body">
                            <h5 class="card-title">Junior</h5>
                            <p>Tienen un descuento</p>
                            <p><strong>15%</strong></p>
                            <p>*presentar documentación</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-----cierre de cartas----->

    <!--Formulario-->
    <div class="container">

        <div  style="padding-left: 15%; padding-right: 15%;">
            <div id="textoChico">VENTA</div>
            <div id="textoGrande">VALOR DEL TICKET $200</div>

            </br>

            <!--Formulario-->

            <form id="ticket">
                <div class="row">
                    <div class ="col" >
                        <input id="nombre" type="text" class="form-control" placeholder="Nombre" required>
                    </div>
                    <div class="col">
                        <input id="apellido" type="text" class="form-control" placeholder="Apellido" required>
                    </div>
                </div>
                </br>
                <div class="form-group">
                    <input id="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="Correo" required>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Cantidad</label>
                        <input type="number" min="1" class="form-control" id="cantidad" required>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="inputState">Categoria</label>
                        <select id="categoria" class="form-control">
                            <option selected>Estudiante</option>
                            <option>Trainee</option>
                            <option>Junior</option>
                        </select>
                    </div>
                </div>
                </br>

                <div class="alert alert-primary co" role="alert">
                    <div class="row">
                        <div>Total a pagar: $</div>
                        <div id="total"></div>
                    </div>
                </div>
                </br>


                <div class="container">
                    <div class="row" style="justify-content: center">
                        <button type="button" class="btn btn-success col-md-4" onclick="resetForm()" style="margin-right: 20px; background-color: yellowgreen;">Borrar</button>
                        <button type="submit" value="" class="btn btn-success col-md-4" onclick="CalcularTotal()" style="margin-left: 20px; background-color: yellowgreen;">Resumen</button>
                    </div>
                    <br>
                </div>
            </form>

</main>

<jsp:include page="footer.jsp"/>

<script src="./Tp-n1/Js/app.js"></script>
</body>
</html>
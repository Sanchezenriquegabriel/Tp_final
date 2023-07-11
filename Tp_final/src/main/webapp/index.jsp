<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"/>
<body>

<jsp:include page="header.jsp"/>

<main>
  <section>
    <article>
      <!-- Carousel -->
      <div id="Confe"></div>
      <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="Imagenes/ba1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Conf Bs As</h5>
              <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de
                los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
                y los oradores de primer nivel que tenemos para ti. Te esperamos!
              </p>
              <button type="button" onClick="document.getElementById('orador').scrollIntoView()" class="btn btn-outline-light">Quiero ser orador</button>
              <button type="button" onClick="window.location='ticket.html'" class="btn btn-success">Comprar tickets</button>
            </div>
          </div>
          <div class="carousel-item">
            <img src="Imagenes/ba2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Conf Bs As</h5>
              <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de
                los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
                y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
              <button type="button" onClick="document.getElementById('orador').scrollIntoView()" class="btn btn-outline-light">Quiero ser orador</button>
              <button type="button" onClick="window.location='ticket.html'" class="btn btn-success">Comprar tickets</button>
            </div>
          </div>
          <div class="carousel-item">
            <img src="Imagenes/ba3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Conf Bs As</h5>
              <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de
                los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
                y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
              <button type="button" onClick="document.getElementById('orador').scrollIntoView()" class="btn btn-outline-light">Quiero ser orador</button>
              <button type="button" onClick="window.location='ticket.html'" class="btn btn-success">Comprar tickets</button>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </button>
      </div>
    </article>
  </section>



  <article>
    <!-- Titulos_1-->
    <%
      if(session.getAttribute("email") != null){

    %>
    <section class="text-center mb-4 mt-4">
      <h1>Holaaaaa <span class="badge bg-secondary btn-log-reg"><%= session.getAttribute("nombre") %></span></h1>
    </section>
    <%
      }
    %>      </br>
    <div id="subtitulo">  CONOCE A LOS</div>
    <div id="tituloOrador"> ORADORES</div>
    </br>
    <!--Cartas-->
    <div id="cartas"></div>
    <div class="row row-cols-1 row-cols-md-3" style="padding-left: 15%; padding-right: 15%;">
      <div class="col mb-4">
        <div class="card">
          <img src="Imagenes/steve.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <span class="badge badge-warning">JavaScript</span>
            <span class="badge badge-info">React</span>
            <h5 class="card-title">Steve Jobs</h5>
            <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum quidem possimus voluptatum odit quas exercitationem quae saepe assumenda distinctio molestiae neque sint ducimus cupiditate est laboriosam id, in autem voluptate.</p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="Imagenes/bill.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <span class="badge badge-warning">JavaScript</span>
            <span class="badge badge-info">React</span>
            <h5 class="card-title">Bill Gates</h5>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus sint quo quisquam neque sunt non. Aperiam consequuntur facere unde veritatis dolorem. Neque amet porro blanditiis sit molestias dolores labore nostrum!</p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="Imagenes/ada.jpeg" class="card-img-top" alt="...">
          <div class="card-body">
            <span class="badge badge-secondary">Negocios</span>
            <span class="badge badge-danger">Startups</span>
            <h5 class="card-title">Ada Lovelace</h5>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus distinctio voluptatem ipsum ducimus earum est repellendus autem velit ullam rem aliquid officiis ad aliquam, inventore, iure beatae? Voluptate, magnam est?</p>
          </div>
        </div>
      </div>

  </article>

  <article>
    <!--Carta horizontal-->
    <div id="lugar_fecha"></div>

    <div class="row no-gutters bg-ligh t position-relative">
      <div class="col-md-6 mb-md-0 p-md-0">
        <img src="Imagenes/honolulu.jpg" class="w-100" alt="...">
      </div>
      <div class="col-md-6 position-static p-4 pl-md-500  bg-dark" style="color: aliceblue;" >
        <h5 class="mt-0">Bs As - Octubre</h5>
        <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos.
          Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere
          al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado
          consolidada que cubre toda la ciudad (aproximadamente 600km² de superficie).
        </p>
        <button type="button" class="btn btn-outline-light">Conocé más</button>
      </div>
    </div>

  </article>




  </br>
  <div  style="padding-left: 15%; padding-right: 15%;">
    <div id="subtitulo">  CONVIÉRTETE EN UN</div>
    <div id="tituloOrador">  ORADOR</div>
    <div id="frase"> Anótate como orador para dar charla ignite. Cúentanos de que quieres hablar!</div>
    </br>

    <!--Formulario-->
    <div id="orador"></div>
    <form>
      <div class="row">
        <div class="col">
          <input type="text" class="form-control" placeholder="Nombre">
        </div>
        <div class="col">
          <input type="text" class="form-control" placeholder="Apellido">
        </div>
      </div>
      </br>
      <div class="form-group">
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Sobre que quieres hablar?"></textarea>
        <label id="subtitulo">Recuerda incluir un título por charla</label>
        </br>
        <button type="button" class="btn btn-lg btn-block" style=" color: white; background-color: rgb(147, 228, 25)  ">Enviar</button>


    </form>
  </div>
  </br>
  </section>

</main>

<jsp:include page="footer.jsp"/>

</body>
</html>
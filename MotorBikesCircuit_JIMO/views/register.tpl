<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Formulario</title>
  <link rel="stylesheet" media="only screen" href="/static/CSS/style_formulario.css" />
  <script type="text/javascript" rel="stylesheet" src="/static/espectador-piloto.js"></script>
</head>
<body>
  <div class="main_container">
      <div class="color_fondo"></div>
      <h1 class="registrarse_texto">REGÍSTRATE CON NOSOTROS</h1>
      <div class="header">
          <nav> 
              <input type="checkbox" id="menu">
              <label for="menu"><img class="img_menu" src="IMG/icons8-menú-cuadrado-96.png" width="100%" alt="">  </label>
              <ul>
              <li>
                  <div class="flip-card-menu">
                  <div class="flip-card-inner">
                      <div class="flip-card-front">
                      <img src="IMG/suzuki-hybrid-gsx-r-p.jpg" alt="Avatar">
                      </div>
                      <div class="flip-card-back">
                      <h1>Motos</h1> 
                      </div>
                  </div>
                  </div>
              </li>
              <li>
                  <div class="flip-card-menu">
                  <div class="flip-card-inner">
                      <div class="flip-card-front">
                      <img src="IMG/artculo-expectativas-clientes.png" alt="Avatar">
                      </div>
                      <div class="flip-card-back">
                      <h1>Registrate como cliente</h1> 
                      </div>
                  </div>
                  </div>
              </li>
              <li>
                  <div class="flip-card-menu">
                  <div class="flip-card-inner">
                      <div class="flip-card-front">
                      <img src="IMG/circuito-de-las-americas-austin-motogp_cg4oamgh4uhp1fk3d7r2yb9j4.png" alt="Avatar">
                      </div>
                      <div class="flip-card-back">
                      <h1>Nuestro circuito</h1> 
                      </div>
                  </div>
                  </div>
              </li>
              <li>
                  <div class="flip-card-menu">
                  <div class="flip-card-inner">
                      <div class="flip-card-front">
                      <img src="IMG/3.jpg" alt="Avatar">
                      </div>
                      <div class="flip-card-back">
                      <h1>Eventos</h1> 
                      </div>
                  </div>
                  </div>
              </li>
              </ul>
          </nav>
          <div class="title">Circuito JMIO</div>
      </div>
  </div>
  <div class="continue">
      <div class="formulario_div">
          <div class="div_interior_form">
          <form action="/new" method="post">
              <fieldset>
              <legend>¡REGÍSTRATE!</legend>
                  <ul>
                      <li>
                          <label for="nombre_equipo">Nombre del equipo:</label>
                          <input class="input_texto" type="text" id="nombre_equipo" name="nombre_equipo">
                      </li>
                      <li>
                          <label for="nombre_miembro">Nombre del integrante:</label>
                          <input class="input_texto" type="text" id="nombre_miembro" name="nombre_miembro">
                      </li>
                      <li>
                          <label for="apellidos_miembro">Apellidos del integrante:</label>
                          <input class="input_texto" type="text" id="apellidos_miembro" name="apellidos_miembro">
                      </li>
                      <li>
                      <label for="ocupacion">Ocupación del integrante:</label>
                      <input class="input_texto" type="text" id="ocupacion" name="ocupacion">
                      </li>
                      <li>
                          <label class="input_piloto" for="mail">¿Cómo quiere registrarse?:</label>
                          <br>
                          <input class="boton" type="radio" name="tipo_cliente" id="tipo_cliente" value="piloto" onchange="mostrar(this.value);"> <label>Piloto</label>
                          <input class="boton" type="radio" name="tipo_cliente" id="tipo_cliente" value="espectador" onchange="mostrar(this.value);"> <label>Espectador</label>
                      </li>
                      <div class="espectadores" id="espectadores">
                      <li>
                          <label class="input_piloto">¡Se miembro de nuestro circuito!:</label>
                          <p>- Entradas gratis a todos los eventos</p>
                          <p>-Descuento de un 50% en toda la comida</p>
                          <p>-Descuento en los asientos VIP de un 30%</p>
                          <br>
                          <input class="boton" type="radio" name="miembros" id="cliente_tipo" value="miembro" onchange="pago(this.value);"> <label>Acepto</label>
                          <input class="boton" type="radio" name="miembros" id="cliente_tipo" value="no_miembro" onchange="pago(this.value);"> <label>No, gracias</label>
                          <div class="pago" id="pago">
                          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                              <input type="hidden" name="cmd" value="_s-xclick">
                              <input type="hidden" name="hosted_button_id" value="P8VGY6FFTGBTW">
                              <input type="image" src="https://www.paypalobjects.com/es_ES/ES/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet.">
                              <img alt="" border="0" src="https://www.paypalobjects.com/es_ES/i/scr/pixel.gif" width="1" height="1">
                              </form>
                          </div>                                           
                      </li>
                      <li>
                          <input class="boton_registrarse" id="save_espectador" name="save_espectador" type="submit" value="Registrarse">  
                      </li>
                      </div>
                      <div class="pilotos" id="pilotos">
                          <li>
                              <input class="boton_registrarse" id="save_piloto" name="save_piloto" type="submit" value="Registrarse">
                          </li>

                      </div>                      
                  </ul>
              </fieldset>
          </form>
          </div>
      </div>
  </div>
</body>
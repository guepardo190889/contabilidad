<html>
    <head>
        <title>Distribuidora Crystal Fashion</title>
        <meta name="layout" content="main" />
    </head>
    
    <body>
<!--MENU START-->
    <div id="menu">
      <ul class="menu">
        <li><a href="#" class="${resource(dir: '')}"><span>Inicio</span></a></li>
        <li><a href="#" class="parent"><span>Clientes</span></a>
          <ul>
            <li><a href="cliente/create"><span>Alta Cliente</span></a></li>
            <li><a href="#"><span><g:link class="cliente" controller="cliente"><g:message code="Lista de Clientes" /></g:link></span></a></li>
          </ul>
          
        </li>
        <li><a href="#" class="parent"><span>Producto</span></a>
          <ul>
            <li><a href="producto/create"><span>Alta Producto</span></a></li>
            <li><a href="#"><span><g:link class="producto" controller="producto"><g:message code="Lista de Productos" /></g:link></span></a></li>
          </ul>
        </li>
      </ul>
    </div>
<!--MENU END-->

    <div style="float: left"
      <br>
      <h1>¡Bienvenido!</h1>
    </div>
  </body>
</html>

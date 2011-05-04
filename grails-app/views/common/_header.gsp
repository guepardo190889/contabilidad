<%@page import="general.*"%>

  <div id="header" style="margin-left: 140px;margin-right: 160px;">
  
    <div id="slogan"
         <a href="${createLinkTo(dir:'')}">Sistema de Distribuidora</a>
    </div>
    
    <div id="status">
      <sec:ifLoggedIn>
        Hola <sec:loggedInUserInfo field="username" />! | <g:link class="perfil" controller="logout" style="color:white;font-weight:normal;"><g:message code="Salir" /></g:link>
      </sec:ifLoggedIn>
    </div>
  </div>

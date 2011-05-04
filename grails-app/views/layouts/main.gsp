<!DOCTYPE html>
<html>
    <head>
        <title>Sistema de Distribuidora - <g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
        
        <link type="text/css" href="menu.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>
    </head>
    <body>
      <div id=""header>
        <g:render template="/common/header" />
      </div>

      <div id="page">
      
        <div id="spinner" class="spinner" style="display:none;">
          <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
      
        <g:layoutBody />
      
        <div id="footer">
          <g:render template="/common/footer" />
        </div>
      </div>
    </body>
    <a href="http://apycom.com/"></a>
</html>
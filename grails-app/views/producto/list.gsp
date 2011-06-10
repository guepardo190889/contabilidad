
<%@ page import="distribuidora.Producto" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'producto.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'producto.nombre.label', default: 'Nombre')}" />
                            
                            <g:sortableColumn property="codigo" title="${message(code: 'producto.codigo.label', default: 'Codigo')}" />
                            
                            <g:sortableColumn property="descripcion" title="${message(code: 'producto.descripcion.label', default: 'Descripcion')}" />
                        
                            <g:sortableColumn property="marca" title="${message(code: 'producto.marca.label', default: 'Marca')}" />
                        
                            <g:sortableColumn property="precioUnitario" title="${message(code: 'producto.precioUnitario.label', default: 'Precio Unitario')}" />
                        
                            <g:sortableColumn property="precioDistribuidor" title="${message(code: 'producto.precioDistribuidor.label', default: 'Precio Distribuidor')}" />
                        
                            <g:sortableColumn property="fechaRegistro" title="${message(code: 'producto.fechaRegistro.label', default: 'Fecha Registro')}" />
                            
                            <g:sortableColumn property="existencia" title="${message(code: 'producto.existencia.label', default: 'Existencias')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${productoInstanceList}" status="i" var="productoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: productoInstance, field: "nombre")}</td>
                    
                            <td>${fieldValue(bean: productoInstance, field: "codigo")}</td>
                            
                            <td>${fieldValue(bean: productoInstance, field: "descripcion")}</td>
                        
                            <td>${fieldValue(bean: productoInstance, field: "marca")}</td>
                        
                            <td>${fieldValue(bean: productoInstance, field: "precioUnitario")}</td>
                        
                            <td>${fieldValue(bean: productoInstance, field: "precioDistribuidor")}</td>
                            
                            <td><g:formatDate date="${fieldValue(bean: productoInstance, field: "fechaRegistro")}" /></td>
                            
                            <td>${fieldValue(bean: productoInstance, field: "existencia")}</td>
                                  
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${productoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>

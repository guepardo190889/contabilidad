
<%@ page import="distribuidora.Cliente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'cliente.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'cliente.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="direccion" title="${message(code: 'cliente.direccion.label', default: 'Direccion')}" />
                        
                            <g:sortableColumn property="telefonoCasa" title="${message(code: 'cliente.telefonoCasa.label', default: 'Telefono Casa')}" />
                        
                            <g:sortableColumn property="telefonoCelular" title="${message(code: 'cliente.telefonoCelular.label', default: 'Telefono Celular')}" />
                        
                            <g:sortableColumn property="fax" title="${message(code: 'cliente.fax.label', default: 'Fax')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: clienteInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: clienteInstance, field: "direccion")}</td>
                        
                            <td>${fieldValue(bean: clienteInstance, field: "telefonoCasa")}</td>
                        
                            <td>${fieldValue(bean: clienteInstance, field: "telefonoCelular")}</td>
                        
                            <td>${fieldValue(bean: clienteInstance, field: "fax")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${clienteInstanceTotal}" />
            </div>
        </div>
    </body>
</html>


<%@ page import="mantenimiento.ControlCambio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'controlCambio.label', default: 'ControlCambio')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'controlCambio.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="descripcion" title="${message(code: 'controlCambio.descripcion.label', default: 'Descripcion')}" />
                        
                            <g:sortableColumn property="tipoCambio" title="${message(code: 'controlCambio.tipoCambio.label', default: 'Tipo Cambio')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${controlCambioInstanceList}" status="i" var="controlCambioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${controlCambioInstance.id}">${fieldValue(bean: controlCambioInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: controlCambioInstance, field: "descripcion")}</td>
                        
                            <td>${fieldValue(bean: controlCambioInstance, field: "tipoCambio")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${controlCambioInstanceTotal}" />
            </div>
        </div>
    </body>
</html>

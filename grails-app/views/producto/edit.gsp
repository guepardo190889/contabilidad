

<%@ page import="distribuidora.Producto" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${productoInstance}">
            <div class="errors">
                <g:renderErrors bean="${productoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${productoInstance?.id}" />
                <g:hiddenField name="version" value="${productoInstance?.version}" />
                <g:hiddenField name="existencia" value="${productoInstance?.existencia}" />
                <g:hiddenField name="fechaRegistro" value="${productoInstance?.fechaRegistro}" />
                <div class="dialog">
                    <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="producto.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productoInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="128" value="${productoInstance?.nombre}" />
                                </td>
                            </tr>
                          
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigo"><g:message code="producto.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productoInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="64" value="${productoInstance?.codigo}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descripcion"><g:message code="producto.descripcion.label" default="Descripcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productoInstance, field: 'descripcion', 'errors')}">
                                    <g:textField name="descripcion" maxlength="128" value="${productoInstance?.descripcion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="marca"><g:message code="producto.marca.label" default="Marca" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productoInstance, field: 'marca', 'errors')}">
                                    <g:textField name="marca" maxlength="64" value="${productoInstance?.marca}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precioUnitario"><g:message code="producto.precioUnitario.label" default="Precio Unitario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productoInstance, field: 'precioUnitario', 'errors')}">
                                    <g:textField name="precioUnitario" value="${fieldValue(bean: productoInstance, field: 'precioUnitario')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precioDistribuidor"><g:message code="producto.precioDistribuidor.label" default="Precio Distribuidor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productoInstance, field: 'precioDistribuidor', 'errors')}">
                                    <g:textField name="precioDistribuidor" value="${fieldValue(bean: productoInstance, field: 'precioDistribuidor')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>

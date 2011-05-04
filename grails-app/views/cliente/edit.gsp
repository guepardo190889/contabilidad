

<%@ page import="distribuidora.Cliente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
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
            <g:hasErrors bean="${clienteInstance}">
            <div class="errors">
                <g:renderErrors bean="${clienteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${clienteInstance?.id}" />
                <g:hiddenField name="version" value="${clienteInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="cliente.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="128" value="${clienteInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="direccion"><g:message code="cliente.direccion.label" default="Direccion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'direccion', 'errors')}">
                                    <g:textArea name="direccion" cols="40" rows="5" value="${clienteInstance?.direccion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefonoCasa"><g:message code="cliente.telefonoCasa.label" default="Telefono Casa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'telefonoCasa', 'errors')}">
                                    <g:textField name="telefonoCasa" maxlength="32" value="${clienteInstance?.telefonoCasa}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefonoCelular"><g:message code="cliente.telefonoCelular.label" default="Telefono Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'telefonoCelular', 'errors')}">
                                    <g:textField name="telefonoCelular" maxlength="32" value="${clienteInstance?.telefonoCelular}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fax"><g:message code="cliente.fax.label" default="Fax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'fax', 'errors')}">
                                    <g:textField name="fax" maxlength="32" value="${clienteInstance?.fax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="correoElectronico"><g:message code="cliente.correoElectronico.label" default="Correo Electronico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'correoElectronico', 'errors')}">
                                    <g:textField name="correoElectronico" maxlength="128" value="${clienteInstance?.correoElectronico}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nit"><g:message code="cliente.nit.label" default="Nit" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'nit', 'errors')}">
                                    <g:textField name="nit" maxlength="64" value="${clienteInstance?.nit}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaRegistro"><g:message code="cliente.fechaRegistro.label" default="Fecha Registro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'fechaRegistro', 'errors')}">
                                    <g:datePicker name="fechaRegistro" precision="day" value="${clienteInstance?.fechaRegistro}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="limiteCrediticio"><g:message code="cliente.limiteCrediticio.label" default="Limite Crediticio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'limiteCrediticio', 'errors')}">
                                    <g:textField name="limiteCrediticio" value="${fieldValue(bean: clienteInstance, field: 'limiteCrediticio')}" />
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

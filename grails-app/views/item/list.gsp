
<%@ page import="proyecto.utn.prac2.Item" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
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
                        
                        
                            <g:sortableColumn property="title" title="${message(code: 'item.title.label', default: 'Title')}" />
                            <g:sortableColumn property="description" title="${message(code: 'item.description.label', default: 'Description')}" />
                        
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${itemInstanceList}" status="i" var="itemInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                        
                        
                            <td>${fieldValue(bean: itemInstance, field: "title")}</td>
                        
                            <td>${fieldValue(bean: itemInstance, field: "description")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${itemInstanceTotal}" />
            </div>
        </div>
    </body>
</html>

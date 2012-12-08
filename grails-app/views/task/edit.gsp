<%@ page import="com.tc.taskwatch.Task" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a href="#"><g:message code="default.edit.label" args="[entityName]"/></a>
        </div>
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><i class="icon-home"></i>&nbsp;<g:message
                    code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><i class="icon-plus-sign"></i>&nbsp;<g:message
                    code="default.new.label" args="[entityName]"/></g:link></li>
            <li><g:link class="list" action="list"><i class="icon-list"></i>&nbsp;<g:message code="default.list.label"
                                                                                             args="[entityName]"/></g:link>
            </li>
        </ul>
    </div>
</div>

<g:if test="${flash.message}">
    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">×</button>
        ${flash.message}
    </div>
</g:if>
<g:hasErrors bean="${taskInstance}">
    <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <ul class="unstyled">
            <g:eachError bean="${taskInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>
<g:form method="post" class="form-horizontal">
    <g:hiddenField name="id" value="${taskInstance?.id}"/>
    <g:hiddenField name="version" value="${taskInstance?.version}"/>
    <g:render template="form"/>
    <div class="control-group">
        <div class="controls">
            <g:actionSubmit class="save" action="update"
                            value="${message(code: 'default.button.update.label', default: 'Update')}"/>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate=""
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </div>
    </div>
</g:form>
</body>
</html>

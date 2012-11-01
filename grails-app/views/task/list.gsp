
<%@ page import="com.tc.taskwatch.Task" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
    <div class="navbar">
        <div class="navbar-inner">
            <a class="brand" href="#">Tasks</a>
            <ul class="nav pull-right">
                <li><g:link action="create"><i class="icon-plus-sign"></i>&nbsp;New</g:link></li>
            </ul>
        </div>
    </div>
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                
                <g:sortableColumn property="description" title="${message(code: 'task.description.label', default: 'Description')}"/>
                
                <g:sortableColumn property="timeChallenged" title="${message(code: 'task.timeChallenged.label', default: 'Time Challenged')}"/>
                
                <g:sortableColumn property="timeTaskStarted" title="${message(code: 'task.timeTaskStarted.label', default: 'Time Task Started')}"/>
                
                <g:sortableColumn property="timeTaskFinished" title="${message(code: 'task.timeTaskFinished.label', default: 'Time Task Finished')}"/>
                
            </tr>
        </thead>
        <tbody>
            <g:each in="${taskInstanceList}" status="i" var="taskInstance">
                <tr>
                    
                    <td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "description")}</g:link></td>
                    
                    <td>${fieldValue(bean: taskInstance, field: "timeChallenged")}</td>
                    
                    <td>${fieldValue(bean: taskInstance, field: "timeTaskStarted")}</td>
                    
                    <td>${fieldValue(bean: taskInstance, field: "timeTaskFinished")}</td>
                    
                </tr>
            </g:each>
        </tbody>
    </table>

    <div class="pagination pagination-right">
        <g:paginate total="${taskInstanceTotal}"/>
    </div>
</body>
</html>

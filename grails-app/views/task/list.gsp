<%@ page import="com.tc.taskwatch.Task" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="Task"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <a class="brand" href="#">Tasks</a>
        <ul class="nav pull-right">
            <li><a href="#create_task" data-toggle="modal"><i class="icon-plus-sign"></i>&nbsp;New</a></li>
        </ul>
    </div>
</div>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>

        <g:sortableColumn property="description" title="Description"/>

        <g:sortableColumn property="timeTaskStarted" title="Time Task Started"/>

        <g:sortableColumn property="timeChallenged" title="Time Challenged'"/>

        <g:sortableColumn property="timeTaskFinished" title="Time Elapsed"/>

        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${taskInstanceList}" status="i" var="taskInstance">
        <tr>

            <td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "description")}</g:link></td>

            <td>${fieldValue(bean: taskInstance, field: "timeTaskStarted")}</td>

            <td>${fieldValue(bean: taskInstance, field: "timeChallenged")}</td>

            <td>${fieldValue(bean: taskInstance, field: "timeTaskFinished")}</td>

            <td>
                <div class="btn-group" data-toggle="buttons-radio">
                    <a href="#" class="btn btn-primary">Start</a> |
                    <a href="#" class="btn btn-danger">Stop</a>
                </div>
            </td>

        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination pagination-right">
    <g:paginate total="${taskInstanceTotal}"/>
</div>

<div class="modal hide fade in" id="create_task">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

        <h3>Enter Task Details</h3>
    </div>

    <g:form class="form-horizontal" action="save" style="margin-bottom: 0px;">
        <div class="modal-body">
            <g:render template="form"/>
        </div>

        <div class="modal-footer">
            <g:submitButton name="create" class="btn btn-info" value="Done"/>
            <a href="#" data-dismiss="modal" aria-hidden="true" class="btn">Close</a>
        </div>
    </g:form>
</div>
</body>
</html>

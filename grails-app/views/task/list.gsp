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

        <th>Remaining Time</th>

        <g:sortableColumn property="timeChallenged" title="Challenged Time"/>

        <g:sortableColumn property="timeEstimated" title="Estimated Time"/>

        <g:sortableColumn property="timeTaskFinished" title="Elapsed Time"/>

        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${taskInstanceList}" status="i" var="taskInstance">
        <tr>
            <td><g:link action="show" id="${taskInstance?.id}"><div class="custom-name">${fieldValue(bean: taskInstance, field: "description")}</div></g:link></td>

            <td class="countdowntime${taskInstance?.id}"></td>

            <td><tw:time value="${taskInstance?.timeChallenged}"/></td>

            <td><tw:time value="${taskInstance?.timeEstimated}"/></td>

            <td><tw:time value="${taskInstance?.timeTaskFinished}"/></td>

            <td>
                <button type="button" class="btn btn-primary start" id="${taskInstance?.id}" data-loading-text="Pause">Start</button>
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
<script type="text/javascript">
    var urls = {
        challengedTimeUrl:"${createLink(controller: 'task', action: 'getChallengedTime')}"
    }
</script>
</body>
</html>


<%@ page import="com.tc.taskwatch.Task" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-task" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                        <g:sortableColumn property="description" title="${message(code: 'task.description.label', default: 'Description')}" />
                        <g:sortableColumn property="timeEstimated" title="${message(code: 'task.timeEstimated.label', default: 'Time Estimated')}" />
                        <g:sortableColumn property="timeChallenged" title="${message(code: 'task.timeChallenged.label', default: 'Time Challenged')}" />
                        <g:sortableColumn property="timeActual" title="${message(code: 'task.timeChallenged.label', default: 'Time Actual')}" />
						%{--<g:sortableColumn property="timeTaskStarted" title="${message(code: 'task.timeTaskStarted.label', default: 'Time Task Started')}" />--}%
						%{--<g:sortableColumn property="timeTaskFinished" title="${message(code: 'task.timeTaskFinished.label', default: 'Time Task Finished')}" />--}%
                        %{--<g:sortableColumn property="dateCreated" title="${message(code: 'task.dateCreated.label', default: 'Date Created')}" />--}%
                        %{--<g:sortableColumn property="lastUpdated" title="${message(code: 'task.lastUpdated.label', default: 'Last Updated')}" />--}%
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskInstanceList}" status="i" var="taskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "description")}</g:link></td>
                        %{--<td>${fieldValue(bean: taskInstance, field: "description")}</td>--}%
                        <td>${fieldValue(bean: taskInstance, field: "timeEstimated")}</td>
                        <td>${fieldValue(bean: taskInstance, field: "timeChallenged")}</td>
                        <td>${fieldValue(bean: taskInstance, field: "timeActual")}</td>
                        %{--<td>${fieldValue(bean: taskInstance, field: "timeTaskStarted")}</td>--}%
                        %{--<td>${fieldValue(bean: taskInstance, field: "timeTaskFinished")}</td>--}%
						%{--<td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "dateCreated")}</g:link></td>--}%
						%{--<td><g:formatDate date="${taskInstance.lastUpdated}" /></td>--}%


					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taskInstanceTotal}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="com.tc.taskwatch.Task" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-task" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list task">
			
                <g:if test="${taskInstance?.description}">
                <li class="fieldcontain">
                    <span id="description-label" class="property-label"><g:message code="task.description.label" default="Description" /></span>

                        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${taskInstance}" field="description"/></span>

                </li>
                </g:if>

                <g:if test="${taskInstance?.timeEstimated}">
                <li class="fieldcontain">
                    <span id="timeEstimated-label" class="property-label"><g:message code="task.timeEstimated.label" default="Time Estimated" /></span>

                        <span class="property-value" aria-labelledby="timeEstimated-label"><g:fieldValue bean="${taskInstance}" field="timeEstimated"/></span>
                </li>
                </g:if>

				<g:if test="${taskInstance?.timeChallenged}">
				<li class="fieldcontain">
					<span id="timeChallenged-label" class="property-label"><g:message code="task.timeChallenged.label" default="Time Challenged" /></span>

						<span class="property-value" aria-labelledby="timeChallenged-label"><g:fieldValue bean="${taskInstance}" field="timeChallenged"/></span>

				</li>
				</g:if>

				<g:if test="${taskInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="task.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate format="MMM dd, yyyy HH:mm" date="${taskInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="task.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate format="MMM dd, yyyy HH:mm" date="${taskInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.timeTaskStarted}">
				<li class="fieldcontain">
					<span id="timeTaskStarted-label" class="property-label"><g:message code="task.timeTaskStarted.label" default="Time Task Started" /></span>
					
						<span class="property-value" aria-labelledby="timeTaskStarted-label"><g:fieldValue bean="${taskInstance}" field="timeTaskStarted"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.timeTaskFinished}">
				<li class="fieldcontain">
					<span id="timeTaskFinished-label" class="property-label"><g:message code="task.timeTaskFinished.label" default="Time Task Finished" /></span>
					
						<span class="property-value" aria-labelledby="timeTaskFinished-label"><g:fieldValue bean="${taskInstance}" field="timeTaskFinished"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${taskInstance?.id}" />
					<g:link class="edit" action="edit" id="${taskInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

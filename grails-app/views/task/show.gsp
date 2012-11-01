
<%@ page import="com.tc.taskwatch.Task" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
    <div class="navbar">
        <div class="navbar-inner">
            <a class="brand" href="#"><g:message code="default.show.label" args="[entityName]" /></a>
            <ul class="nav pull-right">
                <li><g:link action="list"><i class="icon-list"></i>&nbsp;<g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link action="create"><i class="icon-plus-sign"></i>&nbsp;<g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
    </div>
    <table class="table table-bordered">
		
            <tr>
            <g:if test="${taskInstance?.description||false}">
				    <td><strong><g:message code="task.description.label" default="Description" /></strong></td>
				    
			    		<td><g:fieldValue bean="${taskInstance}" field="description"/></td>
			    	
		    </g:if>
            </tr>
		
            <tr>
            <g:if test="${taskInstance?.dateCreated||false}">
				    <td><strong><g:message code="task.dateCreated.label" default="Date Created" /></strong></td>
				    
			    		<td><g:formatDate date="${taskInstance?.dateCreated}" /></td>
			    	
		    </g:if>
            </tr>
		
            <tr>
            <g:if test="${taskInstance?.lastUpdated||false}">
				    <td><strong><g:message code="task.lastUpdated.label" default="Last Updated" /></strong></td>
				    
			    		<td><g:formatDate date="${taskInstance?.lastUpdated}" /></td>
			    	
		    </g:if>
            </tr>
		
            <tr>
            <g:if test="${taskInstance?.timeChallenged||false}">
				    <td><strong><g:message code="task.timeChallenged.label" default="Time Challenged" /></strong></td>
				    
			    		<td><g:fieldValue bean="${taskInstance}" field="timeChallenged"/></td>
			    	
		    </g:if>
            </tr>
		
            <tr>
            <g:if test="${taskInstance?.timeTaskStarted||false}">
				    <td><strong><g:message code="task.timeTaskStarted.label" default="Time Task Started" /></strong></td>
				    
			    		<td><g:fieldValue bean="${taskInstance}" field="timeTaskStarted"/></td>
			    	
		    </g:if>
            </tr>
		
            <tr>
            <g:if test="${taskInstance?.timeTaskFinished||false}">
				    <td><strong><g:message code="task.timeTaskFinished.label" default="Time Task Finished" /></strong></td>
				    
			    		<td><g:fieldValue bean="${taskInstance}" field="timeTaskFinished"/></td>
			    	
		    </g:if>
            </tr>
		
            <tr>
            <g:if test="${taskInstance?.timeEstimated||false}">
				    <td><strong><g:message code="task.timeEstimated.label" default="Time Estimated" /></strong></td>
				    
			    		<td><g:fieldValue bean="${taskInstance}" field="timeEstimated"/></td>
			    	
		    </g:if>
            </tr>
		
    </table>
	<g:form>
        <g:hiddenField name="id" value="${taskInstance?.id}" />
               <g:link class="btn btn-info" action="create"
                       id="${taskInstance?.id}"><g:message code="default.button.edit.label" default="Edit" />&nbsp;<i class="icon-edit icon-white"></i></g:link>
               <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                               onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"
               />
	</g:form>
</body>
</html>
